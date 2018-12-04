.class public LAndroid/Lch/ScriptureCmsProject1/FileCommon;
.super Ljava/lang/Object;
.source "FileCommon.java"


# static fields
.field static final FILENAME:Ljava/lang/String; = "sample"

.field static final FOLDER:Ljava/lang/String; = "/sample/"

.field static final SUFFIX:Ljava/lang/String; = ".txt"

.field private static final TAG:Ljava/lang/String; = "FileCommon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 126
    const-string v3, ""

    .line 132
    .local v3, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 134
    .local v2, "length":I
    new-array v0, v2, [B

    .line 136
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 142
    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const-string v11, "FileCommon"

    .line 74
    move-object v8, p0

    .line 75
    .local v8, "path":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 76
    const-string v9, "FileCommon"

    const-string v9, "Error: Invalid file name!"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 122
    :goto_0
    return-object v9

    .line 80
    :cond_0
    const/4 v4, 0x0

    .line 81
    .local v4, "filecontent":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "f":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 106
    .local v0, "cb":Ljava/nio/CharBuffer;
    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v9, "utf-8"

    invoke-direct {v7, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 108
    .local v7, "isr":Ljava/io/InputStreamReader;
    if-eqz v0, :cond_1

    .line 109
    :try_start_3
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read(Ljava/nio/CharBuffer;)I

    .line 111
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>([C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 112
    .end local v4    # "filecontent":Ljava/lang/String;
    .local v5, "filecontent":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v4, v5

    .line 121
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .end local v5    # "filecontent":Ljava/lang/String;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "filecontent":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v9, "FileCommon"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "readFile filecontent = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v4

    .line 122
    goto :goto_0

    .line 87
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 89
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 90
    const-string v9, "FileCommon"

    const-string v9, "Error: Input File not find!"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 91
    goto :goto_0

    .line 97
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 99
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const-string v9, "FileCommon"

    const-string v9, "Error: CharBuffer initial failed!"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 101
    goto :goto_0

    .line 113
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "cb":Ljava/nio/CharBuffer;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 114
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v9

    move-object v1, v9

    .line 118
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "filecontent":Ljava/lang/String;
    .restart local v5    # "filecontent":Ljava/lang/String;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5    # "filecontent":Ljava/lang/String;
    .restart local v4    # "filecontent":Ljava/lang/String;
    goto :goto_3

    .line 113
    .end local v4    # "filecontent":Ljava/lang/String;
    .restart local v5    # "filecontent":Ljava/lang/String;
    :catch_5
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5    # "filecontent":Ljava/lang/String;
    .restart local v4    # "filecontent":Ljava/lang/String;
    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/StringBuilder;)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v9, "/sample/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 29
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "foldername":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "folder":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    const-string v8, "FileCommon"

    const-string v9, "Error: make dir failed!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "stringToWrite":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "sample"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "targetPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v6, "targetFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 50
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 51
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v9, "utf-8"

    .line 50
    invoke-direct {v4, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 55
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 56
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 58
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 62
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 65
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
