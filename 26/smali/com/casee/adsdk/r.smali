.class Lcom/casee/adsdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/x;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v0, v0, Lcom/casee/adsdk/x;->a:Lcom/casee/adsdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v0, v0, Lcom/casee/adsdk/x;->a:Lcom/casee/adsdk/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v0, v0, Lcom/casee/adsdk/x;->d:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v1, v1, Lcom/casee/adsdk/x;->a:Lcom/casee/adsdk/e;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v0, v0, Lcom/casee/adsdk/x;->d:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v1, v1, Lcom/casee/adsdk/x;->a:Lcom/casee/adsdk/e;

    iget-object v2, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget-object v2, v2, Lcom/casee/adsdk/x;->b:Lcom/casee/adsdk/e;

    iget-object v3, p0, Lcom/casee/adsdk/r;->a:Lcom/casee/adsdk/x;

    iget v3, v3, Lcom/casee/adsdk/x;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    return-void
.end method
