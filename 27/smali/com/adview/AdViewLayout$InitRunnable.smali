.class Lcom/adview/AdViewLayout$InitRunnable;
.super Ljava/lang/Object;
.source "AdViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitRunnable"
.end annotation


# instance fields
.field private adViewLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adview/AdViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field private keyAdView:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Ljava/lang/String;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "keyAdView"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout$InitRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    .line 313
    iput-object p2, p0, Lcom/adview/AdViewLayout$InitRunnable;->keyAdView:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 317
    iget-object v2, p0, Lcom/adview/AdViewLayout$InitRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 319
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v1, :cond_0

    .line 320
    iget-object v2, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 321
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 345
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    if-nez v2, :cond_2

    .line 327
    new-instance v2, Lcom/adview/AdViewManager;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/adview/AdViewLayout$InitRunnable;->keyAdView:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/adview/AdViewManager;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    .line 330
    :cond_2
    invoke-static {v1}, Lcom/adview/AdViewLayout;->access$0(Lcom/adview/AdViewLayout;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 331
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adview/AdViewLayout;->access$1(Lcom/adview/AdViewLayout;Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v2}, Lcom/adview/AdViewManager;->fetchConfig()V

    .line 336
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v2}, Lcom/adview/AdViewManager;->getExtra()Lcom/adview/obj/Extra;

    move-result-object v2

    iput-object v2, v1, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 338
    iget-object v2, v1, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    if-nez v2, :cond_4

    .line 339
    iget-object v2, v1, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 342
    :cond_4
    invoke-static {v1}, Lcom/adview/AdViewLayout;->access$2(Lcom/adview/AdViewLayout;)V

    goto :goto_0
.end method
