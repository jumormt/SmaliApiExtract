.class public abstract Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.source "EntityEnclosingMethod.java"


# static fields
.field public static final CONTENT_LENGTH_AUTO:J = -0x2L

.field public static final CONTENT_LENGTH_CHUNKED:J = -0x1L

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;


# instance fields
.field private chunked:Z

.field private repeatCount:I

.field private requestContentLength:J

.field private requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

.field private requestStream:Ljava/io/InputStream;

.field private requestString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.EntityEnclosingMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    .line 80
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 83
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 88
    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 95
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 97
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 108
    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>(Ljava/lang/String;)V

    .line 80
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 83
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 88
    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 95
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 97
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 120
    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    .line 121
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
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


# virtual methods
.method protected addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v4, "Transfer-Encoding"

    .line 401
    sget-object v2, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 404
    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p0, v4}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v0

    .line 407
    .local v0, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const-string v2, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v0    # "len":J
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0    # "len":J
    :cond_1
    new-instance v2, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " does not support chunk encoding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_2
    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v3, "Content-Type"

    .line 370
    sget-object v1, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter EntityEnclosingMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 373
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 378
    const-string v1, "Content-Type"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    .line 380
    .local v0, "requestEntity":Lorg/apache/commons/httpclient/methods/RequestEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "Content-Type"

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v0    # "requestEntity":Lorg/apache/commons/httpclient/methods/RequestEntity;
    :cond_0
    return-void
.end method

.method protected clearRequestBody()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 151
    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 152
    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 154
    return-void
.end method

.method protected generateRequestBody()[B
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.renerateRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestBody()[B

    move-result-object v2

    .line 175
    .local v2, "requestBody":[B
    if-eqz v2, :cond_1

    .line 178
    new-instance v3, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-direct {v3, v2}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 201
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    return-object v3

    .line 179
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    .line 180
    new-instance v3, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iget-wide v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 183
    iput-object v7, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    goto :goto_0

    .line 184
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 190
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    sget-object v3, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 194
    :cond_3
    :try_start_1
    new-instance v3, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestCharSet()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "Content-Type"

    .line 266
    const-string v0, "Content-Type"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Content-Type"

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 274
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRequestContentLength()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 325
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.getRequestContentLength()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 336
    :goto_0
    return-wide v0

    .line 330
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    if-eqz v0, :cond_1

    .line 331
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 336
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    return-object v0
.end method

.method protected hasRequestContent()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 526
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 527
    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 528
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 529
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->recycle()V

    .line 530
    return-void
.end method

.method public setContentChunked(Z)V
    .locals 0
    .param p1, "chunked"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 317
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 2
    .param p1, "followRedirects"    # Z

    .prologue
    .line 224
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity enclosing requests cannot be redirected without user intervention"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setFollowRedirects(Z)V

    .line 228
    return-void
.end method

.method public setRequestBody(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "body"    # Ljava/io/InputStream;

    .prologue
    .line 428
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(InputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 431
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 448
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 450
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setRequestContentLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 253
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 254
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 255
    return-void
.end method

.method public setRequestContentLength(J)V
    .locals 2
    .param p1, "length"    # J

    .prologue
    .line 304
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 305
    iput-wide p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 306
    return-void
.end method

.method public setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V
    .locals 0
    .param p1, "requestEntity"    # Lorg/apache/commons/httpclient/methods/RequestEntity;

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 548
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 549
    return-void
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 469
    sget-object v5, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter EntityEnclosingMethod.writeRequestBody(HttpState, HttpConnection)"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    sget-object v5, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Request body has not been specified"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v5, v7

    .line 509
    :goto_0
    return v5

    .line 476
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v5, :cond_1

    .line 477
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 479
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v5, :cond_2

    .line 480
    sget-object v5, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Request body is empty"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v5, v7

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v1

    .line 486
    .local v1, "contentLength":J
    iget v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v5}, Lorg/apache/commons/httpclient/methods/RequestEntity;->isRepeatable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 487
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v6, "Unbuffered entity enclosing request can not be repeated."

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_3
    iget v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 493
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 495
    .local v3, "outstream":Ljava/io/OutputStream;
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_4

    .line 496
    new-instance v4, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    invoke-direct {v4, v3}, Lorg/apache/commons/httpclient/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v3    # "outstream":Ljava/io/OutputStream;
    .local v4, "outstream":Ljava/io/OutputStream;
    move-object v3, v4

    .line 499
    .end local v4    # "outstream":Ljava/io/OutputStream;
    .restart local v3    # "outstream":Ljava/io/OutputStream;
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v5, v3}, Lorg/apache/commons/httpclient/methods/RequestEntity;->writeRequest(Ljava/io/OutputStream;)V

    .line 502
    instance-of v5, v3, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    if-eqz v5, :cond_5

    .line 503
    move-object v0, v3

    check-cast v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->finish()V

    .line 506
    :cond_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 508
    sget-object v5, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Request body sent"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v5, v7

    .line 509
    goto :goto_0
.end method
