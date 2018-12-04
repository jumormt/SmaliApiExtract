.class public Lorg/kobjects/xmlrpc/XmlRpcParser;
.super Ljava/lang/Object;
.source "XmlRpcParser.java"


# instance fields
.field private parser:Lorg/kobjects/xml/XmlReader;


# direct methods
.method public constructor <init>(Lorg/kobjects/xml/XmlReader;)V
    .locals 1
    .param p1, "parser"    # Lorg/kobjects/xml/XmlReader;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    .line 44
    iput-object p1, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    .line 45
    return-void
.end method

.method private final nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v1}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v0

    .line 187
    .local v0, "type":I
    iget-object v1, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v1}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v0

    .line 188
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v1}, Lorg/kobjects/xml/XmlReader;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v1}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v0

    .line 191
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 192
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_1
    return v0
.end method

.method private final nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v2, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v2}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v1

    .line 200
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string v3, "precondition: START_TAG"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    iget-object v2, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v2}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v1

    .line 208
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 209
    iget-object v2, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v2}, Lorg/kobjects/xml/XmlReader;->getText()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v2}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v1

    .line 215
    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 216
    new-instance v2, Ljava/io/IOException;

    const-string v3, "END_TAG expected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 219
    :cond_2
    return-object v0
.end method

.method private final parseArray()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 119
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v0

    .line 121
    .local v0, "type":I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 122
    .local v1, "vec":Ljava/util/Vector;
    :goto_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 123
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v2}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 130
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 132
    return-object v1
.end method

.method private final parseFault()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 139
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseValue()Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 142
    return-object v0
.end method

.method private final parseParams()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 150
    .local v0, "params":Ljava/util/Vector;
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v1

    .line 152
    .local v1, "type":I
    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 155
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v1

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 163
    return-object v0
.end method

.method private final parseStruct()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 55
    .local v1, "result":Ljava/util/Hashtable;
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v2

    .line 56
    .local v2, "type":I
    :goto_0
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 60
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 63
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v2

    .line 66
    goto :goto_0

    .line 68
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 69
    return-object v1
.end method

.method private final parseValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 79
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v0

    .line 80
    .local v0, "event":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 81
    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->getText()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v0

    .line 85
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    .line 86
    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "name":Ljava/lang/String;
    const-string v3, "array"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseArray()Ljava/util/Vector;

    move-result-object v2

    .local v2, "result":Ljava/util/Vector;
    move-object v3, v2

    .line 111
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Vector;
    :goto_0
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 112
    return-object v3

    .line 89
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v3, "struct"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseStruct()Ljava/util/Hashtable;

    move-result-object v2

    .local v2, "result":Ljava/util/Hashtable;
    move-object v3, v2

    goto :goto_0

    .line 92
    .end local v2    # "result":Ljava/util/Hashtable;
    :cond_2
    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    move-object v3, v2

    .line 106
    .end local v2    # "result":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    goto :goto_0

    .line 94
    :cond_3
    const-string v3, "i4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "int"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .local v2, "result":Ljava/lang/Integer;
    move-object v3, v2

    goto :goto_1

    .line 96
    .end local v2    # "result":Ljava/lang/Integer;
    :cond_5
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .local v2, "result":Ljava/lang/Boolean;
    move-object v3, v2

    goto :goto_1

    .line 98
    .end local v2    # "result":Ljava/lang/Boolean;
    :cond_6
    const-string v3, "dateTime.iso8601"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lorg/kobjects/isodate/IsoDate;->stringToDate(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v2

    .local v2, "result":Ljava/util/Date;
    move-object v3, v2

    goto :goto_1

    .line 100
    .end local v2    # "result":Ljava/util/Date;
    :cond_7
    const-string v3, "base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/kobjects/base64/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "result":[B
    move-object v3, v2

    goto :goto_1

    .line 102
    .end local v2    # "result":[B
    :cond_8
    const-string v3, "double"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .local v2, "result":Ljava/lang/String;
    move-object v3, v2

    goto :goto_1

    .end local v2    # "result":Ljava/lang/String;
    :cond_9
    move-object v3, v2

    goto :goto_1

    .end local v1    # "name":Ljava/lang/String;
    :cond_a
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final parseResponse()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 170
    .local v1, "result":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    .line 172
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->nextTag()I

    move-result v0

    .line 173
    .local v0, "event":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 174
    const-string v2, "fault"

    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseFault()Ljava/lang/Object;

    move-result-object v1

    .line 181
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 176
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    const-string v2, "params"

    iget-object v3, p0, Lorg/kobjects/xmlrpc/XmlRpcParser;->parser:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v3}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseParams()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
