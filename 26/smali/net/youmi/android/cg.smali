.class Lnet/youmi/android/cg;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lnet/youmi/android/aw;


# direct methods
.method constructor <init>(Lnet/youmi/android/aw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cg;->a:Lnet/youmi/android/aw;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lnet/youmi/android/cg;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0, p2}, Lnet/youmi/android/aw;->a(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cg;->a:Lnet/youmi/android/aw;

    iget-object v0, v0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cg;->a:Lnet/youmi/android/aw;

    iget-object v0, v0, Lnet/youmi/android/aw;->b:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
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
