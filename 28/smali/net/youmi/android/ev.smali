.class Lnet/youmi/android/ev;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/bo;
.implements Lnet/youmi/android/fc;
.implements Lnet/youmi/android/o;


# instance fields
.field private a:Lnet/youmi/android/av;

.field private b:Lnet/youmi/android/cc;

.field private c:Lnet/youmi/android/AdActivity;

.field private d:Lnet/youmi/android/bz;


# direct methods
.method public constructor <init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/bz;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    iput-object p2, p0, Lnet/youmi/android/ev;->d:Lnet/youmi/android/bz;

    invoke-virtual {p0}, Lnet/youmi/android/ev;->f()V

    invoke-virtual {p0}, Lnet/youmi/android/ev;->g()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/ev;)Lnet/youmi/android/AdActivity;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    return-object v0
.end method

.method static synthetic b(Lnet/youmi/android/ev;)Lnet/youmi/android/av;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0}, Lnet/youmi/android/av;->b()V

    return-void
.end method

.method public a(Lnet/youmi/android/d;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ev;->b:Lnet/youmi/android/cc;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cc;->a(Lnet/youmi/android/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/ek;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0, p1}, Lnet/youmi/android/av;->a(Lnet/youmi/android/ek;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0}, Lnet/youmi/android/av;->d()V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b_()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0}, Lnet/youmi/android/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0}, Lnet/youmi/android/av;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/ev;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {v0}, Lnet/youmi/android/av;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/dx;

    invoke-direct {v1, p0}, Lnet/youmi/android/dx;-><init>(Lnet/youmi/android/ev;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    invoke-static {v0}, Lnet/youmi/android/bd;->a(Landroid/app/Activity;)V

    return-void
.end method

.method f()V
    .locals 3

    new-instance v0, Lnet/youmi/android/av;

    iget-object v1, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, v2, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ct;

    invoke-direct {v0, v1, v2, p0}, Lnet/youmi/android/av;-><init>(Landroid/app/Activity;Lnet/youmi/android/ct;Lnet/youmi/android/o;)V

    iput-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    iget-object v0, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lnet/youmi/android/av;->setId(I)V

    new-instance v0, Lnet/youmi/android/cc;

    iget-object v1, p0, Lnet/youmi/android/ev;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, p0, Lnet/youmi/android/ev;->d:Lnet/youmi/android/bz;

    invoke-direct {v0, v1, v2, p0}, Lnet/youmi/android/cc;-><init>(Landroid/app/Activity;Lnet/youmi/android/bz;Lnet/youmi/android/bo;)V

    iput-object v0, p0, Lnet/youmi/android/ev;->b:Lnet/youmi/android/cc;

    iget-object v0, p0, Lnet/youmi/android/ev;->b:Lnet/youmi/android/cc;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lnet/youmi/android/cc;->setId(I)V

    return-void
.end method

.method g()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lnet/youmi/android/ev;->b:Lnet/youmi/android/cc;

    invoke-virtual {v2}, Lnet/youmi/android/cc;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lnet/youmi/android/ev;->d:Lnet/youmi/android/bz;

    invoke-virtual {v2}, Lnet/youmi/android/bz;->b()Lnet/youmi/android/bn;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bn;->a()I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/ev;->b:Lnet/youmi/android/cc;

    invoke-virtual {p0, v2, v1}, Lnet/youmi/android/ev;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ev;->a:Lnet/youmi/android/av;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/ev;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
