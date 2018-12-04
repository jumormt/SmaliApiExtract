.class Lcom/gfan/sdk/statistics/CommentActivity$2;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gfan/sdk/statistics/CommentActivity;->newContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gfan/sdk/statistics/CommentActivity;

.field private final synthetic val$inputComment:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/gfan/sdk/statistics/CommentActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    iput-object p2, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->val$inputComment:Landroid/widget/EditText;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gfan/sdk/statistics/CommentActivity$2;)Lcom/gfan/sdk/statistics/CommentActivity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->val$inputComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "comment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-static {v1}, Lcom/gfan/sdk/statistics/CommentActivity;->access$2(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    iget-object v1, p0, Lcom/gfan/sdk/statistics/CommentActivity$2;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    .line 74
    new-instance v2, Lcom/gfan/sdk/statistics/CommentActivity$2$1;

    invoke-direct {v2, p0}, Lcom/gfan/sdk/statistics/CommentActivity$2$1;-><init>(Lcom/gfan/sdk/statistics/CommentActivity$2;)V

    .line 73
    invoke-static {v1, v0, v2}, Lcom/gfan/sdk/statistics/Collector;->comment(Landroid/content/Context;Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    goto :goto_0
.end method
