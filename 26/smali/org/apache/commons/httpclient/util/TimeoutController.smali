.class public final Lorg/apache/commons/httpclient/util/TimeoutController;
.super Ljava/lang/Object;
.source "TimeoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Timeout guard"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 81
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 82
    invoke-static {v0, p1, p2}, Lorg/apache/commons/httpclient/util/TimeoutController;->execute(Ljava/lang/Thread;J)V

    .line 83
    return-void
.end method

.method public static execute(Ljava/lang/Thread;J)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Thread;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 63
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    new-instance v0, Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;-><init>()V

    throw v0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
