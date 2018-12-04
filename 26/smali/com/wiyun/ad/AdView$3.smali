.class Lcom/wiyun/ad/AdView$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$3;->a:Lcom/wiyun/ad/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView$3;)Lcom/wiyun/ad/AdView;
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/AdView$3;->a:Lcom/wiyun/ad/AdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wiyun/ad/AdView$3;->a:Lcom/wiyun/ad/AdView;

    new-instance v1, Lcom/wiyun/ad/AdView$3$1;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/AdView$3$1;-><init>(Lcom/wiyun/ad/AdView$3;)V

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/AdView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
