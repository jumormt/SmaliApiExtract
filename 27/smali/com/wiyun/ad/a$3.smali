.class Lcom/wiyun/ad/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/a;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/a$3;->a:Lcom/wiyun/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/a$3;->a:Lcom/wiyun/ad/a;

    invoke-static {v0}, Lcom/wiyun/ad/a;->b(Lcom/wiyun/ad/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
