.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionSource"
.end annotation


# instance fields
.field public connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field public hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;

    .prologue
    .line 1025
    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;-><init>()V

    return-void
.end method
