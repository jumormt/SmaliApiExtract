.class public Lcom/adview/adapters/AdMobAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adview$AdViewTargeting$Gender:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$adview$AdViewTargeting$Gender()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/adview/adapters/AdMobAdapter;->$SWITCH_TABLE$com$adview$AdViewTargeting$Gender:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adview/AdViewTargeting$Gender;->values()[Lcom/adview/AdViewTargeting$Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adview/AdViewTargeting$Gender;->FEMALE:Lcom/adview/AdViewTargeting$Gender;

    invoke-virtual {v1}, Lcom/adview/AdViewTargeting$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adview/AdViewTargeting$Gender;->MALE:Lcom/adview/AdViewTargeting$Gender;

    invoke-virtual {v1}, Lcom/adview/AdViewTargeting$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adview/AdViewTargeting$Gender;->UNKNOWN:Lcom/adview/AdViewTargeting$Gender;

    invoke-virtual {v1}, Lcom/adview/AdViewTargeting$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/adview/adapters/AdMobAdapter;->$SWITCH_TABLE$com$adview$AdViewTargeting$Gender:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

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
.method protected birthdayForAdViewTargeting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/adview/AdViewTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/adview/AdViewTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected genderForAdViewTargeting()Lcom/google/ads/AdRequest$Gender;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/adview/adapters/AdMobAdapter;->$SWITCH_TABLE$com$adview$AdViewTargeting$Gender()[I

    move-result-object v0

    invoke-static {}, Lcom/adview/AdViewTargeting;->getGender()Lcom/adview/AdViewTargeting$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adview/AdViewTargeting$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handle()V
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v3

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v3, v4, :cond_0

    .line 37
    const-string v3, "AdView SDK"

    const-string v4, "Into AdMob"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 39
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    iget-object v3, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    iget-object v4, p0, Lcom/adview/adapters/AdMobAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 48
    .local v1, "adView":Lcom/google/ads/AdView;
    invoke-virtual {v1, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/adview/adapters/AdMobAdapter;->requestForAdWhirlLayout(Lcom/adview/AdViewLayout;)Lcom/google/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 72
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcom/google/ads/Ad;
    .param p2, "arg1"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 77
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 78
    const-string v1, "AdView SDK"

    const-string v2, "AdMob fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/ads/Ad;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 80
    iget-object v1, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 81
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 85
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 92
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 98
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 5
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 103
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v3

    sget-object v4, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v3, v4, :cond_0

    .line 104
    const-string v3, "AdView SDK"

    const-string v4, "AdMob success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 106
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/google/ads/AdView;

    move-object v1, v0

    .line 113
    .local v1, "adView":Lcom/google/ads/AdView;
    iget-object v3, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v3}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 114
    iget-object v3, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v4, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method protected requestForAdWhirlLayout(Lcom/adview/AdViewLayout;)Lcom/google/ads/AdRequest;
    .locals 4
    .param p1, "layout"    # Lcom/adview/AdViewLayout;

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 56
    .local v0, "result":Lcom/google/ads/AdRequest;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/adview/adapters/AdMobAdapter;->genderForAdViewTargeting()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)V

    .line 63
    invoke-virtual {p0}, Lcom/adview/adapters/AdMobAdapter;->birthdayForAdViewTargeting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/adview/AdViewTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)V

    .line 66
    return-object v0

    .line 58
    :cond_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_1

    .line 59
    invoke-virtual {v0, v3}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    goto :goto_0
.end method
