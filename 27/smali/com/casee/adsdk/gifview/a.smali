.class Lcom/casee/adsdk/gifview/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/gifview/b;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/gifview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/gifview/a;->a:Lcom/casee/adsdk/gifview/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/a;->a:Lcom/casee/adsdk/gifview/b;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/b;->invalidate()V

    return-void
.end method
