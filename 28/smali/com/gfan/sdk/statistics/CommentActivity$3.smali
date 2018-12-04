.class Lcom/gfan/sdk/statistics/CommentActivity$3;
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


# direct methods
.method constructor <init>(Lcom/gfan/sdk/statistics/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gfan/sdk/statistics/CommentActivity$3;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$3;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gfan/sdk/statistics/CommentActivity;->setResult(I)V

    .line 107
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity$3;->this$0:Lcom/gfan/sdk/statistics/CommentActivity;

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/CommentActivity;->finish()V

    .line 108
    return-void
.end method
