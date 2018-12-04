.class Lnet/youmi/android/cx;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lnet/youmi/android/cu;

.field private b:Lnet/youmi/android/ag;

.field private c:Lnet/youmi/android/ea;

.field private d:Lnet/youmi/android/at;

.field private e:Lnet/youmi/android/l;

.field private f:Lnet/youmi/android/bm;

.field private g:Lnet/youmi/android/bb;

.field private h:Lnet/youmi/android/AdView;

.field private i:Lnet/youmi/android/fe;

.field private j:Lnet/youmi/android/ca;

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/fe;Lnet/youmi/android/ca;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lnet/youmi/android/cx;->j:Lnet/youmi/android/ca;

    iput-object p1, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    iput-object p2, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    iget-object v0, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/cx;->l:I

    iget-object v0, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v0

    iput v0, p0, Lnet/youmi/android/cx;->m:I

    iput-object p3, p0, Lnet/youmi/android/cx;->i:Lnet/youmi/android/fe;

    invoke-virtual {p2}, Lnet/youmi/android/AdView;->d()I

    move-result v0

    invoke-direct {p0, p5, p6, v0}, Lnet/youmi/android/cx;->a(III)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cx;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cx;->l:I

    return v0
.end method

.method private a(III)V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lnet/youmi/android/cx;->l:I

    iget v2, p0, Lnet/youmi/android/cx;->m:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p0, Lnet/youmi/android/cx;->n:I

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cx;Lnet/youmi/android/bb;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cx;->g:Lnet/youmi/android/bb;

    return-void
.end method

.method static synthetic b(Lnet/youmi/android/cx;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cx;->m:I

    return v0
.end method

.method static synthetic c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cx;->a:Lnet/youmi/android/cu;

    return-object v0
.end method

.method static synthetic d(Lnet/youmi/android/cx;)Lnet/youmi/android/fe;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cx;->i:Lnet/youmi/android/fe;

    return-object v0
.end method

.method static synthetic e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cx;->g:Lnet/youmi/android/bb;

    return-object v0
.end method

.method static synthetic f(Lnet/youmi/android/cx;)Lnet/youmi/android/ca;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cx;->j:Lnet/youmi/android/ca;

    return-object v0
.end method


# virtual methods
.method a()Lnet/youmi/android/ag;
    .locals 6

    iget-object v0, p0, Lnet/youmi/android/cx;->b:Lnet/youmi/android/ag;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ag;

    iget-object v2, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/cx;->j:Lnet/youmi/android/ca;

    iget-object v1, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->e()I

    move-result v4

    iget v5, p0, Lnet/youmi/android/cx;->n:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ag;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;II)V

    iput-object v0, p0, Lnet/youmi/android/cx;->b:Lnet/youmi/android/ag;

    iget-object v0, p0, Lnet/youmi/android/cx;->b:Lnet/youmi/android/ag;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/ag;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->b:Lnet/youmi/android/ag;

    iget-object v1, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cx;->b:Lnet/youmi/android/ag;

    return-object v0
.end method

.method a(Lnet/youmi/android/cu;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/cx;->a:Lnet/youmi/android/cu;

    invoke-virtual {p0}, Lnet/youmi/android/cx;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/youmi/android/e;

    invoke-direct {v1, p0}, Lnet/youmi/android/e;-><init>(Lnet/youmi/android/cx;)V

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

.method b()Lnet/youmi/android/ea;
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ea;

    iget-object v1, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cx;->j:Lnet/youmi/android/ca;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/youmi/android/ea;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;Z)V

    iput-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    iget-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    iget-object v1, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ea;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/ea;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    iget-object v1, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cx;->c:Lnet/youmi/android/ea;

    return-object v0
.end method

.method c()Lnet/youmi/android/at;
    .locals 6

    iget-object v0, p0, Lnet/youmi/android/cx;->d:Lnet/youmi/android/at;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/at;

    iget-object v2, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iget-object v3, p0, Lnet/youmi/android/cx;->j:Lnet/youmi/android/ca;

    iget-object v1, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->e()I

    move-result v4

    iget v5, p0, Lnet/youmi/android/cx;->n:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/at;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/ca;II)V

    iput-object v0, p0, Lnet/youmi/android/cx;->d:Lnet/youmi/android/at;

    iget-object v0, p0, Lnet/youmi/android/cx;->d:Lnet/youmi/android/at;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/at;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->d:Lnet/youmi/android/at;

    iget-object v1, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cx;->d:Lnet/youmi/android/at;

    return-object v0
.end method

.method d()Lnet/youmi/android/l;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/cx;->e:Lnet/youmi/android/l;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/l;

    iget-object v1, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->d()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lnet/youmi/android/l;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;I)V

    iput-object v0, p0, Lnet/youmi/android/cx;->e:Lnet/youmi/android/l;

    iget-object v0, p0, Lnet/youmi/android/cx;->e:Lnet/youmi/android/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/l;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->e:Lnet/youmi/android/l;

    iget-object v1, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cx;->e:Lnet/youmi/android/l;

    return-object v0
.end method

.method e()Lnet/youmi/android/bm;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/cx;->f:Lnet/youmi/android/bm;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/bm;

    iget-object v1, p0, Lnet/youmi/android/cx;->k:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/cx;->h:Lnet/youmi/android/AdView;

    invoke-direct {v0, p0, v1, v2}, Lnet/youmi/android/bm;-><init>(Lnet/youmi/android/cx;Landroid/app/Activity;Lnet/youmi/android/AdView;)V

    iput-object v0, p0, Lnet/youmi/android/cx;->f:Lnet/youmi/android/bm;

    iget-object v0, p0, Lnet/youmi/android/cx;->f:Lnet/youmi/android/bm;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/bm;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/cx;->f:Lnet/youmi/android/bm;

    iget-object v1, p0, Lnet/youmi/android/cx;->o:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cx;->f:Lnet/youmi/android/bm;

    return-object v0
.end method
