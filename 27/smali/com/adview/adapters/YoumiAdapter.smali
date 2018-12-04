.class public Lcom/adview/adapters/YoumiAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "YoumiAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 7
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 24
    new-instance v2, Ljava/lang/String;

    iget-object v4, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "key2":Ljava/lang/String;
    iget-object v0, p1, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 27
    .local v0, "extra":Lcom/adview/obj/Extra;
    iget v1, v0, Lcom/adview/obj/Extra;->cycleTime:I

    .line 28
    .local v1, "internal":I
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v4

    sget-object v5, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v4, v5, :cond_1

    .line 29
    invoke-static {}, Lcom/adview/AdViewManager;->getYoumiInit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 31
    invoke-static {v6}, Lcom/adview/AdViewManager;->setYoumiInit(Z)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/adview/AdViewManager;->getYoumiInit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    invoke-static {v2, v3, v1, v6}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 37
    invoke-static {v6}, Lcom/adview/AdViewManager;->setYoumiInit(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handle()V
    .locals 9

    .prologue
    .line 43
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v6

    sget-object v7, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v6, v7, :cond_0

    .line 44
    const-string v6, "AdView SDK"

    const-string v7, "Into Youmi"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v6, p0, Lcom/adview/adapters/YoumiAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 46
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    iget-object v4, v2, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 50
    .local v4, "extra":Lcom/adview/obj/Extra;
    iget v6, v4, Lcom/adview/obj/Extra;->bgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->bgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 51
    .local v3, "bgColor":I
    iget v6, v4, Lcom/adview/obj/Extra;->fgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->fgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 52
    .local v5, "fgColor":I
    iget-object v6, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 53
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Lnet/youmi/android/AdView;

    const/16 v6, 0xff

    invoke-direct {v1, v0, v3, v5, v6}, Lnet/youmi/android/AdView;-><init>(Landroid/app/Activity;III)V

    .line 59
    .local v1, "adView":Lnet/youmi/android/AdView;
    iget-object v6, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v6}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 60
    iget-object v6, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v7, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
