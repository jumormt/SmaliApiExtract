.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HostConnectionPool"
.end annotation


# instance fields
.field public freeConnections:Ljava/util/LinkedList;

.field public hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field public numConnections:I

.field public waitingThreads:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    .line 1046
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    .line 1049
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;

    .prologue
    .line 1038
    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;-><init>()V

    return-void
.end method
