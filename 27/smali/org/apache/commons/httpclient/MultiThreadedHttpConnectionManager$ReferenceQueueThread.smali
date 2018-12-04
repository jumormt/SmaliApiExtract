.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;
.super Ljava/lang/Thread;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueThread"
.end annotation


# instance fields
.field private volatile shutdown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->setDaemon(Z)V

    .line 1082
    const-string v0, "MultiThreadedHttpConnectionManager cleanup"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->setName(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method private handleReference(Ljava/lang/ref/Reference;)V
    .locals 5
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    .prologue
    .line 1097
    const/4 v1, 0x0

    .line 1099
    .local v1, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1400()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 1100
    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1400()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    move-object v1, v0

    .line 1101
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    if-eqz v1, :cond_1

    .line 1105
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Connection reclaimed by garbage collector, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1111
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    iget-object v3, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 1113
    :cond_1
    return-void

    .line 1101
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1119
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    if-nez v2, :cond_1

    .line 1122
    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1500()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 1123
    .local v1, "ref":Ljava/lang/ref/Reference;
    if-eqz v1, :cond_0

    .line 1124
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->handleReference(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    .end local v1    # "ref":Ljava/lang/ref/Reference;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "ReferenceQueueThread interrupted"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    .line 1087
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->interrupt()V

    .line 1088
    return-void
.end method
