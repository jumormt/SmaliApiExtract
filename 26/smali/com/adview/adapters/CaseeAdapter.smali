.class public Lcom/adview/adapters/CaseeAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "CaseeAdapter.java"

# interfaces
.implements Lcom/casee/adsdk/CaseeAdView$AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 22
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v4, :cond_0

    .line 28
    const-string v1, "AdView SDK"

    const-string v4, "Into CASEE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adview/AdViewLayout;

    .line 30
    .local v10, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v10, :cond_1

    .line 47
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v11, v10, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 35
    .local v11, "extra":Lcom/adview/obj/Extra;
    iget v1, v11, Lcom/adview/obj/Extra;->bgRed:I

    iget v4, v11, Lcom/adview/obj/Extra;->bgGreen:I

    iget v5, v11, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v1, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 36
    .local v7, "bgColor":I
    iget v1, v11, Lcom/adview/obj/Extra;->fgRed:I

    iget v4, v11, Lcom/adview/obj/Extra;->fgGreen:I

    iget v5, v11, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v1, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 37
    .local v8, "fgColor":I
    const/4 v0, 0x0

    .line 38
    .local v0, "adView":Lcom/casee/adsdk/CaseeAdView;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v4, :cond_2

    .line 39
    new-instance v0, Lcom/casee/adsdk/CaseeAdView;

    .end local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    invoke-virtual {v10}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/adview/adapters/CaseeAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, v11, Lcom/adview/obj/Extra;->cycleTime:I

    mul-int/lit16 v6, v6, 0x3e8

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .line 45
    .restart local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v4, :cond_3

    .line 41
    new-instance v0, Lcom/casee/adsdk/CaseeAdView;

    .end local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    invoke-virtual {v10}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/adview/adapters/CaseeAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    iget v5, v11, Lcom/adview/obj/Extra;->cycleTime:I

    mul-int/lit16 v6, v5, 0x3e8

    move v5, v3

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .restart local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    goto :goto_1

    .line 43
    :cond_3
    new-instance v0, Lcom/casee/adsdk/CaseeAdView;

    .end local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    invoke-virtual {v10}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/adview/adapters/CaseeAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    iget v5, v11, Lcom/adview/obj/Extra;->cycleTime:I

    mul-int/lit16 v6, v5, 0x3e8

    move v5, v3

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .restart local v0    # "adView":Lcom/casee/adsdk/CaseeAdView;
    goto :goto_1
.end method

.method public onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 52
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 53
    const-string v1, "AdView SDK"

    const-string v2, "CASEE fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    .line 56
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 58
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 63
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 69
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 70
    const-string v1, "AdView SDK"

    const-string v2, "success=>fail for fresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/casee/adsdk/CaseeAdView;->setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V

    .line 73
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 75
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

.method public onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 87
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 88
    const-string v1, "AdView SDK"

    const-string v2, " CASEE success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 91
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 95
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 102
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 103
    const-string v1, "AdView SDK"

    const-string v2, " fail=>success for fresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 106
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 110
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
