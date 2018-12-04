.class Lcom/wiyun/ad/a$b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/a$b;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/a$b$4;->a:Lcom/wiyun/ad/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/a$b$4;->a:Lcom/wiyun/ad/a$b;

    invoke-static {v0}, Lcom/wiyun/ad/a$b;->c(Lcom/wiyun/ad/a$b;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/wiyun/ad/AdView;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->a()V

    return-void
.end method
