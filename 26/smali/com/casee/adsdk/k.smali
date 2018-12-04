.class Lcom/casee/adsdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/casee/adsdk/i;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/k;->b:Lcom/casee/adsdk/i;

    iput-object p2, p0, Lcom/casee/adsdk/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/k;->b:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
