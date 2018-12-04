.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitingThread"
.end annotation


# instance fields
.field public hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

.field public interruptedByConnectionPool:Z

.field public thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;

    .prologue
    .line 1056
    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;-><init>()V

    return-void
.end method
