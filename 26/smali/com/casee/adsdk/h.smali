.class Lcom/casee/adsdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/ad;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/h;->a:Lcom/casee/adsdk/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/casee/adsdk/h;->a:Lcom/casee/adsdk/ad;

    iget-object v0, v0, Lcom/casee/adsdk/ad;->c:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/h;->a:Lcom/casee/adsdk/ad;

    iget-object v1, v1, Lcom/casee/adsdk/ad;->a:Lcom/casee/adsdk/e;

    iget-object v2, p0, Lcom/casee/adsdk/h;->a:Lcom/casee/adsdk/ad;

    iget-object v2, v2, Lcom/casee/adsdk/ad;->b:Lcom/casee/adsdk/e;

    invoke-static {v0, v1, v2}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method
