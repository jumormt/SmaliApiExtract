.class public Lcom/adview/adapters/AirAdAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AirAdAdapter.java"

# interfaces
.implements Lcom/mt/airad/AirAD$AdListener;


# instance fields
.field private airAD:Lcom/mt/airad/AirAD;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 2
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adview/adapters/AirAdAdapter;->airAD:Lcom/mt/airad/AirAD;

    .line 24
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mt/airad/AirAD;->setGlobalParameter(Ljava/lang/String;Z)V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mt/airad/AirAD;->setGlobalParameter(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public handle()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_0

    .line 34
    const-string v2, "AdView SDK"

    const-string v3, "Into AirAD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/adview/adapters/AirAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 36
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_2

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v2, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 45
    new-instance v2, Lcom/mt/airad/AirAD;

    invoke-direct {v2, v0}, Lcom/mt/airad/AirAD;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adview/adapters/AirAdAdapter;->airAD:Lcom/mt/airad/AirAD;

    .line 46
    iget-object v2, p0, Lcom/adview/adapters/AirAdAdapter;->airAD:Lcom/mt/airad/AirAD;

    invoke-virtual {v2, p0}, Lcom/mt/airad/AirAD;->setAdListener(Lcom/mt/airad/AirAD$AdListener;)V

    goto :goto_0
.end method

.method public onAdBannerClicked()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onAdBannerReceive()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 59
    const-string v1, "AdView SDK"

    const-string v2, "AirAD success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AirAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 62
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 67
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    iget-object v3, p0, Lcom/adview/adapters/AirAdAdapter;->airAD:Lcom/mt/airad/AirAD;

    invoke-direct {v2, v0, v3}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onAdBannerReceiveFailed()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 77
    const-string v1, "AdView SDK"

    const-string v2, "AirAD failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AirAdAdapter;->airAD:Lcom/mt/airad/AirAD;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mt/airad/AirAD;->setAdListener(Lcom/mt/airad/AirAD$AdListener;)V

    .line 81
    iget-object v1, p0, Lcom/adview/adapters/AirAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 82
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 86
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onMultiAdDismiss()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
