.class Lcom/gfan/sdk/statistics/Collector$1;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/Collector;->sendMoblieInfo(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appStarttime:J

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$appStarttime:J

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 357
    const-string v0, "SDK"

    const-string v1, "sendMoblieInfo failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 308
    const-string v4, ""

    .line 311
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF-8"

    .line 310
    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 319
    :goto_0
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 321
    :try_start_1
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "data":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "data1":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x1

    .line 324
    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    .line 323
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$1(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v2

    .line 327
    .local v2, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->access$2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->ridInsert(Ljava/lang/String;)J

    .line 328
    invoke-virtual {v2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 331
    :try_start_2
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$5(Ljava/lang/String;)V

    .line 332
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$7(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$8(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 340
    :try_start_3
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->access$9(Landroid/content/Context;)V

    .line 343
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    iget-wide v6, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$appStarttime:J

    invoke-static {v5, v6, v7}, Lcom/gfan/sdk/statistics/Collector;->access$10(Landroid/content/Context;J)V

    .line 345
    iget-object v5, p0, Lcom/gfan/sdk/statistics/Collector$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gfan/sdk/statistics/Collector;->sendApkListInfo(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 353
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "data1":[Ljava/lang/String;
    .end local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :goto_1
    return-void

    .line 312
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 313
    .local v3, "e":Lorg/apache/http/ParseException;
    const-string v5, "SDK"

    const-string v6, "e"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v3    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 315
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "SDK"

    const-string v6, "e"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v1    # "data1":[Ljava/lang/String;
    .restart local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 334
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v5, "SDK"

    .line 335
    const-string v6, "the did or cpid does not set"

    .line 334
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 346
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "data1":[Ljava/lang/String;
    .end local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "SDK"

    .line 348
    const-string v6, "rid error, maybe the appkey is wrong."

    .line 347
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "SDK"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
