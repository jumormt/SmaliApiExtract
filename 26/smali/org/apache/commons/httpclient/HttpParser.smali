.class public Lorg/apache/commons/httpclient/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpParser"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->class$org$apache$commons$httpclient$HttpParser:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseHeaders(Ljava/io/InputStream;)[Lorg/apache/commons/httpclient/Header;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderParser.parseHeaders(InputStream, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 233
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public static parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 170
    sget-object v5, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter HeaderParser.parseHeaders(InputStream, String)"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "headers":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 174
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 176
    .local v4, "value":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 211
    :cond_1
    if-eqz v3, :cond_2

    .line 212
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "is":Ljava/io/InputStream;
    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    return-object p0

    .line 185
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 188
    :cond_4
    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 194
    :cond_5
    if-eqz v3, :cond_6

    .line 195
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_6
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "colon":I
    if-gez v0, :cond_7

    .line 202
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_7
    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 205
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "value":Ljava/lang/StringBuffer;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v4    # "value":Ljava/lang/StringBuffer;
    goto/16 :goto_0
.end method

.method public static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpParser.readLine(InputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 152
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 105
    sget-object v5, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter HttpParser.readLine(InputStream, String)"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 106
    invoke-static {p0}, Lorg/apache/commons/httpclient/HttpParser;->readRawLine(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 107
    .local v3, "rawdata":[B
    if-nez v3, :cond_0

    .line 108
    const/4 v5, 0x0

    .line 133
    :goto_0
    return-object v5

    .line 111
    :cond_0
    array-length v0, v3

    .line 112
    .local v0, "len":I
    const/4 v2, 0x0

    .line 113
    .local v2, "offset":I
    if-lez v0, :cond_1

    .line 114
    sub-int v5, v0, v7

    aget-byte v5, v3, v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 116
    if-le v0, v7, :cond_1

    .line 117
    sub-int v5, v0, v8

    aget-byte v5, v3, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 123
    :cond_1
    const/4 v5, 0x0

    sub-int v6, v0, v2

    invoke-static {v3, v5, v6, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "result":Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    move-object v1, v4

    .line 127
    .local v1, "logoutput":Ljava/lang/String;
    if-ne v2, v8, :cond_4

    .line 128
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_2
    :goto_1
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5, v1}, Lorg/apache/commons/httpclient/Wire;->input(Ljava/lang/String;)V

    .end local v1    # "logoutput":Ljava/lang/String;
    :cond_3
    move-object v5, v4

    .line 133
    goto :goto_0

    .line 129
    .restart local v1    # "logoutput":Ljava/lang/String;
    :cond_4
    if-ne v2, v7, :cond_2

    .line 130
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static readRawLine(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v2, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpParser.readRawLine()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    if-ltz v1, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 85
    const/4 v2, 0x0

    .line 87
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method
