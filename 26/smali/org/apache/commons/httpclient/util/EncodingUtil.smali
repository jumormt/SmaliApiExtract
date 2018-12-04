.class public Lorg/apache/commons/httpclient/util/EncodingUtil;
.super Ljava/lang/Object;
.source "EncodingUtil.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.util.EncodingUtil"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
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

.method private static doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pairs"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 119
    new-instance v1, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v1}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 120
    .local v1, "codec":Lorg/apache/commons/codec/net/URLCodec;
    aget-object v3, p0, v2

    .line 121
    .local v3, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 122
    if-lez v2, :cond_0

    .line 123
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_0
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "codec":Lorg/apache/commons/codec/net/URLCodec;
    .end local v3    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pairs"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Encoding not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 85
    :try_start_1
    const-string v2, "ISO-8859-1"

    invoke-static {p0, v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 86
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 88
    .local v1, "fatal":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v3, "Encoding not supported: ISO-8859-1"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 238
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 239
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 279
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 263
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 207
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". System encoding used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 218
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". System encoding used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 170
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
