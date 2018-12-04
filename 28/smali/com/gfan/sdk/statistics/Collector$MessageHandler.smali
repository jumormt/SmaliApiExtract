.class final Lcom/gfan/sdk/statistics/Collector$MessageHandler;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gfan/sdk/statistics/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageHandler"
.end annotation


# static fields
.field private static final mutex:Ljava/lang/Object;


# instance fields
.field private iResponse:Lcom/gfan/sdk/statistics/Collector$IResponse;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 882
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->mutex:Ljava/lang/Object;

    .line 881
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "iResponse"    # Lcom/gfan/sdk/statistics/Collector$IResponse;

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p2, p0, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->iResponse:Lcom/gfan/sdk/statistics/Collector$IResponse;

    .line 888
    iput-object p1, p0, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->message:Ljava/lang/String;

    .line 889
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 893
    :try_start_0
    sget-object v1, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    iget-object v2, p0, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/gfan/sdk/statistics/Collector$MessageHandler;->iResponse:Lcom/gfan/sdk/statistics/Collector$IResponse;

    invoke-static {v2, v3}, Lcom/gfan/sdk/statistics/Collector;->access$0(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)Z

    .line 893
    monitor-exit v1

    .line 904
    :goto_0
    return-void

    .line 893
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDK"

    const-string v2, "Exception occurred when sending message."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
