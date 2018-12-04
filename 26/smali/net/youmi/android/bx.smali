.class Lnet/youmi/android/bx;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lnet/youmi/android/cr;

.field private b:Lnet/youmi/android/ek;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bx;->d:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lnet/youmi/android/bx;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/youmi/android/bx;->c()V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bx;->a:Lnet/youmi/android/cr;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/youmi/android/ek;

    invoke-direct {v0, p0}, Lnet/youmi/android/ek;-><init>(Lnet/youmi/android/bx;)V

    iput-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;

    iget-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/youmi/android/cr;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/youmi/android/bx;->a:Lnet/youmi/android/cr;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/ek;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;

    invoke-virtual {v0}, Lnet/youmi/android/ek;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/bx;->b:Lnet/youmi/android/ek;
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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/bx;->d:Z

    invoke-direct {p0}, Lnet/youmi/android/bx;->c()V

    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bx;->c:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lnet/youmi/android/bx;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/youmi/android/bx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lnet/youmi/android/bx;->c:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/cr;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/cr;->c()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lnet/youmi/android/bx;->a:Lnet/youmi/android/cr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/bx;->d:Z

    invoke-direct {p0}, Lnet/youmi/android/bx;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    :try_start_0
    invoke-direct {p0}, Lnet/youmi/android/bx;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/bx;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/youmi/android/bx;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnet/youmi/android/bx;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
