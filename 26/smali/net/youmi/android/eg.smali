.class Lnet/youmi/android/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cb;


# direct methods
.method constructor <init>(Lnet/youmi/android/cb;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/eg;->a:Lnet/youmi/android/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lnet/youmi/android/bc;->g()Lnet/youmi/android/ed;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/eg;->a:Lnet/youmi/android/cb;

    iget-object v1, v1, Lnet/youmi/android/cb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/eg;->a:Lnet/youmi/android/cb;

    iget-object v0, v0, Lnet/youmi/android/cb;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;

    move-result-object v0

    iget-object v2, p0, Lnet/youmi/android/eg;->a:Lnet/youmi/android/cb;

    iget-object v2, v2, Lnet/youmi/android/cb;->b:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/eg;->a:Lnet/youmi/android/cb;

    iget-object v1, v1, Lnet/youmi/android/cb;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lnet/youmi/android/be;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
