.class Lcom/wiyun/ad/a$b$2;
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

    iput-object p1, p0, Lcom/wiyun/ad/a$b$2;->a:Lcom/wiyun/ad/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/wiyun/ad/a$b$2;->a:Lcom/wiyun/ad/a$b;

    invoke-static {v0}, Lcom/wiyun/ad/a$b;->c(Lcom/wiyun/ad/a$b;)Lcom/wiyun/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no_sd_card"

    invoke-static {v1}, Lcom/wiyun/ad/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
