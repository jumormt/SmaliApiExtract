.class Lnet/youmi/android/bl;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/ba;


# instance fields
.field final synthetic a:Lnet/youmi/android/cw;

.field private b:Lnet/youmi/android/av;

.field private c:Landroid/app/Activity;

.field private d:Lnet/youmi/android/AdView;

.field private e:Lnet/youmi/android/ek;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cw;Landroid/app/Activity;Lnet/youmi/android/AdView;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bl;->a:Lnet/youmi/android/cw;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/youmi/android/bl;->c:Landroid/app/Activity;

    iput-object p3, p0, Lnet/youmi/android/bl;->d:Lnet/youmi/android/AdView;

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    if-nez v0, :cond_0

    const-string v0, "init webview"

    invoke-static {v0}, Lnet/youmi/android/f;->c(Ljava/lang/String;)V

    new-instance v0, Lnet/youmi/android/av;

    iget-object v1, p0, Lnet/youmi/android/bl;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/av;-><init>(Landroid/app/Activity;Lnet/youmi/android/o;)V

    iput-object v0, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    iget-object v0, p0, Lnet/youmi/android/bl;->d:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v0

    iget-object v1, p0, Lnet/youmi/android/bl;->d:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    invoke-virtual {v1, v3}, Lnet/youmi/android/av;->setClickable(Z)V

    iget-object v1, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    invoke-virtual {v1, v3}, Lnet/youmi/android/av;->setScrollContainer(Z)V

    iget-object v1, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/bl;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public a(Lnet/youmi/android/ct;)Z
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/youmi/android/bl;->e()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/ct;->j()Lnet/youmi/android/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lnet/youmi/android/bl;->e:Lnet/youmi/android/ek;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lnet/youmi/android/bl;->e()V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    iget-object v1, p0, Lnet/youmi/android/bl;->e:Lnet/youmi/android/ek;

    invoke-virtual {v0, v1}, Lnet/youmi/android/av;->a(Lnet/youmi/android/ek;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/bl;->setVisibility(I)V
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

    invoke-virtual {p0, v0}, Lnet/youmi/android/bl;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-direct {p0}, Lnet/youmi/android/bl;->e()V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bl;->b:Lnet/youmi/android/av;

    iget-object v1, p0, Lnet/youmi/android/bl;->e:Lnet/youmi/android/ek;

    invoke-virtual {v0, v1}, Lnet/youmi/android/av;->a(Lnet/youmi/android/ek;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/bl;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
