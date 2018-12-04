.class final Lnet/youmi/android/aw;
.super Landroid/webkit/WebView;

# interfaces
.implements Lnet/youmi/android/eb;


# instance fields
.field a:Lnet/youmi/android/d;

.field b:Landroid/app/Activity;

.field c:Lnet/youmi/android/cu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/cu;Lnet/youmi/android/o;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/youmi/android/d;

    invoke-direct {v0, p0, p3}, Lnet/youmi/android/d;-><init>(Lnet/youmi/android/aw;Lnet/youmi/android/o;)V

    iput-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    iput-object p1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-direct {p0}, Lnet/youmi/android/aw;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/o;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/youmi/android/d;

    invoke-direct {v0, p0, p2}, Lnet/youmi/android/d;-><init>(Lnet/youmi/android/aw;Lnet/youmi/android/o;)V

    iput-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    iput-object p1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lnet/youmi/android/aw;->i()V

    return-void
.end method

.method private b(Lnet/youmi/android/em;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/em;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/em;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/youmi/android/aw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lnet/youmi/android/aw;->j()V

    invoke-direct {p0}, Lnet/youmi/android/aw;->k()V

    invoke-direct {p0}, Lnet/youmi/android/aw;->l()V

    invoke-direct {p0}, Lnet/youmi/android/aw;->m()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lnet/youmi/android/aw;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    return-void
.end method

.method private k()V
    .locals 1

    new-instance v0, Lnet/youmi/android/cl;

    invoke-direct {v0, p0}, Lnet/youmi/android/cl;-><init>(Lnet/youmi/android/aw;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private l()V
    .locals 1

    new-instance v0, Lnet/youmi/android/cg;

    invoke-direct {v0, p0}, Lnet/youmi/android/cg;-><init>(Lnet/youmi/android/aw;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private m()V
    .locals 1

    :try_start_0
    new-instance v0, Lnet/youmi/android/cj;

    invoke-direct {v0, p0}, Lnet/youmi/android/cj;-><init>(Lnet/youmi/android/aw;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    invoke-virtual {v0}, Lnet/youmi/android/d;->a()Lnet/youmi/android/em;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/aw;->b(Lnet/youmi/android/em;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    mul-int/lit8 v1, p1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/em;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    invoke-virtual {v0, p1}, Lnet/youmi/android/d;->a(Lnet/youmi/android/em;)Lnet/youmi/android/em;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/aw;->b(Lnet/youmi/android/em;)V

    return-void
.end method

.method public a(Lnet/youmi/android/i;)V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->a(I)V

    :try_start_0
    new-instance v0, Lnet/youmi/android/bw;

    invoke-direct {v0}, Lnet/youmi/android/bw;-><init>()V

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->d(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V

    iget-object v1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/i;Lnet/youmi/android/em;)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/youmi/android/em;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-virtual {v1}, Lnet/youmi/android/cu;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/youmi/android/aw;->c:Lnet/youmi/android/cu;

    invoke-virtual {v3}, Lnet/youmi/android/cu;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/youmi/android/em;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Lnet/youmi/android/aw;->a(Lnet/youmi/android/em;)V

    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    invoke-virtual {v0}, Lnet/youmi/android/d;->c()Lnet/youmi/android/em;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/aw;->b(Lnet/youmi/android/em;)V

    return-void
.end method

.method public b(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->a(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    invoke-virtual {v0}, Lnet/youmi/android/d;->f()Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/aw;->a:Lnet/youmi/android/d;

    invoke-virtual {v0}, Lnet/youmi/android/d;->b()Lnet/youmi/android/em;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/youmi/android/aw;->b(Lnet/youmi/android/em;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->a(I)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->a(I)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u5b58\u50a8\u5361\u4e0d\u53ef\u7528,\u8bf7\u542f\u7528\u5b58\u50a8\u5361"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lnet/youmi/android/aw;->a(I)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
