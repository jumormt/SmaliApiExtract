.class Lcom/casee/adsdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/e;

.field final synthetic b:Lcom/casee/adsdk/e;

.field final synthetic c:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/ad;->c:Lcom/casee/adsdk/CaseeAdView;

    iput-object p2, p0, Lcom/casee/adsdk/ad;->a:Lcom/casee/adsdk/e;

    iput-object p3, p0, Lcom/casee/adsdk/ad;->b:Lcom/casee/adsdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/ad;->c:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Lcom/casee/adsdk/h;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/h;-><init>(Lcom/casee/adsdk/ad;)V

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->post(Ljava/lang/Runnable;)Z

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
