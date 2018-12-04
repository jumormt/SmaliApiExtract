.class Lcom/gfan/sdk/statistics/CommentActivity$1;
.super Landroid/os/Handler;
.source "CommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gfan/sdk/statistics/CommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gfan/sdk/statistics/CommentActivity;


# direct methods
.method constructor <init>(Lcom/gfan/sdk/statistics/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/gfan/sdk/statistics/CommentActivity;->access$0(Lcom/gfan/sdk/statistics/CommentActivity;Landroid/app/ProgressDialog;)V

    .line 126
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->access$1(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->access$1(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->access$1(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$1;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gfan/sdk/statistics/CommentActivity;->access$0(Lcom/gfan/sdk/statistics/CommentActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
