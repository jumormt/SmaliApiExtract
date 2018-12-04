.class public Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;
.super Ljava/lang/Thread;
.source "IdleConnectionTimeoutThread.java"


# instance fields
.field private connectionManagers:Ljava/util/List;

.field private connectionTimeout:J

.field private shutdown:Z

.field private timeoutInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->setDaemon(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void
.end method

.method protected handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->closeIdleConnections(J)V

    .line 93
    return-void
.end method

.method public declared-synchronized removeConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 99
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 104
    .local v0, "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    .end local v0    # "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0

    .line 113
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setConnectionTimeout(J)V
    .locals 2
    .param p1, "connectionTimeout"    # J

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTimeoutInterval(J)V
    .locals 2
    .param p1, "timeoutInterval"    # J

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
