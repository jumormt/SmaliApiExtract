.class public Lcom/adview/adapters/AdTouchAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdTouchAdapter.java"

# interfaces
.implements Lcom/energysource/szj/embeded/AdListener;


# instance fields
.field private area:I


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 22
    const/16 v0, 0x51

    iput v0, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    .line 26
    return-void
.end method


# virtual methods
.method public failedReceiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 2
    .param p1, "arg0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 64
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 65
    const-string v0, "AdView SDK"

    const-string v1, "AdTouch fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method

.method public handle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_0

    .line 33
    const-string v2, "AdView SDK"

    const-string v3, "Into AdTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/adview/adapters/AdTouchAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 35
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_2

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    iget-object v2, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 40
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_3

    .line 44
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openDebug()V

    .line 45
    :cond_3
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openPermissionJudge()V

    .line 48
    iget-object v2, p0, Lcom/adview/adapters/AdTouchAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/energysource/szj/embeded/AdManager;->initAd(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 50
    invoke-static {}, Lcom/adview/AdViewTargeting;->getAdArea()Lcom/adview/AdViewTargeting$AdArea;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    if-ne v2, v3, :cond_4

    .line 51
    const/16 v2, 0x51

    iput v2, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    .line 54
    :goto_1
    const/16 v2, 0x65

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    invoke-static {v2, v3, v4, v5, v5}, Lcom/energysource/szj/embeded/AdManager;->addAd(IIIII)V

    .line 55
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v2}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 56
    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 53
    :cond_4
    const/16 v2, 0x31

    iput v2, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    goto :goto_1
.end method

.method public receiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 2
    .param p1, "arg0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 73
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 74
    const-string v0, "AdView SDK"

    const-string v1, "AdTouch success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method
