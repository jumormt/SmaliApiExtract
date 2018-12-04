.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;
.super Lorg/apache/commons/httpclient/HttpConnection;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpConnectionAdapter"
.end annotation


# instance fields
.field private wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 1164
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 1165
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 1166
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 1189
    :cond_0
    return-void
.end method

.method public closeIfStale()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1312
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->closeIfStale()Z

    move-result v0

    .line 1315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flushRequestOutputStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->flushRequestOutputStream()V

    .line 1569
    return-void

    .line 1567
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .locals 1

    .prologue
    .line 1238
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    .line 1241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastResponseInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getLastResponseInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .locals 2

    .prologue
    .line 1624
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    return-object v0

    .line 1627
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1254
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v0

    .line 1257
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    .prologue
    .line 1262
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    .line 1265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 1273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 1278
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v0

    .line 1281
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRequestOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 1290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1296
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getResponseInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1605
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getSendBufferSize()I

    move-result v0

    return v0

    .line 1608
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1575
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getSoTimeout()I

    move-result v0

    return v0

    .line 1578
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVirtualHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1586
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1589
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0
.end method

.method protected hasConnection()Z
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1304
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    .line 1307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 1320
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    .line 1323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v0

    .line 1331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable(I)Z

    move-result v0

    .line 1339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1344
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    .line 1347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 1203
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isStaleCheckingEnabled()Z

    move-result v0

    .line 1206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v0

    .line 1355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 1365
    return-void

    .line 1363
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public print(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;)V

    .line 1377
    return-void

    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    return-void

    .line 1646
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1381
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->printLine()V

    .line 1386
    return-void

    .line 1384
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->printLine(Ljava/lang/String;)V

    .line 1398
    return-void

    .line 1396
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1655
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/HttpConnection;->printLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    return-void

    .line 1658
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1404
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1412
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1415
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseConnection()V
    .locals 2

    .prologue
    .line 1420
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 1422
    .local v0, "wrappedConnection":Lorg/apache/commons/httpclient/HttpConnection;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 1423
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 1427
    .end local v0    # "wrappedConnection":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_0
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 1433
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setConnectionTimeout(I)V

    .line 1438
    :cond_0
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setHost(Ljava/lang/String;)V

    .line 1446
    :cond_0
    return-void
.end method

.method public setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 1
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 1449
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 1454
    :cond_0
    return-void
.end method

.method public setLastResponseInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;

    .prologue
    .line 1457
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 1462
    :cond_0
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 1211
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 1216
    return-void

    .line 1214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .prologue
    .line 1632
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setParams(Lorg/apache/commons/httpclient/params/HttpConnectionParams;)V

    .line 1637
    return-void

    .line 1635
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setPort(I)V

    .line 1470
    :cond_0
    return-void
.end method

.method public setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .prologue
    .line 1473
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1481
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyHost(Ljava/lang/String;)V

    .line 1486
    :cond_0
    return-void
.end method

.method public setProxyPort(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyPort(I)V

    .line 1494
    :cond_0
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "sendBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1616
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setSendBufferSize(I)V

    .line 1621
    return-void

    .line 1619
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setSoTimeout(I)V

    .line 1506
    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1666
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 1671
    return-void

    .line 1669
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 2
    .param p1, "staleCheckEnabled"    # Z

    .prologue
    .line 1222
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setStaleCheckingEnabled(Z)V

    .line 1227
    return-void

    .line 1225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVirtualHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1597
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setVirtualHost(Ljava/lang/String;)V

    .line 1602
    return-void

    .line 1600
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()V
    .locals 1

    .prologue
    .line 1512
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->shutdownOutput()V

    .line 1517
    :cond_0
    return-void
.end method

.method public tunnelCreated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->tunnelCreated()V

    .line 1525
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1543
    return-void

    .line 1541
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/HttpConnection;->write([BII)V

    .line 1534
    return-void

    .line 1532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1547
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 1552
    return-void

    .line 1550
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLine([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1556
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine([B)V

    .line 1561
    return-void

    .line 1559
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
