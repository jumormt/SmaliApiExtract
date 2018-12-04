.class Lcom/wiyun/ad/AdView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView$3;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$3$1;->a:Lcom/wiyun/ad/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/AdView$3$1;->a:Lcom/wiyun/ad/AdView$3;

    invoke-static {v0}, Lcom/wiyun/ad/AdView$3;->a(Lcom/wiyun/ad/AdView$3;)Lcom/wiyun/ad/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/AdView;->requestAd()V

    return-void
.end method
