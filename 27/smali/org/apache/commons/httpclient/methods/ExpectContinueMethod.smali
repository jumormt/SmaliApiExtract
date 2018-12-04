.class public abstract Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "ExpectContinueMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.ExpectContinueMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 74
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
    const-string v3, "Expect"

    .line 183
    sget-object v1, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter ExpectContinueMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 185
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 187
    const-string v1, "Expect"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 192
    .local v0, "headerPresent":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.protocol.expect-continue"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->hasRequestContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    if-nez v0, :cond_0

    .line 197
    const-string v1, "Expect"

    const-string v1, "100-continue"

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 187
    .end local v0    # "headerPresent":Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 200
    .restart local v0    # "headerPresent":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 201
    const-string v1, "Expect"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->removeRequestHeader(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUseExpectHeader()Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract hasRequestContent()Z
.end method

.method public setUseExpectHeader(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setBooleanParameter(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method
