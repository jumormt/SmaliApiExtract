.class Lnet/youmi/android/ea;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lnet/youmi/android/bb;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/view/animation/Animation;

.field e:Landroid/view/animation/Animation;

.field final synthetic f:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;Z)V
    .locals 4

    const/16 v2, 0x8

    iput-object p1, p0, Lnet/youmi/android/ea;->f:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ea;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lnet/youmi/android/ea;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/ea;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;)I

    move-result v0

    invoke-static {p1}, Lnet/youmi/android/cx;->b(Lnet/youmi/android/cx;)I

    move-result v1

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/af;->b()I

    move-result v0

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/af;->b()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lnet/youmi/android/ea;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/ea;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lnet/youmi/android/ea;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_0

    invoke-static {p3}, Lnet/youmi/android/aj;->c(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ea;->d:Landroid/view/animation/Animation;

    invoke-static {p3}, Lnet/youmi/android/aj;->d(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ea;->e:Landroid/view/animation/Animation;

    :goto_1
    return-void

    :cond_0
    invoke-static {p3}, Lnet/youmi/android/aj;->a(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ea;->d:Landroid/view/animation/Animation;

    invoke-static {p3}, Lnet/youmi/android/aj;->b(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ea;->e:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/ea;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/ea;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/cu;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/cu;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/youmi/android/ea;->e()Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lnet/youmi/android/cu;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ea;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v0, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/ea;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lnet/youmi/android/ea;->e()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lnet/youmi/android/ea;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/ea;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method e()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/ea;->c:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ea;->b:Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ea;->a:Landroid/widget/ImageView;

    goto :goto_0
.end method
