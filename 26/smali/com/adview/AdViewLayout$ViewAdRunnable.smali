.class public Lcom/adview/AdViewLayout$ViewAdRunnable;
.super Ljava/lang/Object;
.source "AdViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewAdRunnable"
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

.field private nextView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "nextView"    # Landroid/view/ViewGroup;

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout$ViewAdRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    .line 368
    iput-object p2, p0, Lcom/adview/AdViewLayout$ViewAdRunnable;->nextView:Landroid/view/ViewGroup;

    .line 369
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v1, p0, Lcom/adview/AdViewLayout$ViewAdRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 372
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/adview/AdViewLayout$ViewAdRunnable;->nextView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/adview/AdViewLayout;->pushSubView(Landroid/view/ViewGroup;)V

    .line 375
    :cond_0
    return-void
.end method
