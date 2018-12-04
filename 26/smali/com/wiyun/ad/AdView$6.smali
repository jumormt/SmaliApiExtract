.class Lcom/wiyun/ad/AdView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->c(Lcom/wiyun/ad/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;

.field private final synthetic b:Lcom/wiyun/ad/a;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$6;->b:Lcom/wiyun/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->clearAnimation()V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/AdView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->b(Lcom/wiyun/ad/AdView;)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->a()Lcom/wiyun/ad/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/i;->a()V

    :cond_0
    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$6;->b:Lcom/wiyun/ad/a;

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$6;->a:Lcom/wiyun/ad/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
