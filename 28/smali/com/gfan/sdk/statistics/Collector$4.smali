.class Lcom/gfan/sdk/statistics/Collector$4;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/Collector;->sendApkListInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/Collector$4;->val$context:Landroid/content/Context;

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 777
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 761
    iget-object v1, p0, Lcom/gfan/sdk/statistics/Collector$4;->val$context:Landroid/content/Context;

    .line 762
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 761
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    .local v0, "preferences":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 769
    const-string v2, "com.gfan.sdk.lastSendAppListTime"

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 768
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 771
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
