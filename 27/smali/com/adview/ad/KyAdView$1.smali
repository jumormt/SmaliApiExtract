.class Lcom/adview/ad/KyAdView$1;
.super Landroid/os/Handler;
.source "KyAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/ad/KyAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adview/ad/KyAdView;


# direct methods
.method constructor <init>(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    .line 532
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 570
    return-void

    .line 537
    :pswitch_0
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adview/ad/RetAdBean;->getAdShowText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-interface {v0, v1}, Lcom/adview/ad/KyAdView$onAdListener;->onReceivedAd(Lcom/adview/ad/KyAdView;)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-interface {v0, v1}, Lcom/adview/ad/KyAdView$onAdListener;->onReceivedAd(Lcom/adview/ad/KyAdView;)V

    .line 545
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v0, v0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adview/ad/RetAdBean;->getAdShowText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$2(Lcom/adview/ad/KyAdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v0, v0, Lcom/adview/ad/KyAdView;->adImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$2(Lcom/adview/ad/KyAdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-virtual {v0}, Lcom/adview/ad/KyAdView;->startLayoutAnimation()V

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-interface {v0, v1}, Lcom/adview/ad/KyAdView$onAdListener;->onReceivedAd(Lcom/adview/ad/KyAdView;)V

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adview/ad/KyAdView$1;->this$0:Lcom/adview/ad/KyAdView;

    invoke-interface {v0, v1}, Lcom/adview/ad/KyAdView$onAdListener;->onReceivedAd(Lcom/adview/ad/KyAdView;)V

    goto/16 :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
