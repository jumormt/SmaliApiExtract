.class public Lcom/adview/adapters/SmartAdAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "SmartAdAdapter.java"

# interfaces
.implements Lcom/madhouse/android/ads/AdListener;


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
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v4

    sget-object v5, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v4, v5, :cond_0

    .line 34
    const-string v4, "AdView SDK"

    const-string v5, "Into SmartAd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adview/AdViewLayout;

    .line 36
    .local v8, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v8, :cond_2

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    iget-object v9, v8, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 41
    .local v9, "extra":Lcom/adview/obj/Extra;
    iget-object v4, v8, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 42
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 46
    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/madhouse/android/ads/AdManager;->setApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "ad":Lcom/madhouse/android/ads/AdView;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v4

    sget-object v5, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v4, v5, :cond_3

    .line 49
    new-instance v0, Lcom/madhouse/android/ads/AdView;

    .end local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    iget v5, v9, Lcom/adview/obj/Extra;->cycleTime:I

    const/4 v7, 0x1

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V

    .line 55
    .restart local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v4

    sget-object v5, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v4, v5, :cond_4

    .line 51
    new-instance v0, Lcom/madhouse/android/ads/AdView;

    .end local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    iget v5, v9, Lcom/adview/obj/Extra;->cycleTime:I

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V

    .restart local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    goto :goto_1

    .line 53
    :cond_4
    new-instance v0, Lcom/madhouse/android/ads/AdView;

    .end local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    iget v5, v9, Lcom/adview/obj/Extra;->cycleTime:I

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V

    .restart local v0    # "ad":Lcom/madhouse/android/ads/AdView;
    goto :goto_1
.end method

.method public onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    .locals 5
    .param p1, "arg0"    # Lcom/madhouse/android/ads/AdView;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "AdView SDK"

    .line 64
    packed-switch p2, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_1

    .line 71
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd new Ad"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 74
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 79
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 81
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    .line 88
    .end local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :pswitch_1
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_2

    .line 89
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd success"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_3

    .line 97
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd invalid ad"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    .line 100
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 101
    .restart local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 105
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAdStatus(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 117
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 118
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 119
    const-string v1, "AdView SDK"

    const-string v2, "SmartAd fail ad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 122
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_2

    .line 129
    .end local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :cond_1
    :goto_0
    return-void

    .line 125
    .restart local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :cond_2
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 126
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method
