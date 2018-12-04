# coding:utf-8
import re
import os
import fnmatch
import csv

csvfilepath = "resource/mapping_5.1.1.csv"

def readCSV(csvfilepath):
    result = set()
    with open(csvfilepath, 'r') as f:
        reader = csv.reader(f)
        for item in reader:
            if reader.line_num == 1:
                continue

            result.add("L{}->{}".format(item[0], item[1]))
    return result

class SmaliParser(object):
    def __init__(self, smali_dir):
        """
        constructor for SmaliParser object
        :param smali_dir: directory of the smali files to be parsed
        :param smali_database: instance of SmaliDatabase object
        :param graph: instance of graphviz object
        """
        # self.db = smali_database
        self.dir = smali_dir
        # self.graph = graph
        self.result = []
        self.pattern_class_name = re.compile(ur'^\.class.*\ (.+(?=\;))', re.MULTILINE)
        self.pattern_method_data = re.compile(ur'^\.method.+?\ (.+?(?=\())\((.*?)\)(.*?$)(.*?(?=\.end\ method))',
                                              re.MULTILINE | re.DOTALL)
        self.pattern_called_methods = re.compile(
            ur'invoke-.*?\ {(.*?)}, (.+?(?=;))\;\-\>(.+?(?=\())\((.*?)\)(.*?)(?=$|;)', re.MULTILINE | re.DOTALL)
        self.pattern_move_result = re.compile(ur'move-result.+?(.*?)$', re.MULTILINE | re.DOTALL)

    def parse_smali_files(self):
        """
        parses all smali files in the
        :return: null
        """
        print 'Parsing smali files'
        for root, dirnames, filenames in os.walk(self.dir):
            for filename in fnmatch.filter(filenames, '*.smali'):
                filepath = os.path.join(root, filename)

                with open(filepath, 'r') as smali_file:
                    content = smali_file.read()
                    self.parse_smali_file(content)

                    # self.db.conn.commit()

    def parse_smali_file(self, content):
        """
        parses a single smali file and inserts the data to the smali database
        :param content: content of the smali file
        :return: null
        """
        # TODO add the regex to parse the called function and change the FOR loop
        # TODO change code to use all the new methods
        # parse class
        class_name = self.get_class_name(content=content)
        methods = self.get_methods(content=content)
        # add methods to db
        for method in methods:
            method_name = method[0].split(' ')[-1]
            method_parameters = method[1]
            method_return_value = method[2]
            method_data = method[3]
            if class_name.startswith("LAndroid"):
                class_name = "La" + class_name[2:]
            method_id = '%s->%s' % (class_name, method_name)
            called_methods = self.get_called_methods(content=method_data)
            # method_calling_to = ''
            method_calling_to = []

            for called_method in called_methods:
                # method_calling_to = '%s%s->%s,' % (method_calling_to, called_method[1], called_method[2])
                if (called_method[1].startswith("LAnd")):
                    c1 = "La" + called_method[1][2:]
                else:
                    c1 = called_method[1]
                called_mt = '%s->%s' % (c1, called_method[2])
                method_calling_to.append(called_mt)

            # self.db.add_method(id=method_id, class_name=class_name, method_name=method_name, parameters=method_parameters, calling_to=method_calling_to, return_value=method_return_value, data=method_data)
            print "id=" + method_id + "\nclass_name=" + class_name + "\nmethod_name=" + method_name + "\nparameters=" + method_parameters + "\ncalling_to=" + str(
                method_calling_to) + "\nreturn_value=" + method_return_value + '\n'
            dicc = {"id": method_id, "class_name=": class_name, "method_name": method_name,
                    "parameters": method_parameters, "calling_to": method_calling_to,
                    "return_value": method_return_value}
            self.result.append(dicc)

    def get_class_name(self, content):
        """
        gets the class name of a single smali file content
        :param content: smali file content
        :rtype: string
        :return: the name of the class
        """
        data = re.findall(self.pattern_class_name, content)
        return data[0]

    def get_methods(self, content):
        """
        gets all methods in a single smali file content
        :param content: smali file content
        :rtype: list of lists
        :return: [0] - method name
                 [1] - method parameters
                 [2] - method return value
                 [3] - method data
        """
        data = re.findall(self.pattern_method_data, content)
        return data

    def get_called_methods(self, content):
        """
        gets all the method called inside a smali method data. works just fine with a single smali line
        :param content: content of the smali data to be parsed
        :rtype: list of lists
        :return: [0] - called method parameters
                 [1] - called method object type
                 [2] - called method name
                 [3] - called method parameters object type
                 [4] - called method return object type
        """
        data = re.findall(self.pattern_called_methods, content)
        return data

    def get_result_object_name(self, content):
        data = re.findall(self.pattern_move_result, content)
        return data[0].split(' ')[-1]

    def get_method_callers(self, method):
        """
        recursive method for getting the callers for the method
        :param method:
        :return: null
        """
        # TODO move the db query to database.py
        print 'Creating called from column for method %s' % (method)
        # self.db.cursor.execute('''SELECT DISTINCT id, calling_to FROM methods where calling_to LIKE "%" || ? || "%"''', (method,))
        data = self.db.get_called_from_method(method)

        if data == '':
            return
        for id_row in data:
            if id_row[0] == method:
                return
            edge_connection1 = '\t\t"%s" -- "%s"' % (method, id_row[0])
            edge_connection2 = '\t\t"%s" -- "%s"' % (id_row[0], method)
            if edge_connection1 in self.graph.body:
                continue
            if edge_connection2 in self.graph.body:
                continue
            self.graph.edge(method, id_row[0])
            # self.db.update_method_called_from(id=id_row[0], value=method)
            self.get_method_callers(id_row[0])

    def analyze_method_pattern_flow(self, content, pattern):
        # TODO return possible schemes and so on with dictionary format {'schemes':['bla','blaa']}
        # parse the smali content into smali lines and remove empty lines
        smali_lines = filter(None, content.splitline())
        # return a list with all line positions of smali lines that contain the pattern
        pattern_lines_indexes = [i for i, smali_line in enumerate(smali_lines) if pattern in smali_line]

        for pattern_line_index in pattern_lines_indexes:
            line = smali_lines[pattern_line_index]
            data = self.get_called_methods(line)
            method_name = data[2]

            if not method_name == pattern:
                return
            expected_result_object_line = smali_lines[pattern_line_index + 1]

            if not 'move-result' in expected_result_object_line:
                print 'ERROR: move-result opcode not found in next line. line no: %s' % (str(pattern_line_index + 1))
                return

            result_object_name = self.get_result_object_name(expected_result_object_line)
            # return a list with all line positions of smali lines that contain the result object name
            object_name_indexes = [i for i, smali_line in enumerate(smali_lines) if result_object_name in smali_line]
            for object_name_index in object_name_indexes:
                # TODO check if the object name is called elsewhere (optimally after the move-result opcode)
                pass


def main():
    apisample = readCSV(csvfilepath)

    a = SmaliParser(smali_dir=u'27/smali/')
    a.parse_smali_files()
    ares = a.result
    result = []
    for i in ares:
        for j in i["calling_to"]:
            if j in apisample:
                result.append(tuple([i["id"],j]))
    print len(result)
    # print result
    # with open("out/27.txt", 'wb') as f:
    #     f.write("totallength:"+str(len(result))+'\n'+str(result))
    print "end"


if __name__ == '__main__':
    main()
