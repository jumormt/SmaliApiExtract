.class Lnet/youmi/android/cl;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lnet/youmi/android/aw;


# direct methods
.method constructor <init>(Lnet/youmi/android/aw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v0, v0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lnet/youmi/android/be;->f(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v0, v0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lnet/youmi/android/be;->d(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v0, v0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0, p2}, Lnet/youmi/android/be;->e(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v1, v1, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v4

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_3
    :try_start_4
    new-instance v0, Lnet/youmi/android/i;

    iget-object v1, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v1, v1, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v3, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v3, v3, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/youmi/android/cl;->a:Lnet/youmi/android/aw;

    iget-object v3, v3, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-virtual {v3}, Lnet/youmi/android/cu;->f()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lnet/youmi/android/i;-><init>(Landroid/content/Context;Lnet/youmi/android/eb;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_0
.end method
