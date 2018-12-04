.class Lnet/youmi/android/ag;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/bb;


# instance fields
.field a:Lnet/youmi/android/ca;

.field b:Landroid/app/Activity;

.field c:I

.field d:Lnet/youmi/android/dg;

.field e:Lnet/youmi/android/ea;

.field final synthetic f:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;II)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ag;->f:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    iput-object p2, p0, Lnet/youmi/android/ag;->b:Landroid/app/Activity;

    iput p5, p0, Lnet/youmi/android/ag;->c:I

    invoke-direct {p0, p2, p4}, Lnet/youmi/android/ag;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 9

    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/dg;

    iget-object v1, p0, Lnet/youmi/android/ag;->f:Lnet/youmi/android/cx;

    iget-object v4, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    iget v5, p0, Lnet/youmi/android/ag;->c:I

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/dg;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V

    iput-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    invoke-virtual {v0, v6}, Lnet/youmi/android/dg;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    if-nez v0, :cond_1

    new-instance v0, Lnet/youmi/android/ea;

    iget-object v1, p0, Lnet/youmi/android/ag;->f:Lnet/youmi/android/cx;

    iget-object v2, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    invoke-direct {v0, v1, p1, v2, v7}, Lnet/youmi/android/ea;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;Z)V

    iput-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {v0, v6}, Lnet/youmi/android/ea;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lnet/youmi/android/ea;->setId(I)V

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lnet/youmi/android/dg;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/af;->b()I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/af;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lnet/youmi/android/ag;->c:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/af;->a()I

    move-result v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v2, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {v2}, Lnet/youmi/android/ea;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {p0, v2, v0}, Lnet/youmi/android/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/ag;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/ag;->startAnimation(Landroid/view/animation/Animation;)V
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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {v0, p1}, Lnet/youmi/android/ea;->a(Lnet/youmi/android/cu;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    invoke-virtual {v0, p1}, Lnet/youmi/android/dg;->a(Lnet/youmi/android/cu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {v0}, Lnet/youmi/android/ea;->b()V

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    invoke-virtual {v0}, Lnet/youmi/android/dg;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/ag;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ag;->e:Lnet/youmi/android/ea;

    invoke-virtual {v0}, Lnet/youmi/android/ea;->d()V

    iget-object v0, p0, Lnet/youmi/android/ag;->d:Lnet/youmi/android/dg;

    invoke-virtual {v0}, Lnet/youmi/android/dg;->d()V

    return-void
.end method
