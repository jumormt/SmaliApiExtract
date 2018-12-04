.class Lcom/wiyun/ad/g;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wiyun/ad/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/l;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/l;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v1}, Lcom/wiyun/ad/l;->a(Lcom/wiyun/ad/l;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v1, v0}, Lcom/wiyun/ad/l;->a(Lcom/wiyun/ad/l;Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v0}, Lcom/wiyun/ad/l;->b(Lcom/wiyun/ad/l;)Lcom/wiyun/ad/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v0}, Lcom/wiyun/ad/l;->b(Lcom/wiyun/ad/l;)Lcom/wiyun/ad/l$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wiyun/ad/l$a;->a()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v0}, Lcom/wiyun/ad/l;->b(Lcom/wiyun/ad/l;)Lcom/wiyun/ad/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/g;->a:Lcom/wiyun/ad/l;

    invoke-static {v0}, Lcom/wiyun/ad/l;->b(Lcom/wiyun/ad/l;)Lcom/wiyun/ad/l$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wiyun/ad/l$a;->b()V

    goto :goto_1
.end method
