.class Lcom/casee/adsdk/i$a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/casee/adsdk/i;

.field private b:Landroid/app/Activity;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/casee/adsdk/i;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    const v1, 0x1030010

    invoke-direct {p0, p2, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/casee/adsdk/i$a;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/casee/adsdk/i$a;->h:Z

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/i$a;->setOwnerActivity(Landroid/app/Activity;)V

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/casee/adsdk/i$a;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/i$a;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    return v0
.end method

.method private a()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->E(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->E(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->E(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/casee/adsdk/i;->c(Landroid/app/Activity;)I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, p1

    mul-int/2addr v2, v0

    int-to-float v2, v2

    neg-int v3, p2

    mul-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v1, v2, v0, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/i$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/casee/adsdk/i$a;->h:Z

    return p1
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput v1, p0, Lcom/casee/adsdk/i$a;->d:I

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->o(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->o(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->E(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/casee/adsdk/i$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/i$a;->h:Z

    return v0
.end method


# virtual methods
.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    sput-boolean v2, Lcom/casee/adsdk/e;->a:Z

    iput-boolean v2, p0, Lcom/casee/adsdk/i$a;->h:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0x32

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    if-ne v0, v4, :cond_d

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v5, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/casee/adsdk/i$a;->g:Z

    :cond_3
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->t(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    if-le v0, v6, :cond_f

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    iget v1, p0, Lcom/casee/adsdk/i$a;->f:I

    if-lt v0, v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/i$a;->e:I

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    iget v1, p0, Lcom/casee/adsdk/i$a;->e:I

    invoke-direct {p0, v0, v1}, Lcom/casee/adsdk/i$a;->a(II)V

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/i$a;->d:I

    invoke-direct {p0}, Lcom/casee/adsdk/i$a;->a()V

    iput-object v2, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    move v0, v4

    :goto_2
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    if-le v1, v6, :cond_1

    iget v1, p0, Lcom/casee/adsdk/i$a;->d:I

    if-lez v1, :cond_1

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/casee/adsdk/i$a;->e:I

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    iget v1, p0, Lcom/casee/adsdk/i$a;->e:I

    invoke-direct {p0, v0, v1}, Lcom/casee/adsdk/i$a;->a(II)V

    iget v0, p0, Lcom/casee/adsdk/i$a;->d:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/casee/adsdk/i$a;->d:I

    invoke-direct {p0}, Lcom/casee/adsdk/i$a;->a()V

    iput-object v2, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    move v0, v4

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/casee/adsdk/i$a;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->t(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->p(Lcom/casee/adsdk/i;)V

    move v0, v3

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/casee/adsdk/i$a;->g:Z

    iput-object v2, p0, Lcom/casee/adsdk/i$a;->c:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->u(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->m(Lcom/casee/adsdk/i;)V

    move v0, v4

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->v(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->m(Lcom/casee/adsdk/i;)V

    move v0, v4

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->w(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    move v0, v4

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->x(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    iget-object v2, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v2}, Lcom/casee/adsdk/i;->y(Lcom/casee/adsdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "query"

    iget-object v2, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v2}, Lcom/casee/adsdk/i;->y(Lcom/casee/adsdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v2}, Lcom/casee/adsdk/i;->y(Lcom/casee/adsdk/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v0, v4

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->z(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    iget-object v1, p0, Lcom/casee/adsdk/i$a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->n(Lcom/casee/adsdk/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->A(Lcom/casee/adsdk/i;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v4

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->B(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/casee/adsdk/i$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->j(Lcom/casee/adsdk/i;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->j(Lcom/casee/adsdk/i;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->b(Lcom/casee/adsdk/i;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->b(Lcom/casee/adsdk/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->C(Lcom/casee/adsdk/i;)V

    move v0, v4

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/casee/adsdk/i;->a(Lcom/casee/adsdk/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->d(Lcom/casee/adsdk/i;)V

    move v0, v4

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/casee/adsdk/i$a;->b()V

    move v0, v4

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->t(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i$a;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->D(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/i$b;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/casee/adsdk/i$a;->b()V

    move v0, v4

    goto/16 :goto_0

    :cond_d
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move v0, v4

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
