.class Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;
.super Ljava/lang/Object;
.source "ProxyClient.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/ProxyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyConnectionManager"
.end annotation


# instance fields
.field private connectionParams:Lorg/apache/commons/httpclient/params/HttpParams;

.field private httpConnection:Lorg/apache/commons/httpclient/HttpConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 0
    .param p1, "idleTimeout"    # J

    .prologue
    .line 275
    return-void
.end method

.method public getConnection()Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 303
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J

    .prologue
    .line 288
    new-instance v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 289
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 290
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->connectionParams:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 291
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 307
    return-void
.end method

.method public setConnectionParams(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "httpParams"    # Lorg/apache/commons/httpclient/params/HttpParams;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->connectionParams:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 283
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .prologue
    .line 314
    return-void
.end method
