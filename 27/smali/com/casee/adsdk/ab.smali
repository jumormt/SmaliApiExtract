.class Lcom/casee/adsdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/e;

.field final synthetic b:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/ab;->b:Lcom/casee/adsdk/CaseeAdView;

    iput-object p2, p0, Lcom/casee/adsdk/ab;->a:Lcom/casee/adsdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/ab;->b:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/CaseeAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/casee/adsdk/c;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/c;-><init>(Lcom/casee/adsdk/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
