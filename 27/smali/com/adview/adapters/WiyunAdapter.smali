.class public Lcom/adview/adapters/WiyunAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "WiyunAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 30
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v5

    sget-object v6, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v5, v6, :cond_0

    .line 31
    const-string v5, "AdView SDK"

    const-string v6, "Into Wiyun"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iget-object v5, p0, Lcom/adview/adapters/WiyunAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 33
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_1

    .line 62
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v3, v1, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 37
    .local v3, "extra":Lcom/adview/obj/Extra;
    iget v5, v3, Lcom/adview/obj/Extra;->bgRed:I

    iget v6, v3, Lcom/adview/obj/Extra;->bgGreen:I

    iget v7, v3, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 38
    .local v2, "bgColor":I
    iget v5, v3, Lcom/adview/obj/Extra;->fgRed:I

    iget v6, v3, Lcom/adview/obj/Extra;->fgGreen:I

    iget v7, v3, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 41
    .local v4, "fgColor":I
    new-instance v0, Lcom/wiyun/ad/AdView;

    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "ad":Lcom/wiyun/ad/AdView;
    invoke-virtual {v0, v2}, Lcom/wiyun/ad/AdView;->setBackgroundColor(I)V

    .line 44
    invoke-virtual {v0, v4}, Lcom/wiyun/ad/AdView;->setTextColor(I)V

    .line 45
    iget-object v5, p0, Lcom/adview/adapters/WiyunAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v5, v5, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wiyun/ad/AdView;->setResId(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v5

    sget-object v6, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v5, v6, :cond_2

    .line 47
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    .line 54
    :goto_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/wiyun/ad/AdView;->setTransitionType(I)V

    .line 55
    invoke-virtual {v0, v8}, Lcom/wiyun/ad/AdView;->setRefreshInterval(I)V

    .line 56
    invoke-virtual {v0}, Lcom/wiyun/ad/AdView;->requestAd()V

    .line 58
    iget-object v5, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v5}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 59
    iget-object v5, v1, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v6, v1, v0}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v5

    sget-object v6, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v5, v6, :cond_3

    .line 49
    invoke-virtual {v0, v8}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v0, v8}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    goto :goto_1
.end method
