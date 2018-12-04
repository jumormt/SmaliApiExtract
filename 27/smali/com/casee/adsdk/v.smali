.class Lcom/casee/adsdk/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/e;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/v;->a:Lcom/casee/adsdk/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/casee/adsdk/v;->a:Lcom/casee/adsdk/e;

    invoke-static {v0}, Lcom/casee/adsdk/e;->a(Lcom/casee/adsdk/e;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
