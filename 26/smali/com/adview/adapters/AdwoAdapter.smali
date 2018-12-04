.class public Lcom/adview/adapters/AdwoAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdwoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0xff0000

    const v3, 0x400080

    .line 26
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 27
    const-string v1, "AdView SDK"

    const-string v2, "Into Adwo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AdwoAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adview/AdViewLayout;

    .line 29
    .local v8, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v8, :cond_2

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget-object v1, v8, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 34
    .local v7, "activity":Landroid/app/Activity;
    if-eqz v7, :cond_1

    .line 37
    iget-object v9, v8, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 38
    .local v9, "extra":Lcom/adview/obj/Extra;
    const/4 v0, 0x0

    .line 39
    .local v0, "adView":Lcom/adwo/adsdk/AdwoAdView;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_3

    .line 40
    new-instance v0, Lcom/adwo/adsdk/AdwoAdView;

    .end local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    invoke-virtual {v8}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adview/adapters/AdwoAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, v9, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-direct/range {v0 .. v6}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .line 47
    .restart local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    :goto_1
    iget-object v1, v8, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 48
    iget-object v1, v8, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v8, v0}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    invoke-virtual {v8}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 50
    invoke-virtual {v0}, Lcom/adwo/adsdk/AdwoAdView;->finalize()V

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_4

    .line 42
    new-instance v0, Lcom/adwo/adsdk/AdwoAdView;

    .end local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    invoke-virtual {v8}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adview/adapters/AdwoAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    iget v6, v9, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-direct/range {v0 .. v6}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .restart local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    goto :goto_1

    .line 44
    :cond_4
    new-instance v0, Lcom/adwo/adsdk/AdwoAdView;

    .end local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    invoke-virtual {v8}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adview/adapters/AdwoAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    iget v6, v9, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-direct/range {v0 .. v6}, Lcom/adwo/adsdk/AdwoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .restart local v0    # "adView":Lcom/adwo/adsdk/AdwoAdView;
    goto :goto_1
.end method
