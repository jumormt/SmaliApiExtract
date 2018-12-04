.class public Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;
.super Ljava/lang/Object;
.source "SimpleHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final MISUSE_MESSAGE:Ljava/lang/String; = "SimpleHttpConnectionManager being used incorrectly.  Be sure that HttpMethod.releaseConnection() is always called and that only one thread and/or method is using this connection manager at a time."

.field static class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private alwaysClose:Z

.field protected httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private idleStartTime:J

.field private volatile inUse:Z

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.SimpleHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    .line 99
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    .line 101
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "alwaysClose"    # Z

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    .line 99
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    .line 101
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    .line 114
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    .line 115
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
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

.method static finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p0, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getLastResponseInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 70
    .local v1, "lastResponse":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 73
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 4
    .param p1, "idleTimeout"    # J

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p1

    .line 272
    .local v0, "maxIdleTime":J
    iget-wide v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 273
    iget-object v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 275
    :cond_0
    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 176
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 177
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 202
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "SimpleHttpConnectionManager being used incorrectly.  Be sure that HttpMethod.releaseConnection() is always called and that only one thread and/or method is using this connection manager at a time."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    .line 207
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->proxyEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 189
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setHost(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setPort(I)V

    .line 191
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 192
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 194
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyHost(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyPort(I)V

    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eq p1, v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release of an unknown connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 234
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    .line 238
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "connectionStaleCheckingEnabled"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    .line 159
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 265
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 282
    return-void
.end method
