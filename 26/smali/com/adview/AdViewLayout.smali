.class public Lcom/adview/AdViewLayout;
.super Landroid/widget/RelativeLayout;
.source "AdViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adview/AdViewLayout$HandleAdRunnable;,
        Lcom/adview/AdViewLayout$InitRunnable;,
        Lcom/adview/AdViewLayout$PingUrlRunnable;,
        Lcom/adview/AdViewLayout$RotateAdRunnable;,
        Lcom/adview/AdViewLayout$RotatePriAdRunnable;,
        Lcom/adview/AdViewLayout$ViewAdRunnable;
    }
.end annotation


# instance fields
.field public activeRation:Lcom/adview/obj/Ration;

.field public final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adViewInterface:Lcom/adview/AdViewInterface;

.field public adViewManager:Lcom/adview/AdViewManager;

.field public channel:Ljava/lang/String;

.field public extra:Lcom/adview/obj/Extra;

.field public final handler:Landroid/os/Handler;

.field private hasWindow:Z

.field private isScheduled:Z

.field private keyAdView:Ljava/lang/String;

.field public keyDev:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field public netType:Ljava/lang/String;

.field public nextRation:Lcom/adview/obj/Ration;

.field public osVer:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public servicePro:Ljava/lang/String;

.field public superViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public typeDev:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyAdView"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/lang/String;

    const-string v1, "000000000000000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->keyDev:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/String;

    const-string v1, "SDK"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->typeDev:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/String;

    const-string v1, "2.1-update1"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->osVer:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, "320*480"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->resolution:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string v1, "46000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->servicePro:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/String;

    const-string v1, "2G/3G"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->netType:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/String;

    const-string v1, "unknown"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->channel:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->platform:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    .line 80
    iput-object p2, p0, Lcom/adview/AdViewLayout;->keyAdView:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    .line 86
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    iput-boolean v2, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 88
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$InitRunnable;

    invoke-direct {v1, p0, p2}, Lcom/adview/AdViewLayout$InitRunnable;-><init>(Lcom/adview/AdViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 90
    invoke-virtual {p0, v5}, Lcom/adview/AdViewLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/adview/AdViewLayout;->setVerticalScrollBarEnabled(Z)V

    .line 92
    invoke-direct {p0, p1}, Lcom/adview/AdViewLayout;->getAppInfo(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->appReport()V

    .line 94
    iput v5, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    .line 95
    iput v5, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/adview/AdViewLayout;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adview/AdViewLayout;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adview/AdViewLayout;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->rotateAd()V

    return-void
.end method

.method static synthetic access$3(Lcom/adview/AdViewLayout;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->handleAd()V

    return-void
.end method

.method static synthetic access$4(Lcom/adview/AdViewLayout;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->rotatePriAd()V

    return-void
.end method

.method private countClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v1, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/adview/util/AdViewUtil;->urlClick:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v3, v3, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget v4, v4, Lcom/adview/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "hello"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adview/AdViewLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adview/AdViewLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 233
    iget-object v1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewInterface;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewInterface;

    invoke-interface {v1}, Lcom/adview/AdViewInterface;->onClickAd()V

    .line 236
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private countImpression()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v1, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/adview/util/AdViewUtil;->urlImpression:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v3, v3, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget v4, v4, Lcom/adview/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "hello"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adview/AdViewLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adview/AdViewLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 223
    iget-object v1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewInterface;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewInterface;

    invoke-interface {v1}, Lcom/adview/AdViewInterface;->onDisplayAd()V

    .line 226
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAppInfo(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v9, " "

    const-string v8, ""

    .line 248
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 252
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz p1, :cond_0

    .line 254
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->keyDev:Ljava/lang/String;

    .line 255
    new-instance v6, Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->typeDev:Ljava/lang/String;

    .line 256
    iget-object v6, p0, Lcom/adview/AdViewLayout;->typeDev:Ljava/lang/String;

    const-string v7, " "

    const-string v7, ""

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adview/AdViewLayout;->typeDev:Ljava/lang/String;

    .line 257
    new-instance v6, Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->osVer:Ljava/lang/String;

    .line 258
    iget-object v6, p0, Lcom/adview/AdViewLayout;->osVer:Ljava/lang/String;

    const-string v7, " "

    const-string v7, ""

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adview/AdViewLayout;->osVer:Ljava/lang/String;

    .line 259
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 260
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 263
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 264
    .local v3, "screenWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 265
    .local v2, "screenHeight":I
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->resolution:Ljava/lang/String;

    .line 266
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 267
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->servicePro:Ljava/lang/String;

    .line 270
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 271
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 276
    new-instance v6, Ljava/lang/String;

    const-string v7, "2G/3G"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->netType:Ljava/lang/String;

    .line 279
    :goto_1
    invoke-static {}, Lcom/adview/AdViewTargeting;->getChannel()Lcom/adview/AdViewTargeting$Channel;

    move-result-object v0

    .line 280
    .local v0, "cha":Lcom/adview/AdViewTargeting$Channel;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adview/AdViewTargeting$Channel;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->channel:Ljava/lang/String;

    goto/16 :goto_0

    .line 273
    .end local v0    # "cha":Lcom/adview/AdViewTargeting$Channel;
    :pswitch_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "Wi-Fi"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/adview/AdViewLayout;->netType:Ljava/lang/String;

    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleAd()V
    .locals 7

    .prologue
    const-string v6, "AdView SDK"

    .line 159
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    if-nez v2, :cond_1

    .line 160
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_0

    .line 161
    const-string v2, "AdView SDK"

    const-string v2, "nextRation is null!"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 179
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v2, "Showing ad:\nname: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    iget-object v5, v5, Lcom/adview/obj/Ration;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "rationInfo":Ljava/lang/String;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_2

    .line 168
    const-string v2, "AdView SDK"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    invoke-static {p0, v2}, Lcom/adview/adapters/AdViewAdapter;->handle(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 174
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_3

    .line 175
    const-string v2, "AdView SDK"

    const-string v2, "Caught an exception in adapter:"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rollover()V

    goto :goto_0
.end method

.method private rotateAd()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_1

    .line 140
    const-string v0, "AdView SDK"

    const-string v1, "Rotating Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRation()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 143
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private rotatePriAd()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_1

    .line 151
    const-string v0, "AdView SDK"

    const-string v1, "Rotating Pri Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRollover_pri()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 153
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public appReport()V
    .locals 6

    .prologue
    .line 240
    sget-object v1, Lcom/adview/util/AdViewUtil;->appReport:Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adview/AdViewLayout;->keyDev:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adview/AdViewLayout;->typeDev:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adview/AdViewLayout;->osVer:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adview/AdViewLayout;->resolution:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/adview/AdViewLayout;->servicePro:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adview/AdViewLayout;->netType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/adview/AdViewLayout;->channel:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/adview/AdViewLayout;->platform:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adview/AdViewLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adview/AdViewLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 246
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 287
    :pswitch_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_1

    .line 288
    const-string v0, "AdView SDK"

    const-string v1, "Intercepted ACTION_DOWN event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->countClick()V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 101
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 103
    .local v0, "heightSize":I
    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    if-le v1, v2, :cond_0

    .line 104
    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 107
    :cond_0
    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    if-le v0, v2, :cond_1

    .line 108
    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 111
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 112
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 116
    if-nez p1, :cond_2

    .line 117
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    .line 118
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    if-nez v0, :cond_0

    .line 119
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 121
    iget-object v0, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rotateThreadedNow()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$InitRunnable;

    iget-object v2, p0, Lcom/adview/AdViewLayout;->keyAdView:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/adview/AdViewLayout$InitRunnable;-><init>(Lcom/adview/AdViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    goto :goto_0
.end method

.method public pushSubView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "subView"    # Landroid/view/ViewGroup;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/adview/AdViewLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 199
    .local v1, "superView":Landroid/widget/RelativeLayout;
    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 203
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_1

    .line 207
    const-string v2, "AdView SDK"

    const-string v3, "Added subview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    iput-object v2, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    .line 210
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->countImpression()V

    goto :goto_0
.end method

.method public rollover()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRollover()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 215
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public rotateThreadedDelayed()V
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v0, v1, :cond_0

    .line 192
    const-string v0, "AdView SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will call rotateAd() in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    iget v2, v2, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$RotateAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    iget-object v2, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    iget v2, v2, Lcom/adview/obj/Extra;->cycleTime:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 194
    return-void
.end method

.method public rotateThreadedNow()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$RotateAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 184
    return-void
.end method

.method public rotateThreadedPri()V
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$RotatePriAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$RotatePriAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 187
    return-void
.end method

.method public setAdViewInterface(Lcom/adview/AdViewInterface;)V
    .locals 0
    .param p1, "adViewInterface"    # Lcom/adview/AdViewInterface;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewInterface;

    .line 305
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    return-void
.end method
