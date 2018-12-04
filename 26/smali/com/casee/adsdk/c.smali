.class Lcom/casee/adsdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/ab;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/c;->a:Lcom/casee/adsdk/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/c;->a:Lcom/casee/adsdk/ab;

    iget-object v0, v0, Lcom/casee/adsdk/ab;->a:Lcom/casee/adsdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/c;->a:Lcom/casee/adsdk/ab;

    iget-object v0, v0, Lcom/casee/adsdk/ab;->a:Lcom/casee/adsdk/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/c;->a:Lcom/casee/adsdk/ab;

    iget-object v0, v0, Lcom/casee/adsdk/ab;->b:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/c;->a:Lcom/casee/adsdk/ab;

    iget-object v1, v1, Lcom/casee/adsdk/ab;->a:Lcom/casee/adsdk/e;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
