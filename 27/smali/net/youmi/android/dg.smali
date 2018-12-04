.class Lnet/youmi/android/dg;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lnet/youmi/android/bb;


# instance fields
.field a:Lnet/youmi/android/da;

.field b:Lnet/youmi/android/da;

.field c:Lnet/youmi/android/da;

.field d:Landroid/view/animation/Animation;

.field e:Landroid/view/animation/Animation;

.field f:I

.field final synthetic g:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V
    .locals 8

    const/16 v7, 0x11

    const/16 v6, 0x8

    iput-object p1, p0, Lnet/youmi/android/dg;->g:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p5, p0, Lnet/youmi/android/dg;->f:I

    new-instance v0, Lnet/youmi/android/da;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/da;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V

    iput-object v0, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    iget-object v0, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    invoke-virtual {v0, v7}, Lnet/youmi/android/da;->setGravity(I)V

    new-instance v0, Lnet/youmi/android/da;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/da;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V

    iput-object v0, p0, Lnet/youmi/android/dg;->b:Lnet/youmi/android/da;

    iget-object v0, p0, Lnet/youmi/android/dg;->b:Lnet/youmi/android/da;

    invoke-virtual {v0, v7}, Lnet/youmi/android/da;->setGravity(I)V

    iget-object v0, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    invoke-virtual {v0, v6}, Lnet/youmi/android/da;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/dg;->b:Lnet/youmi/android/da;

    invoke-virtual {v0, v6}, Lnet/youmi/android/da;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0xa

    invoke-virtual {p4, v1}, Lnet/youmi/android/ca;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/dg;->b:Lnet/youmi/android/da;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/dg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Lnet/youmi/android/aj;->a(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dg;->d:Landroid/view/animation/Animation;

    invoke-static {p4}, Lnet/youmi/android/aj;->b(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dg;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/dg;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/dg;->a(Landroid/view/animation/Animation;)V
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

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/dg;->e()Lnet/youmi/android/da;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/youmi/android/da;->a(Lnet/youmi/android/cu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/dg;->e()Lnet/youmi/android/da;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/youmi/android/da;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/da;->setVisibility(I)V

    iput-object v0, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    invoke-virtual {p0}, Lnet/youmi/android/dg;->c()V
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

    invoke-virtual {p0, v0}, Lnet/youmi/android/dg;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lnet/youmi/android/dg;->e()Lnet/youmi/android/da;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    iget-object v2, p0, Lnet/youmi/android/dg;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lnet/youmi/android/da;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/youmi/android/da;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/da;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/dg;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lnet/youmi/android/da;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    goto :goto_0
.end method

.method e()Lnet/youmi/android/da;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    iget-object v1, p0, Lnet/youmi/android/dg;->c:Lnet/youmi/android/da;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dg;->b:Lnet/youmi/android/da;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dg;->a:Lnet/youmi/android/da;

    goto :goto_0
.end method
