.class Lcom/casee/adsdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/CaseeAdView$a;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/casee/adsdk/e;

    iget-object v1, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v1}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v2}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v2

    iget-object v3, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-direct {v0, v1, v2, v3}, Lcom/casee/adsdk/e;-><init>(Landroid/content/Context;Lcom/casee/adsdk/o;Lcom/casee/adsdk/CaseeAdView;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1}, Lcom/casee/adsdk/CaseeAdView;->j(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/e;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v2, v0}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;)Lcom/casee/adsdk/e;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v3}, Lcom/casee/adsdk/CaseeAdView;->k(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v3

    iget-object v4, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v4, v4, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v4}, Lcom/casee/adsdk/CaseeAdView;->l(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v3, v0, v2}, Lcom/casee/adsdk/CaseeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/casee/adsdk/u;->a:Lcom/casee/adsdk/CaseeAdView$a;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v2, v1, v0}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method
