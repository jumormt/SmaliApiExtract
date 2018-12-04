.class Lcom/casee/adsdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/i;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/j;->a:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/j;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->o(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
