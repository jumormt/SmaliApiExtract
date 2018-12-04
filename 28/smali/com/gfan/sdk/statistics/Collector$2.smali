.class Lcom/gfan/sdk/statistics/Collector$2;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/Collector;->postLeaveInfo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$backupId:J

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$cpidmac:Ljava/lang/String;

.field private final synthetic val$endtime:J

.field private final synthetic val$mac:Ljava/lang/String;

.field private final synthetic val$opid:Ljava/lang/String;

.field private final synthetic val$sdkType:Ljava/lang/String;

.field private final synthetic val$sdkVersion:Ljava/lang/String;

.field private final synthetic val$starttime:J

.field private final synthetic val$timesum:J

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$starttime:J

    iput-wide p4, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$backupId:J

    iput-object p6, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$version:Ljava/lang/String;

    iput-wide p7, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$endtime:J

    iput-wide p9, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$timesum:J

    iput-object p11, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$mac:Ljava/lang/String;

    iput-object p12, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$cpidmac:Ljava/lang/String;

    iput-object p13, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$opid:Ljava/lang/String;

    iput-object p14, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$sdkVersion:Ljava/lang/String;

    iput-object p15, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$sdkType:Ljava/lang/String;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 13
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 599
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$backupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v0

    .line 602
    .local v0, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$version:Ljava/lang/String;

    iget-wide v2, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$starttime:J

    .line 603
    iget-wide v4, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$endtime:J

    iget-wide v6, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$timesum:J

    iget-object v8, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$mac:Ljava/lang/String;

    iget-object v9, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$cpidmac:Ljava/lang/String;

    iget-object v10, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$opid:Ljava/lang/String;

    .line 604
    iget-object v11, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$sdkVersion:Ljava/lang/String;

    iget-object v12, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$sdkType:Ljava/lang/String;

    .line 602
    invoke-virtual/range {v0 .. v12}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupAppInfoInsert(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 605
    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 610
    .end local v0    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$starttime:J

    invoke-static {v1, v2, v3}, Lcom/gfan/sdk/statistics/Collector;->access$11(Landroid/content/Context;J)V

    .line 586
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$backupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v0

    .line 589
    .local v0, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$2;->val$backupId:J

    invoke-virtual {v0, v1, v2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupAppInfoClear(J)I

    .line 590
    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 594
    .end local v0    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_0
    return-void
.end method
