.class Lnet/youmi/android/er;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/at;


# direct methods
.method constructor <init>(Lnet/youmi/android/at;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    invoke-static {v0}, Lnet/youmi/android/at;->a(Lnet/youmi/android/at;)Lnet/youmi/android/ct;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ct;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    iget-object v0, v0, Lnet/youmi/android/at;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    iget-object v1, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    iget-object v1, v1, Lnet/youmi/android/at;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lnet/youmi/android/at;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/er;->a:Lnet/youmi/android/at;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/at;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
