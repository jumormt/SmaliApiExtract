.class public Lcom/adview/adapters/DomobAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobAdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 26
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 32
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v6

    sget-object v7, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v6, v7, :cond_0

    .line 33
    const-string v6, "AdView SDK"

    const-string v7, "Into Domob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v6, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 35
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    iget-object v4, v2, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 39
    .local v4, "extra":Lcom/adview/obj/Extra;
    iget v6, v4, Lcom/adview/obj/Extra;->bgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->bgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 40
    .local v3, "bgColor":I
    iget v6, v4, Lcom/adview/obj/Extra;->fgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->fgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 41
    .local v5, "fgColor":I
    iget-object v6, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcn/domob/android/ads/DomobAdView;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/app/Activity;)V

    .line 48
    .local v1, "ad":Lcn/domob/android/ads/DomobAdView;
    iget-object v6, p0, Lcom/adview/adapters/DomobAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v6, v6, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->setPublisherId(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v6

    sget-object v7, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v6, v7, :cond_3

    .line 50
    const/4 v6, 0x1

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V

    .line 56
    :goto_1
    invoke-virtual {v1, p0}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 57
    invoke-virtual {v1, v3}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {v1, v5}, Lcn/domob/android/ads/DomobAdView;->setPrimaryTextColor(I)V

    .line 60
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->requestFreshAd()V

    goto :goto_0

    .line 51
    :cond_3
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v6

    sget-object v7, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v6, v7, :cond_4

    .line 52
    invoke-static {v9}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {v9}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V

    goto :goto_1
.end method

.method public onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 70
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 71
    const-string v1, "AdView SDK"

    const-string v2, "Domob failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 75
    iget-object v1, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 76
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 80
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onLandingPageClose()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onLandingPageOpening()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 88
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 89
    const-string v1, "AdView SDK"

    const-string v2, "Domob success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 92
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 97
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
