.class Lcom/wiyun/ad/AdView$2$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView$2;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView$2;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$2$1;->a:Lcom/wiyun/ad/AdView$2;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$2$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$2$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$2$1;->a:Lcom/wiyun/ad/AdView$2;

    invoke-static {v1}, Lcom/wiyun/ad/AdView$2;->a(Lcom/wiyun/ad/AdView$2;)Lcom/wiyun/ad/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/AdView;->e(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wiyun/ad/b;->a(Landroid/content/Context;Lcom/wiyun/ad/i;)V

    return-void
.end method
