.class Lnet/youmi/android/at;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/bb;


# instance fields
.field a:Lnet/youmi/android/ca;

.field b:I

.field c:Landroid/app/Activity;

.field d:I

.field e:Lnet/youmi/android/dg;

.field final synthetic f:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;II)V
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/at;->f:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/at;->b:I

    iput-object p3, p0, Lnet/youmi/android/at;->a:Lnet/youmi/android/ca;

    iput p4, p0, Lnet/youmi/android/at;->b:I

    iput-object p2, p0, Lnet/youmi/android/at;->c:Landroid/app/Activity;

    iput p5, p0, Lnet/youmi/android/at;->d:I

    invoke-direct {p0}, Lnet/youmi/android/at;->e()V

    return-void
.end method

.method private e()V
    .locals 7

    const/4 v6, -0x2

    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/dg;

    iget-object v1, p0, Lnet/youmi/android/at;->f:Lnet/youmi/android/cx;

    iget-object v2, p0, Lnet/youmi/android/at;->c:Landroid/app/Activity;

    iget v3, p0, Lnet/youmi/android/at;->b:I

    iget-object v4, p0, Lnet/youmi/android/at;->a:Lnet/youmi/android/ca;

    iget v5, p0, Lnet/youmi/android/at;->d:I

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/dg;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V

    iput-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/dg;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lnet/youmi/android/dg;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lnet/youmi/android/at;->a:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/af;->b()I

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/at;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/at;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/at;->startAnimation(Landroid/view/animation/Animation;)V
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
    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    invoke-virtual {v0, p1}, Lnet/youmi/android/dg;->a(Lnet/youmi/android/cu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    invoke-virtual {v0}, Lnet/youmi/android/dg;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/at;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/at;->e:Lnet/youmi/android/dg;

    invoke-virtual {v0}, Lnet/youmi/android/dg;->d()V

    return-void
.end method
