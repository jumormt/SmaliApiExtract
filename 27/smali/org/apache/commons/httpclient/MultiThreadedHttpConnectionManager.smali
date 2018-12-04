.class public Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
    }
.end annotation


# static fields
.field private static ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap; = null

.field public static final DEFAULT_MAX_HOST_CONNECTIONS:I = 0x2

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

.field private static REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

.field private static final REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

.field static class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

.field private volatile shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.MultiThreadedHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    return-void

    .line 70
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    .line 257
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 258
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    return v0
.end method

.method static access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    return-void
.end method

.method static access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    return-object v0
.end method

.method static access$1500()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static access$600(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    return-void
.end method

.method static access$700()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static access$800(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method static access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "x2"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
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

.method private configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 4
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 653
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    .line 655
    .local v0, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 660
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 663
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    .line 667
    :cond_1
    return-object v0
.end method

.method private doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 22
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v3, 0x0

    .line 444
    .local v3, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v9

    .line 445
    .local v9, "maxHostConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v10

    .line 447
    .local v10, "maxTotalConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 451
    :try_start_0
    new-instance v7, Lorg/apache/commons/httpclient/HostConfiguration;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 452
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .local v7, "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object v1, v7

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v8

    .line 453
    .local v8, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    const/16 v16, 0x0

    .line 455
    .local v16, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    const-wide/16 v19, 0x0

    cmp-long v19, p2, v19

    if-lez v19, :cond_0

    const/16 v19, 0x1

    move/from16 v15, v19

    .line 456
    .local v15, "useTimeout":Z
    :goto_0
    move-wide/from16 v13, p2

    .line 457
    .local v13, "timeToWait":J
    const-wide/16 v11, 0x0

    .line 458
    .local v11, "startWait":J
    const-wide/16 v5, 0x0

    .local v5, "endWait":J
    move-object/from16 v17, v16

    .line 460
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .local v17, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :goto_1
    if-nez v3, :cond_f

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 463
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Connection factory has been shutdown."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v5    # "endWait":J
    .end local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local v11    # "startWait":J
    .end local v13    # "timeToWait":J
    .end local v15    # "useTimeout":Z
    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :catchall_0
    move-exception v19

    move-object/from16 p1, v7

    .end local v7    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :goto_2
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v19

    .line 455
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v7    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :cond_0
    const/16 v19, 0x0

    move/from16 v15, v19

    goto :goto_0

    .line 468
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v5    # "endWait":J
    .restart local v11    # "startWait":J
    .restart local v13    # "timeToWait":J
    .restart local v15    # "useTimeout":Z
    .restart local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :cond_1
    :try_start_3
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getFreeConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v3

    goto :goto_1

    .line 473
    :cond_2
    move-object v0, v8

    iget v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v9

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v19

    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v3

    goto :goto_1

    .line 481
    :cond_3
    move-object v0, v8

    iget v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v9

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteLeastUsedConnection()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto/16 :goto_1

    .line 496
    :cond_4
    if-eqz v15, :cond_7

    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-gtz v19, :cond_7

    .line 497
    :try_start_4
    new-instance v19, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;

    const-string v20, "Timeout waiting for connection"

    invoke-direct/range {v19 .. v20}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 519
    :catch_0
    move-exception v19

    move-object/from16 v4, v19

    move-object/from16 v16, v17

    .line 520
    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .local v4, "e":Ljava/lang/InterruptedException;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :goto_3
    :try_start_5
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 521
    sget-object v19, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v20, "Interrupted while waiting for connection"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 522
    new-instance v19, Ljava/lang/IllegalThreadStateException;

    const-string v20, "Interrupted while waiting in MultiThreadedHttpConnectionManager"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 529
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v19

    :goto_4
    :try_start_6
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 533
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_5
    if-eqz v15, :cond_6

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 539
    sub-long v20, v5, v11

    sub-long v13, v13, v20

    :cond_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 500
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :cond_7
    :try_start_7
    sget-object v19, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 501
    sget-object v19, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Unable to get a connection, waiting..., hostConfig="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 504
    :cond_8
    if-nez v17, :cond_c

    .line 505
    new-instance v16, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 506
    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :try_start_8
    move-object v0, v8

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .line 507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    .line 512
    :goto_5
    if-eqz v15, :cond_9

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 516
    :cond_9
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 529
    :try_start_9
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 533
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_a
    if-eqz v15, :cond_b

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v5

    .line 539
    sub-long v19, v5, v11

    sub-long v13, v13, v19

    :cond_b
    :goto_6
    move-object/from16 v17, v16

    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    goto/16 :goto_1

    .line 509
    :cond_c
    const/16 v19, 0x0

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v16, v17

    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    goto :goto_5

    .line 529
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_b
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 533
    move-object v0, v8

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_e
    if-eqz v15, :cond_b

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 539
    sub-long v19, v5, v11

    sub-long v13, v13, v19

    goto :goto_6

    .line 544
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :cond_f
    monitor-exit v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 545
    return-object v3

    .line 544
    .end local v5    # "endWait":J
    .end local v7    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local v11    # "startWait":J
    .end local v13    # "timeToWait":J
    .end local v15    # "useTimeout":Z
    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_2
    move-exception v19

    goto/16 :goto_2

    .line 529
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v5    # "endWait":J
    .restart local v7    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .restart local v11    # "startWait":J
    .restart local v13    # "timeToWait":J
    .restart local v15    # "useTimeout":Z
    .restart local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :catchall_3
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v16    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    goto/16 :goto_4

    .line 519
    :catch_1
    move-exception v19

    move-object/from16 v4, v19

    goto/16 :goto_3
.end method

.method private static removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .locals 3
    .param p0, "connection"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    .prologue
    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static shutdownAll()V
    .locals 6

    .prologue
    .line 113
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v2

    .line 115
    :try_start_0
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    sget-object v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    check-cast v0, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 127
    .local v0, "connManagers":[Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 128
    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    .line 129
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown()V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-eqz v3, :cond_2

    .line 135
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown()V

    .line 136
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    .line 138
    :cond_2
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 139
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    return-void

    .line 131
    .end local v0    # "connManagers":[Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 139
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private static shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 8
    .param p0, "connectionPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .prologue
    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "connectionsToClose":Ljava/util/ArrayList;
    sget-object v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v6

    .line 195
    :try_start_0
    sget-object v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 196
    .local v4, "referenceIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 198
    .local v3, "ref":Ljava/lang/ref/Reference;
    sget-object v7, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    .line 200
    .local v5, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    iget-object v7, v5, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    if-ne v7, p0, :cond_0

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 202
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 203
    .local v0, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    .end local v3    # "ref":Ljava/lang/ref/Reference;
    .end local v4    # "referenceIter":Ljava/util/Iterator;
    .end local v5    # "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v4    # "referenceIter":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 214
    .restart local v0    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 217
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 218
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    goto :goto_1

    .line 220
    .end local v0    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_2
    return-void
.end method

.method private static storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 4
    .param p0, "connection"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "connectionPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .prologue
    .line 165
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    .line 166
    .local v0, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    iput-object p2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 167
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 169
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-nez v2, :cond_0

    .line 173
    new-instance v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;-><init>()V

    sput-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    .line 174
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->start()V

    .line 177
    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->closeIdleConnections(J)V

    .line 619
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->deleteClosedConnections()V

    .line 620
    return-void
.end method

.method public deleteClosedConnections()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteClosedConnections()V

    .line 612
    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 371
    :goto_0
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 372
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unexpected exception while waiting for connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnectionManager.getConnection(HostConfiguration, long)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 433
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 4
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnectionManager.getConnectionWithTimeout(HostConfiguration, long)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "hostConfiguration is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HttpConnectionManager.getConnection:  config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 416
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    .line 420
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;-><init>(Lorg/apache/commons/httpclient/HttpConnection;)V

    return-object v1
.end method

.method public getConnectionsInPool()I
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v0

    .line 575
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    const/4 v4, 0x0

    .line 559
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    .line 561
    .local v0, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-eqz v0, :cond_0

    iget v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    :goto_0
    monitor-exit v1

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    .line 562
    .end local v0    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConnectionsInUse()I
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInUse(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getDefaultMaxConnectionsPerHost()I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 630
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.releaseConnection(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 632
    instance-of v0, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    .end local p1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object p1

    .line 641
    .restart local p1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 643
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 644
    return-void
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "connectionStaleCheckingEnabled"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    .line 310
    return-void
.end method

.method public setMaxConnectionsPerHost(I)V
    .locals 1
    .param p1, "maxHostConnections"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 324
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 1
    .param p1, "maxTotalConnections"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 350
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 695
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    if-nez v1, :cond_0

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    .line 278
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->shutdown()V

    .line 280
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
