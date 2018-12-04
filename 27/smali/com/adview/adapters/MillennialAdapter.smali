.class public Lcom/adview/adapters/MillennialAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 28
    return-void
.end method


# virtual methods
.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 98
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 99
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad clicked, new browser launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 103
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 104
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 85
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 86
    const-string v1, "AdView SDK"

    const-string v2, "Millennial failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 88
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 89
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 94
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedPri()V

    goto :goto_0
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 108
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 109
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Overlay Launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 116
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 70
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 71
    const-string v1, "AdView SDK"

    const-string v2, "Millennial success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 74
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

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

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 80
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public handle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x1

    const-string v2, "gender"

    .line 32
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/adview/AdViewLayout;

    .line 33
    .local v6, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v6, :cond_0

    .line 67
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 37
    .local v5, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/adview/AdViewTargeting;->getGender()Lcom/adview/AdViewTargeting$Gender;

    move-result-object v8

    .line 38
    .local v8, "gender":Lcom/adview/AdViewTargeting$Gender;
    sget-object v1, Lcom/adview/AdViewTargeting$Gender;->MALE:Lcom/adview/AdViewTargeting$Gender;

    if-ne v8, v1, :cond_5

    .line 39
    const-string v1, "gender"

    const-string v1, "male"

    invoke-virtual {v5, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    :goto_1
    invoke-static {}, Lcom/adview/AdViewTargeting;->getAge()I

    move-result v7

    .line 44
    .local v7, "age":I
    if-eq v7, v4, :cond_2

    .line 45
    const-string v1, "age"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    invoke-static {}, Lcom/adview/AdViewTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "postalCode":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    const-string v1, "zip"

    invoke-virtual {v5, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_3
    invoke-static {}, Lcom/adview/AdViewTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 52
    const-string v1, ","

    invoke-static {}, Lcom/adview/AdViewTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 54
    .local v9, "keywords":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 55
    const-string v1, "keywords"

    invoke-virtual {v5, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_4
    const-string v1, "vendor"

    const-string v2, "adwhirl"

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    invoke-virtual {v6}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adview/adapters/MillennialAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const-string v3, "MMBannerAdTop"

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;)V

    .line 62
    .restart local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    const v1, 0x711e41a1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 64
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    .line 65
    invoke-virtual {v0, v11}, Lcom/millennialmedia/android/MMAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 66
    invoke-virtual {v0, v11}, Lcom/millennialmedia/android/MMAdView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 40
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    .end local v7    # "age":I
    .end local v9    # "keywords":Ljava/lang/String;
    .end local v10    # "postalCode":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/adview/AdViewTargeting$Gender;->FEMALE:Lcom/adview/AdViewTargeting$Gender;

    if-ne v8, v1, :cond_1

    .line 41
    const-string v1, "gender"

    const-string v1, "female"

    invoke-virtual {v5, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    .restart local v7    # "age":I
    .restart local v10    # "postalCode":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/adview/AdViewTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_2
.end method
