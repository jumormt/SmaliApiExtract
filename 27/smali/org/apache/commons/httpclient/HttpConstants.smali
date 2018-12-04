.class public Lorg/apache/commons/httpclient/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final HTTP_ELEMENT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpConstants"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpConstants;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
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

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 289
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 290
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 326
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpConstants;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 312
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 313
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getContentBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    :cond_1
    const-string p1, "ISO-8859-1"

    .line 148
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    :goto_0
    return-object v2

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". HTTP default encoding used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 158
    :cond_3
    :try_start_1
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 159
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 161
    .local v1, "e2":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 167
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static getContentString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    if-eqz p3, :cond_1

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    :cond_1
    const-string p3, "ISO-8859-1"

    .line 200
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". Default HTTP encoding used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 208
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 211
    .local v1, "e2":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 217
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public static getContentString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpConstants;->getString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method
