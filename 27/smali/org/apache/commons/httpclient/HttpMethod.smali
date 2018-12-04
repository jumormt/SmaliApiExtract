.class public interface abstract Lorg/apache/commons/httpclient/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addRequestHeader(Lorg/apache/commons/httpclient/Header;)V
.end method

.method public abstract addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
.end method

.method public abstract execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDoAuthentication()Z
.end method

.method public abstract getFollowRedirects()Z
.end method

.method public abstract getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
.end method

.method public abstract getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getRequestHeaders()[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getResponseBody()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseBodyAsStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseBodyAsString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseFooter(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getResponseFooters()[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
.end method

.method public abstract getStatusText()Ljava/lang/String;
.end method

.method public abstract getURI()Lorg/apache/commons/httpclient/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation
.end method

.method public abstract hasBeenUsed()Z
.end method

.method public abstract isRequestSent()Z
.end method

.method public abstract isStrictMode()Z
.end method

.method public abstract recycle()V
.end method

.method public abstract releaseConnection()V
.end method

.method public abstract removeRequestHeader(Ljava/lang/String;)V
.end method

.method public abstract removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V
.end method

.method public abstract setDoAuthentication(Z)V
.end method

.method public abstract setFollowRedirects(Z)V
.end method

.method public abstract setParams(Lorg/apache/commons/httpclient/params/HttpMethodParams;)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setQueryString(Ljava/lang/String;)V
.end method

.method public abstract setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRequestHeader(Lorg/apache/commons/httpclient/Header;)V
.end method

.method public abstract setStrictMode(Z)V
.end method

.method public abstract setURI(Lorg/apache/commons/httpclient/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation
.end method

.method public abstract validate()Z
.end method
