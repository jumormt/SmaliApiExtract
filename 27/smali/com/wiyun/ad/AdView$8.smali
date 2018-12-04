.class Lcom/wiyun/ad/AdView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->b(Lcom/wiyun/ad/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;

.field private final synthetic b:Lcom/wiyun/ad/a;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$8;->a:Lcom/wiyun/ad/AdView;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$8;->b:Lcom/wiyun/ad/a;

    iput p3, p0, Lcom/wiyun/ad/AdView$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lcom/wiyun/ad/AdView$8;->a:Lcom/wiyun/ad/AdView;

    new-instance v1, Lcom/wiyun/ad/AdView$a;

    iget-object v2, p0, Lcom/wiyun/ad/AdView$8;->a:Lcom/wiyun/ad/AdView;

    iget-object v3, p0, Lcom/wiyun/ad/AdView$8;->b:Lcom/wiyun/ad/a;

    iget v4, p0, Lcom/wiyun/ad/AdView$8;->c:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wiyun/ad/AdView$a;-><init>(Lcom/wiyun/ad/AdView;Lcom/wiyun/ad/a;I)V

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/AdView;->post(Ljava/lang/Runnable;)Z

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
