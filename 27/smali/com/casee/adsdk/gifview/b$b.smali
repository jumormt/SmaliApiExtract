.class Lcom/casee/adsdk/gifview/b$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/gifview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/casee/adsdk/gifview/b;


# direct methods
.method private constructor <init>(Lcom/casee/adsdk/gifview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/casee/adsdk/gifview/b;Lcom/casee/adsdk/gifview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/casee/adsdk/gifview/b$b;-><init>(Lcom/casee/adsdk/gifview/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v0}, Lcom/casee/adsdk/gifview/b;->a(Lcom/casee/adsdk/gifview/b;)Lcom/casee/adsdk/gifview/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v0}, Lcom/casee/adsdk/gifview/b;->a(Lcom/casee/adsdk/gifview/b;)Lcom/casee/adsdk/gifview/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->d()V

    :goto_0
    iget-object v0, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v0}, Lcom/casee/adsdk/gifview/b;->b(Lcom/casee/adsdk/gifview/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v0}, Lcom/casee/adsdk/gifview/b;->c(Lcom/casee/adsdk/gifview/b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v0}, Lcom/casee/adsdk/gifview/b;->a(Lcom/casee/adsdk/gifview/b;)Lcom/casee/adsdk/gifview/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->e()Lcom/casee/adsdk/gifview/c;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    iget-object v2, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/casee/adsdk/gifview/b;->a(Lcom/casee/adsdk/gifview/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/casee/adsdk/gifview/c;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v2}, Lcom/casee/adsdk/gifview/b;->d(Lcom/casee/adsdk/gifview/b;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v2}, Lcom/casee/adsdk/gifview/b;->d(Lcom/casee/adsdk/gifview/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/casee/adsdk/gifview/b$b;->a:Lcom/casee/adsdk/gifview/b;

    invoke-static {v3}, Lcom/casee/adsdk/gifview/b;->d(Lcom/casee/adsdk/gifview/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
