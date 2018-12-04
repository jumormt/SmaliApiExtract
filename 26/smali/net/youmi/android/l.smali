.class Lnet/youmi/android/l;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/bb;


# instance fields
.field a:Lnet/youmi/android/cr;

.field b:Lnet/youmi/android/bx;

.field final synthetic c:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;I)V
    .locals 4

    iput-object p1, p0, Lnet/youmi/android/l;->c:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;)I

    move-result v1

    invoke-static {p1}, Lnet/youmi/android/cx;->b(Lnet/youmi/android/cx;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lnet/youmi/android/bx;

    invoke-static {p1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;)I

    move-result v2

    invoke-static {p1}, Lnet/youmi/android/cx;->b(Lnet/youmi/android/cx;)I

    move-result v3

    invoke-direct {v1, p2, v2, v3, p3}, Lnet/youmi/android/bx;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lnet/youmi/android/l;->b:Lnet/youmi/android/bx;

    iget-object v1, p0, Lnet/youmi/android/l;->b:Lnet/youmi/android/bx;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/l;->b:Lnet/youmi/android/bx;

    invoke-virtual {v0}, Lnet/youmi/android/bx;->a()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/l;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public a(Lnet/youmi/android/cu;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/youmi/android/l;->a:Lnet/youmi/android/cr;

    invoke-virtual {p1}, Lnet/youmi/android/cu;->m()Lnet/youmi/android/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/youmi/android/cu;->m()Lnet/youmi/android/cr;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/l;->a:Lnet/youmi/android/cr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/l;->b:Lnet/youmi/android/bx;

    iget-object v1, p0, Lnet/youmi/android/l;->a:Lnet/youmi/android/cr;

    invoke-virtual {v0, v1}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/cr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/l;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/l;->b:Lnet/youmi/android/bx;

    iget-object v1, p0, Lnet/youmi/android/l;->a:Lnet/youmi/android/cr;

    invoke-virtual {v0, v1}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/cr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
