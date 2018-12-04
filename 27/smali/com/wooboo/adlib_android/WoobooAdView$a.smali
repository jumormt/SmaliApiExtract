.class final Lcom/wooboo/adlib_android/WoobooAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooboo/adlib_android/WoobooAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/wooboo/adlib_android/WoobooAdView;

.field private b:Lcom/wooboo/adlib_android/a;

.field private c:Lcom/wooboo/adlib_android/a;


# direct methods
.method public constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->b:Lcom/wooboo/adlib_android/a;

    return-void
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    return-object v0
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/WoobooAdView$a;Lcom/wooboo/adlib_android/a;)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    return-void
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/WoobooAdView$a;)Lcom/wooboo/adlib_android/a;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->b:Lcom/wooboo/adlib_android/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    .line 438
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->c:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->e()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->b:Lcom/wooboo/adlib_android/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/a;->setVisibility(I)V

    .line 443
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 444
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 446
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$a$1;

    invoke-direct {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView$a$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 464
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$a;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    return-void
.end method
