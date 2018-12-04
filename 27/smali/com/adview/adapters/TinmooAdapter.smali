.class public Lcom/adview/adapters/TinmooAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "TinmooAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    .prologue
    .line 25
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v3

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v3, v4, :cond_0

    .line 26
    const-string v3, "AdView SDK"

    const-string v4, "Into Tinmoo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/TinmooAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 28
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 47
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    iget-object v3, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 33
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v3

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v3, v4, :cond_3

    .line 37
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/ignitevision/android/ads/AdManager;->setTest(Z)V

    .line 40
    :goto_1
    iget-object v3, p0, Lcom/adview/adapters/TinmooAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v3, v3, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/ignitevision/android/ads/AdManager;->setPublisherKey(Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/ignitevision/android/ads/AdView;

    invoke-direct {v1, v0}, Lcom/ignitevision/android/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, "adView":Lcom/ignitevision/android/ads/AdView;
    iget-object v3, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v3}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 44
    iget-object v3, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v4, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 39
    .end local v1    # "adView":Lcom/ignitevision/android/ads/AdView;
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/ignitevision/android/ads/AdManager;->setTest(Z)V

    goto :goto_1
.end method
