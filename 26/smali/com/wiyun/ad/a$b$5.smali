.class Lcom/wiyun/ad/a$b$5;
.super Ljava/lang/Thread;


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

    iput-object p1, p0, Lcom/wiyun/ad/a$b$5;->a:Lcom/wiyun/ad/a$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/wiyun/ad/a$b$5;->a:Lcom/wiyun/ad/a$b;

    invoke-static {v0}, Lcom/wiyun/ad/a$b;->c(Lcom/wiyun/ad/a$b;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/a$b$5;->a:Lcom/wiyun/ad/a$b;

    invoke-static {v1}, Lcom/wiyun/ad/a$b;->c(Lcom/wiyun/ad/a$b;)Lcom/wiyun/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/a;->a(Lcom/wiyun/ad/a;)Lcom/wiyun/ad/i;

    move-result-object v1

    const-string v2, "download_complete"

    invoke-static {v0, v1, v2}, Lcom/wiyun/ad/b;->a(Landroid/content/Context;Lcom/wiyun/ad/i;Ljava/lang/String;)V

    return-void
.end method
