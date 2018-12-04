.class Lnet/youmi/android/cw;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lnet/youmi/android/ct;

.field private b:Lnet/youmi/android/af;

.field private c:Lnet/youmi/android/dy;

.field private d:Lnet/youmi/android/as;

.field private e:Lnet/youmi/android/l;

.field private f:Lnet/youmi/android/bl;

.field private g:Lnet/youmi/android/ba;

.field private h:Lnet/youmi/android/AdView;

.field private i:Lnet/youmi/android/fb;

.field private j:Lnet/youmi/android/bz;

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/fb;Lnet/youmi/android/bz;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lnet/youmi/android/cw;->j:Lnet/youmi/android/bz;

    iput-object p1, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/cw;->h:Lnet/youmi/android/AdView;

    iput-object p2, p0, Lnet/youmi/android/cw;->h:Lnet/youmi/android/AdView;

    iget-object v0, p0, Lnet/youmi/android/cw;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/cw;->l:I

    iget-object v0, p0, Lnet/youmi/android/cw;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/cw;->m:I

    iput-object p3, p0, Lnet/youmi/android/cw;->i:Lnet/youmi/android/fb;

    invoke-virtual {p2}, Lnet/youmi/android/AdView;->d()I

    move-result v0

    invoke-direct {p0, p5, p6, v0}, Lnet/youmi/android/cw;->a(III)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cw;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cw;->l:I

    return v0
.end method

.method private a(III)V
    .locals 8

    const/16 v7, 0x8

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lnet/youmi/android/cw;->l:I

    iget v1, p0, Lnet/youmi/android/cw;->m:I

    invoke-direct {v6, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lnet/youmi/android/af;

    iget-object v2, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/cw;->j:Lnet/youmi/android/bz;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/af;-><init>(Lnet/youmi/android/cw;Landroid/app/Activity;Lnet/youmi/android/bz;II)V

    iput-object v0, p0, Lnet/youmi/android/cw;->b:Lnet/youmi/android/af;

    iget-object v0, p0, Lnet/youmi/android/cw;->b:Lnet/youmi/android/af;

    invoke-virtual {p0, v0}, Lnet/youmi/android/cw;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/youmi/android/cw;->b:Lnet/youmi/android/af;

    invoke-virtual {v0, v7}, Lnet/youmi/android/af;->setVisibility(I)V

    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cw;->j:Lnet/youmi/android/bz;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/youmi/android/dy;-><init>(Lnet/youmi/android/cw;Landroid/app/Activity;Lnet/youmi/android/bz;Z)V

    iput-object v0, p0, Lnet/youmi/android/cw;->c:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/cw;->c:Lnet/youmi/android/dy;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lnet/youmi/android/dy;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/youmi/android/cw;->c:Lnet/youmi/android/dy;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/cw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cw;->c:Lnet/youmi/android/dy;

    invoke-virtual {v0, v7}, Lnet/youmi/android/dy;->setVisibility(I)V

    new-instance v0, Lnet/youmi/android/as;

    iget-object v2, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/cw;->j:Lnet/youmi/android/bz;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/as;-><init>(Lnet/youmi/android/cw;Landroid/app/Activity;Lnet/youmi/android/bz;II)V

    iput-object v0, p0, Lnet/youmi/android/cw;->d:Lnet/youmi/android/as;

    iget-object v0, p0, Lnet/youmi/android/cw;->d:Lnet/youmi/android/as;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/cw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cw;->d:Lnet/youmi/android/as;

    invoke-virtual {v0, v7}, Lnet/youmi/android/as;->setVisibility(I)V

    new-instance v0, Lnet/youmi/android/l;

    iget-object v1, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p3}, Lnet/youmi/android/l;-><init>(Lnet/youmi/android/cw;Landroid/app/Activity;I)V

    iput-object v0, p0, Lnet/youmi/android/cw;->e:Lnet/youmi/android/l;

    iget-object v0, p0, Lnet/youmi/android/cw;->e:Lnet/youmi/android/l;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/cw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cw;->e:Lnet/youmi/android/l;

    invoke-virtual {v0, v7}, Lnet/youmi/android/l;->setVisibility(I)V

    new-instance v0, Lnet/youmi/android/bl;

    iget-object v1, p0, Lnet/youmi/android/cw;->k:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cw;->h:Lnet/youmi/android/AdView;

    invoke-direct {v0, p0, v1, v2}, Lnet/youmi/android/bl;-><init>(Lnet/youmi/android/cw;Landroid/app/Activity;Lnet/youmi/android/AdView;)V

    iput-object v0, p0, Lnet/youmi/android/cw;->f:Lnet/youmi/android/bl;

    iget-object v0, p0, Lnet/youmi/android/cw;->f:Lnet/youmi/android/bl;

    invoke-virtual {p0, v0, v6}, Lnet/youmi/android/cw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cw;->f:Lnet/youmi/android/bl;

    invoke-virtual {v0, v7}, Lnet/youmi/android/bl;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cw;Lnet/youmi/android/ba;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cw;->g:Lnet/youmi/android/ba;

    return-void
.end method

.method static synthetic b(Lnet/youmi/android/cw;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cw;->m:I

    return v0
.end method

.method static synthetic c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->a:Lnet/youmi/android/ct;

    return-object v0
.end method

.method static synthetic d(Lnet/youmi/android/cw;)Lnet/youmi/android/as;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->d:Lnet/youmi/android/as;

    return-object v0
.end method

.method static synthetic e(Lnet/youmi/android/cw;)Lnet/youmi/android/dy;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->c:Lnet/youmi/android/dy;

    return-object v0
.end method

.method static synthetic f(Lnet/youmi/android/cw;)Lnet/youmi/android/af;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->b:Lnet/youmi/android/af;

    return-object v0
.end method

.method static synthetic g(Lnet/youmi/android/cw;)Lnet/youmi/android/l;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->e:Lnet/youmi/android/l;

    return-object v0
.end method

.method static synthetic h(Lnet/youmi/android/cw;)Lnet/youmi/android/bl;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->f:Lnet/youmi/android/bl;

    return-object v0
.end method

.method static synthetic i(Lnet/youmi/android/cw;)Lnet/youmi/android/fb;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->i:Lnet/youmi/android/fb;

    return-object v0
.end method

.method static synthetic j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->g:Lnet/youmi/android/ba;

    return-object v0
.end method

.method static synthetic k(Lnet/youmi/android/cw;)Lnet/youmi/android/bz;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cw;->j:Lnet/youmi/android/bz;

    return-object v0
.end method


# virtual methods
.method a(Lnet/youmi/android/ct;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/cw;->a:Lnet/youmi/android/ct;

    invoke-virtual {p0}, Lnet/youmi/android/cw;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/youmi/android/e;

    invoke-direct {v1, p0}, Lnet/youmi/android/e;-><init>(Lnet/youmi/android/cw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
