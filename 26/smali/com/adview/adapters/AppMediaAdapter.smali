.class public Lcom/adview/adapters/AppMediaAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AppMediaAdapter.java"

# interfaces
.implements Lcn/appmedia/ad/AdViewListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    iget-object v0, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v0}, Lcn/appmedia/ad/AdManager;->setAid(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v3

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v3, v4, :cond_0

    .line 27
    const-string v3, "AdView SDK"

    const-string v4, "Into AppMedia"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/AppMediaAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 29
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget-object v3, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 34
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 37
    new-instance v1, Lcn/appmedia/ad/BannerAdView;

    invoke-direct {v1, v0}, Lcn/appmedia/ad/BannerAdView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "adView":Lcn/appmedia/ad/BannerAdView;
    invoke-virtual {v1, p0}, Lcn/appmedia/ad/BannerAdView;->setAdListener(Lcn/appmedia/ad/AdViewListener;)V

    goto :goto_0
.end method

.method public onReceiveAdFailure(Lcn/appmedia/ad/BannerAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/appmedia/ad/BannerAdView;

    .prologue
    .line 45
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 46
    const-string v1, "AdView SDK"

    const-string v2, "AppMedia failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/appmedia/ad/BannerAdView;->setAdListener(Lcn/appmedia/ad/AdViewListener;)V

    .line 50
    iget-object v1, p0, Lcom/adview/adapters/AppMediaAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 51
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 55
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onReceiveAdSuccess(Lcn/appmedia/ad/BannerAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/appmedia/ad/BannerAdView;

    .prologue
    .line 62
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 63
    const-string v1, "AdView SDK"

    const-string v2, "AppMedia success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AppMediaAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 68
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 74
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
