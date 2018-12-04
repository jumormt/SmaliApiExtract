.class Lcom/gfan/sdk/statistics/Collector$3;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/Collector;->postAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$backupId:J

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$cpidmac:Ljava/lang/String;

.field private final synthetic val$mac:Ljava/lang/String;

.field private final synthetic val$opid:Ljava/lang/String;

.field private final synthetic val$sdkType:Ljava/lang/String;

.field private final synthetic val$sdkVersion:Ljava/lang/String;

.field private final synthetic val$starttime:J

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$backupId:J

    iput-object p3, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$version:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$starttime:J

    iput-object p7, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$mac:Ljava/lang/String;

    iput-object p8, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$cpidmac:Ljava/lang/String;

    iput-object p9, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$opid:Ljava/lang/String;

    iput-object p10, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$sdkVersion:Ljava/lang/String;

    iput-object p11, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$sdkType:Ljava/lang/String;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 653
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$backupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v0

    .line 656
    .local v0, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$version:Ljava/lang/String;

    iget-wide v2, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$starttime:J

    .line 657
    iget-object v4, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$mac:Ljava/lang/String;

    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$cpidmac:Ljava/lang/String;

    iget-object v6, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$opid:Ljava/lang/String;

    iget-object v7, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$sdkVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$sdkType:Ljava/lang/String;

    .line 656
    invoke-virtual/range {v0 .. v8}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupStartInfoInsert(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 658
    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 662
    .end local v0    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 641
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$backupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v0

    .line 644
    .local v0, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    iget-wide v1, p0, Lcom/gfan/sdk/statistics/Collector$3;->val$backupId:J

    invoke-virtual {v0, v1, v2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupStartInfoClear(J)I

    .line 645
    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 648
    .end local v0    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_0
    return-void
.end method
