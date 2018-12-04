.class Lcom/gfan/sdk/statistics/CommentActivity$2$1;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Lcom/gfan/sdk/statistics/Collector$IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/CommentActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;


# direct methods
.method constructor <init>(Lcom/gfan/sdk/statistics/CommentActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u5931\u8d25"

    .line 89
    const/4 v2, 0x0

    .line 88
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->access$2(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method

.method public onSuccess(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->access$2(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u6210\u529f"

    .line 80
    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    .line 82
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/gfan/sdk/statistics/CommentActivity;->setResult(I)V

    .line 83
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2$1;->this$1:Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-static {v0}, Lcom/gfan/sdk/statistics/CommentActivity$2;->access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->finish()V

    .line 84
    return-void
.end method
