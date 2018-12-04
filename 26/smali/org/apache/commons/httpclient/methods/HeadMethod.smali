.class public Lorg/apache/commons/httpclient/methods/HeadMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "HeadMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.HeadMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/HeadMethod;->class$org$apache$commons$httpclient$methods$HeadMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 96
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 73
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
.method public getBodyCheckTimeout()I
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.head-body-timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "HEAD"

    return-object v0
.end method

.method protected readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter HeadMethod.readResponseBody(HttpState, HttpConnection)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    const-string v4, "http.protocol.head-body-timeout"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "bodyCheckTimeout":I
    if-gez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->responseBodyConsumed()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Check for non-compliant response body. Timeout in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 163
    :cond_2
    const/4 v2, 0x0

    .line 165
    .local v2, "responseAvailable":Z
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 172
    :goto_1
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    const-string v4, "http.protocol.reject-head-body"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    new-instance v3, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v4, "Body content may not be sent in response to HTTP HEAD request"

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "An IOException occurred while testing if a response was available, we will assume one is not."

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 170
    const/4 v2, 0x0

    goto :goto_1

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v3, Lorg/apache/commons/httpclient/methods/HeadMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Body content returned in response to HTTP HEAD"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 179
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->recycle()V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->setFollowRedirects(Z)V

    .line 127
    return-void
.end method

.method public setBodyCheckTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.head-body-timeout"

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setIntParameter(Ljava/lang/String;I)V

    .line 217
    return-void
.end method
