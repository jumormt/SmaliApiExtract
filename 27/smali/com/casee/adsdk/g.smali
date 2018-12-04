.class Lcom/casee/adsdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/z;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/z;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v0, v0, Lcom/casee/adsdk/z;->a:Lcom/casee/adsdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v0, v0, Lcom/casee/adsdk/z;->a:Lcom/casee/adsdk/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v0, v0, Lcom/casee/adsdk/z;->c:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v1, v1, Lcom/casee/adsdk/z;->a:Lcom/casee/adsdk/e;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v0, v0, Lcom/casee/adsdk/z;->c:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v1, v1, Lcom/casee/adsdk/z;->a:Lcom/casee/adsdk/e;

    iget-object v2, p0, Lcom/casee/adsdk/g;->a:Lcom/casee/adsdk/z;

    iget-object v2, v2, Lcom/casee/adsdk/z;->b:Lcom/casee/adsdk/e;

    invoke-static {v0, v1, v2}, Lcom/casee/adsdk/CaseeAdView;->b(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method
