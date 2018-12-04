.class Lnet/youmi/android/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/aw;


# direct methods
.method constructor <init>(Lnet/youmi/android/aw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cj;->a:Lnet/youmi/android/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    new-instance v0, Lnet/youmi/android/i;

    iget-object v1, p0, Lnet/youmi/android/cj;->a:Lnet/youmi/android/aw;

    iget-object v1, v1, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cj;->a:Lnet/youmi/android/aw;

    iget-object v3, p0, Lnet/youmi/android/cj;->a:Lnet/youmi/android/aw;

    iget-object v3, v3, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/youmi/android/cj;->a:Lnet/youmi/android/aw;

    iget-object v3, v3, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-virtual {v3}, Lnet/youmi/android/cu;->f()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/i;-><init>(Landroid/content/Context;Lnet/youmi/android/eb;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
