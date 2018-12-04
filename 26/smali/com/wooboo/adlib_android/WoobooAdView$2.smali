.class final Lcom/wooboo/adlib_android/WoobooAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooboo/adlib_android/WoobooAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/WoobooAdView;

.field private final synthetic b:Lcom/wooboo/adlib_android/a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->b:Lcom/wooboo/adlib_android/a;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$a;

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v3, p0, Lcom/wooboo/adlib_android/WoobooAdView$2;->b:Lcom/wooboo/adlib_android/a;

    invoke-direct {v1, v2, v3}, Lcom/wooboo/adlib_android/WoobooAdView$a;-><init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
