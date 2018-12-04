.class public Lorg/apache/commons/httpclient/HostConfiguration;
.super Ljava/lang/Object;
.source "HostConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;


# instance fields
.field private host:Lorg/apache/commons/httpclient/HttpHost;

.field private localAddress:Ljava/net/InetAddress;

.field private params:Lorg/apache/commons/httpclient/params/HostParams;

.field private proxyHost:Lorg/apache/commons/httpclient/ProxyHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 66
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 69
    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 66
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 69
    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 85
    return-void
.end method

.method private init(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 90
    monitor-enter p1

    .line 92
    :try_start_0
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpHost;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 97
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ProxyHost;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 102
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 103
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HostParams;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/params/HostParams;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host configuration could not be cloned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 100
    :cond_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 116
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v0, "copy":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 121
    return-object v0

    .line 117
    .end local v0    # "copy":Lorg/apache/commons/httpclient/HostConfiguration;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 118
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host configuration could not be cloned"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 502
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 510
    :goto_0
    monitor-exit p0

    return v2

    .line 505
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;

    move-object v1, v0

    .line 506
    .local v1, "that":Lorg/apache/commons/httpclient/HostConfiguration;
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iget-object v3, v1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iget-object v3, v1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    iget-object v3, v1, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1    # "that":Lorg/apache/commons/httpclient/HostConfiguration;
    :cond_2
    move v2, v4

    .line 510
    goto :goto_0

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 345
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Host must be set to create a host URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 330
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->toURI()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HostParams;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 371
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 383
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 429
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyPort()I
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 444
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HostParams;->getVirtualHost()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    .line 519
    monitor-enter p0

    const/16 v0, 0x11

    .line 520
    .local v0, "hash":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 521
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 522
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 523
    monitor-exit p0

    return v0

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 3
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    const/4 v2, 0x0

    .line 175
    monitor-enter p0

    if-nez p1, :cond_0

    .line 176
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 199
    :goto_0
    monitor-exit p0

    return v0

    .line 182
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 186
    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 190
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 194
    goto :goto_0

    .line 197
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    .line 199
    goto :goto_0
.end method

.method public declared-synchronized isHostSet()Z
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isProxySet()Z
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized proxyEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 4
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    monitor-enter p0

    if-nez p1, :cond_0

    .line 215
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v2

    .line 218
    goto :goto_0

    .line 222
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    const-string v1, "http"

    invoke-static {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    .line 306
    .local v0, "defaultProtocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 305
    .end local v0    # "defaultProtocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {p3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .prologue
    .line 280
    monitor-enter p0

    if-nez p1, :cond_0

    .line 281
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_0
    if-nez p3, :cond_1

    .line 284
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setHost(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "virtualHost"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/params/HostParams;->setVirtualHost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/HttpHost;)V
    .locals 1
    .param p1, "host"    # Lorg/apache/commons/httpclient/HttpHost;

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/URI;)V
    .locals 4
    .param p1, "uri"    # Lorg/apache/commons/httpclient/URI;

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 316
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 317
    .local v0, "e":Lorg/apache/commons/httpclient/URIException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .end local v0    # "e":Lorg/apache/commons/httpclient/URIException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLocalAddress(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HostParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HostParams;

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 494
    return-void
.end method

.method public declared-synchronized setProxy(Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/ProxyHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/ProxyHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyHost(Lorg/apache/commons/httpclient/ProxyHost;)V
    .locals 1
    .param p1, "proxyHost"    # Lorg/apache/commons/httpclient/ProxyHost;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v2, ", "

    .line 129
    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    .local v0, "appendComma":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 131
    .local v1, "b":Ljava/lang/StringBuffer;
    const-string v2, "HostConfiguration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v2, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 135
    const-string v2, "host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 137
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v2, :cond_1

    .line 138
    if-eqz v0, :cond_3

    .line 139
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :goto_0
    const-string v2, "proxyHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    .line 146
    if-eqz v0, :cond_4

    .line 147
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :goto_1
    const-string v2, "localAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 152
    if-eqz v0, :cond_5

    .line 153
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :goto_2
    const-string v2, "params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 141
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 155
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 129
    .end local v1    # "b":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
