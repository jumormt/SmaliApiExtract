.class Lcom/wiyun/ad/AdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->a(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;

.field private final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$4;->a:Lcom/wiyun/ad/AdView;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$4;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wiyun/ad/AdView$4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/wiyun/ad/AdView$4;->a:Lcom/wiyun/ad/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->b(Lcom/wiyun/ad/AdView;Z)V

    iget-object v0, p0, Lcom/wiyun/ad/AdView$4;->a:Lcom/wiyun/ad/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Landroid/view/View;)V

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
