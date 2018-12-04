.class Lcom/gfan/sdk/statistics/Collector$7;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/Collector;->sendErrorsInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dir:Ljava/lang/String;

.field private final synthetic val$traces:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/Collector$7;->val$traces:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gfan/sdk/statistics/Collector$7;->val$dir:Ljava/lang/String;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1055
    const-string v0, "SDK"

    const-string v1, "sendErrorInfo failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 1044
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/gfan/sdk/statistics/Collector$7;->val$traces:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1051
    :goto_1
    return-void

    .line 1045
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gfan/sdk/statistics/Collector$7;->val$dir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gfan/sdk/statistics/Collector$7;->val$traces:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1049
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
