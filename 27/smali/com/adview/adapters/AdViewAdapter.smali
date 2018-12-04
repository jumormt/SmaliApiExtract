.class public abstract Lcom/adview/adapters/AdViewAdapter;
.super Ljava/lang/Object;
.source "AdViewAdapter.java"


# instance fields
.field protected final adViewLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adview/AdViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected ration:Lcom/adview/obj/Ration;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/adapters/AdViewAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p2, p0, Lcom/adview/adapters/AdViewAdapter;->ration:Lcom/adview/obj/Ration;

    .line 27
    return-void
.end method

.method private static getAdapter(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 31
    :try_start_0
    iget v1, p1, Lcom/adview/obj/Ration;->type:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :pswitch_0
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 33
    :pswitch_1
    const-string v1, "com.google.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "com.adview.adapters.AdMobAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    const-string v1, "com.adview.adapters.MillennialAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v1, "com.wooboo.adlib_android.WoobooAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "com.adview.adapters.WoobooAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 57
    :pswitch_4
    const-string v1, "net.youmi.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    const-string v1, "com.adview.adapters.YoumiAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v1, "com.casee.adsdk.CaseeAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 65
    const-string v1, "com.adview.adapters.CaseeAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 71
    :pswitch_6
    const-string v1, "com.wiyun.ad.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 72
    const-string v1, "com.adview.adapters.WiyunAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_5
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 78
    :pswitch_7
    const-string v1, "com.adchina.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 79
    const-string v1, "com.adview.adapters.AdChinaAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 82
    :cond_6
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 85
    :pswitch_8
    const-string v1, "com.adview.ad.KyAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 86
    const-string v1, "com.adview.adapters.AdViewHouseAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 89
    :cond_7
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 92
    :pswitch_9
    const-string v1, "cn.domob.android.ads.DomobAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 93
    const-string v1, "com.adview.adapters.DomobAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 96
    :cond_8
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 99
    :pswitch_a
    const-string v1, "com.madhouse.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 100
    const-string v1, "com.adview.adapters.SmartAdAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 103
    :cond_9
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 106
    :pswitch_b
    const-string v1, "com.vpon.adon.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 107
    const-string v1, "com.adview.adapters.VponAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 110
    :cond_a
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 113
    :pswitch_c
    const-string v1, "com.energysource.szj.embeded.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 114
    const-string v1, "com.adview.adapters.AdTouchAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 117
    :cond_b
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 120
    :pswitch_d
    const-string v1, "com.adwo.adsdk.AdwoAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 121
    const-string v1, "com.adview.adapters.AdwoAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 124
    :cond_c
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 127
    :pswitch_e
    const-string v1, "com.mt.airad.AirAD"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 128
    const-string v1, "com.adview.adapters.AirAdAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 131
    :cond_d
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 134
    :pswitch_f
    const-string v1, "com.wqmobile.sdk.widget.ADView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 135
    const-string v1, "com.adview.adapters.WqAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 138
    :cond_e
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 141
    :pswitch_10
    const-string v1, "cn.appmedia.ad.BannerAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 142
    const-string v1, "com.adview.adapters.AppMediaAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 145
    :cond_f
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 148
    :pswitch_11
    const-string v1, "com.ignitevision.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 149
    const-string v1, "com.adview.adapters.TinmooAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 152
    :cond_10
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, "e":Ljava/lang/VerifyError;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_11

    .line 163
    const-string v1, "AdView"

    const-string v2, "YYY - Caught VerifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_11
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 8
    .param p0, "networkAdapter"    # Ljava/lang/String;
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 173
    .local v1, "adViewAdapter":Lcom/adview/adapters/AdViewAdapter;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 175
    .local v2, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/adview/adapters/AdViewAdapter;>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    .line 176
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Lcom/adview/AdViewLayout;

    aput-object v7, v5, v6

    .line 177
    const/4 v6, 0x1

    const-class v7, Lcom/adview/obj/Ration;

    aput-object v7, v5, v6

    .line 179
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 181
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/adview/adapters/AdViewAdapter;>;"
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 182
    .local v3, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 183
    const/4 v6, 0x1

    aput-object p2, v3, v6

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/adview/adapters/AdViewAdapter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/adview/adapters/AdViewAdapter;>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/adview/adapters/AdViewAdapter;>;"
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v6

    goto :goto_0

    .line 191
    :catch_1
    move-exception v6

    goto :goto_0

    .line 190
    :catch_2
    move-exception v6

    goto :goto_0

    .line 189
    :catch_3
    move-exception v6

    goto :goto_0

    .line 188
    :catch_4
    move-exception v6

    goto :goto_0

    .line 187
    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method public static handle(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 204
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getAdapter(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v0

    .line 205
    .local v0, "adapter":Lcom/adview/adapters/AdViewAdapter;
    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v1

    sget-object v2, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v1, v2, :cond_0

    .line 207
    const-string v1, "AdView SDK"

    const-string v2, "Valid adapter, calling handle()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/adview/adapters/AdViewAdapter;->handle()V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 212
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rotateThreadedNow()V

    goto :goto_0
.end method

.method private static unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 198
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 199
    const-string v0, "AdView SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/adview/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract handle()V
.end method
