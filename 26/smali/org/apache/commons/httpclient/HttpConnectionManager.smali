.class public interface abstract Lorg/apache/commons/httpclient/HttpConnectionManager;
.super Ljava/lang/Object;
.source "HttpConnectionManager.java"


# virtual methods
.method public abstract closeIdleConnections(J)V
.end method

.method public abstract getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
.end method

.method public abstract getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation
.end method

.method public abstract getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation
.end method

.method public abstract getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
.end method

.method public abstract releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
.end method

.method public abstract setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
.end method
