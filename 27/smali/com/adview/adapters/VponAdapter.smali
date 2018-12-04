.class public Lcom/adview/adapters/VponAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "VponAdapter.java"

# interfaces
.implements Lcom/vpon/adon/android/AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 21
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 8

    .prologue
    .line 26
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v5

    sget-object v6, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v5, v6, :cond_0

    .line 27
    const-string v5, "AdView SDK"

    const-string v6, "Into Vpon"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v5, p0, Lcom/adview/adapters/VponAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 29
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget-object v5, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 34
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    new-instance v1, Lcom/vpon/adon/android/AdView;

    invoke-direct {v1, v0}, Lcom/vpon/adon/android/AdView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "adView":Lcom/vpon/adon/android/AdView;
    const/4 v3, 0x0

    .line 40
    .local v3, "autoRefreshAd":Z
    iget-object v5, p0, Lcom/adview/adapters/VponAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v5, v5, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    sget-object v6, Lcom/vpon/adon/android/AdOnPlatform;->CN:Lcom/vpon/adon/android/AdOnPlatform;

    invoke-virtual {v1, v5, v6, v3}, Lcom/vpon/adon/android/AdView;->setLicenseKey(Ljava/lang/String;Lcom/vpon/adon/android/AdOnPlatform;Z)V

    .line 41
    invoke-virtual {v1, p0}, Lcom/vpon/adon/android/AdView;->setAdListener(Lcom/vpon/adon/android/AdListener;)V

    .line 44
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 45
    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v2, v1, v5}, Lcom/adview/AdViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "adView":Lcom/vpon/adon/android/AdView;
    .end local v3    # "autoRefreshAd":Z
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 50
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToRecevieAd(Lcom/vpon/adon/android/AdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 58
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 59
    const-string v1, "AdView SDK"

    const-string v2, "Vpon fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/vpon/adon/android/AdView;->setAdListener(Lcom/vpon/adon/android/AdListener;)V

    .line 62
    iget-object v1, p0, Lcom/adview/adapters/VponAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 63
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 68
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onRecevieAd(Lcom/vpon/adon/android/AdView;)V
    .locals 3
    .param p1, "arg0"    # Lcom/vpon/adon/android/AdView;

    .prologue
    .line 76
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 77
    const-string v1, "AdView SDK"

    const-string v2, "Vpon success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/VponAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 79
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 84
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
