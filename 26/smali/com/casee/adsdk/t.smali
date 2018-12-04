.class Lcom/casee/adsdk/t;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/i;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/i$a;->cancel()V

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0, v2}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;Lcom/casee/adsdk/i$a;)Lcom/casee/adsdk/i$a;

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/casee/adsdk/e;->a:Z

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/casee/adsdk/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->b(Lcom/casee/adsdk/i;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->b(Lcom/casee/adsdk/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->c(Lcom/casee/adsdk/i;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0, v2}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/casee/adsdk/t;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->d(Lcom/casee/adsdk/i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
