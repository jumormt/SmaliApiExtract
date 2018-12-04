.class Lnet/youmi/android/ex;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/bp;
.implements Lnet/youmi/android/ff;
.implements Lnet/youmi/android/o;


# instance fields
.field private a:Lnet/youmi/android/aw;

.field private b:Lnet/youmi/android/cd;

.field private c:Lnet/youmi/android/AdActivity;

.field private d:Lnet/youmi/android/ca;


# direct methods
.method public constructor <init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    iput-object p2, p0, Lnet/youmi/android/ex;->d:Lnet/youmi/android/ca;

    invoke-virtual {p0}, Lnet/youmi/android/ex;->f()V

    invoke-virtual {p0}, Lnet/youmi/android/ex;->g()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/ex;)Lnet/youmi/android/AdActivity;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    return-object v0
.end method

.method static synthetic b(Lnet/youmi/android/ex;)Lnet/youmi/android/aw;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0}, Lnet/youmi/android/aw;->b()V

    return-void
.end method

.method public a(Lnet/youmi/android/d;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ex;->b:Lnet/youmi/android/cd;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cd;->a(Lnet/youmi/android/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/em;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0, p1}, Lnet/youmi/android/aw;->a(Lnet/youmi/android/em;)V
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

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0}, Lnet/youmi/android/aw;->d()V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b_()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0}, Lnet/youmi/android/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0}, Lnet/youmi/android/aw;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/ex;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {v0}, Lnet/youmi/android/aw;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/dz;

    invoke-direct {v1, p0}, Lnet/youmi/android/dz;-><init>(Lnet/youmi/android/ex;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    invoke-static {v0}, Lnet/youmi/android/be;->a(Landroid/app/Activity;)V

    return-void
.end method

.method f()V
    .locals 3

    new-instance v0, Lnet/youmi/android/aw;

    iget-object v1, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, v2, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/cu;

    invoke-direct {v0, v1, v2, p0}, Lnet/youmi/android/aw;-><init>(Landroid/app/Activity;Lnet/youmi/android/cu;Lnet/youmi/android/o;)V

    iput-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    iget-object v0, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lnet/youmi/android/aw;->setId(I)V

    new-instance v0, Lnet/youmi/android/cd;

    iget-object v1, p0, Lnet/youmi/android/ex;->c:Lnet/youmi/android/AdActivity;

    iget-object v2, p0, Lnet/youmi/android/ex;->d:Lnet/youmi/android/ca;

    invoke-direct {v0, v1, v2, p0}, Lnet/youmi/android/cd;-><init>(Landroid/app/Activity;Lnet/youmi/android/ca;Lnet/youmi/android/bp;)V

    iput-object v0, p0, Lnet/youmi/android/ex;->b:Lnet/youmi/android/cd;

    iget-object v0, p0, Lnet/youmi/android/ex;->b:Lnet/youmi/android/cd;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lnet/youmi/android/cd;->setId(I)V

    return-void
.end method

.method g()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lnet/youmi/android/ex;->b:Lnet/youmi/android/cd;

    invoke-virtual {v2}, Lnet/youmi/android/cd;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lnet/youmi/android/ex;->d:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->a()I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/ex;->b:Lnet/youmi/android/cd;

    invoke-virtual {p0, v2, v1}, Lnet/youmi/android/ex;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ex;->a:Lnet/youmi/android/aw;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/ex;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
