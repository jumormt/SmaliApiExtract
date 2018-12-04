.class Lcom/casee/adsdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/i;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/l;->a:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/casee/adsdk/l;->a:Lcom/casee/adsdk/i;

    invoke-static {v0, p1}, Lcom/casee/adsdk/i;->b(Lcom/casee/adsdk/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/casee/adsdk/l;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->k(Lcom/casee/adsdk/i;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/l;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->n(Lcom/casee/adsdk/i;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
