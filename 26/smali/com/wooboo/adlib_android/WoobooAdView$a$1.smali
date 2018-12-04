.class final Lcom/wooboo/adlib_android/WoobooAdView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/WoobooAdView$a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$a;->a(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$a;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$a;->a(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->removeView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView$a;->a(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->c()V

    .line 455
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView$a;->a(Lcom/wooboo/adlib_android/WoobooAdView$a;Lcom/wooboo/adlib_android/a;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$a;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$a$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$a;

    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$a;->b(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V

    .line 458
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method
