.class Lnet/youmi/android/cf;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lnet/youmi/android/ff;


# instance fields
.field a:Lnet/youmi/android/AdActivity;

.field b:Landroid/view/GestureDetector;

.field c:I

.field d:J

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lnet/youmi/android/ca;

.field private i:I

.field private j:Landroid/widget/Gallery;

.field private k:Landroid/widget/ImageSwitcher;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Lnet/youmi/android/cs;

.field private o:Lnet/youmi/android/as;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x3c

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lnet/youmi/android/cf;->i:I

    const/16 v0, 0x15e

    iput v0, p0, Lnet/youmi/android/cf;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/youmi/android/cf;->d:J

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_0
    array-length v0, p3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_1
    iput-object p1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    iput-object p3, p0, Lnet/youmi/android/cf;->e:[Ljava/lang/String;

    iput-object p4, p0, Lnet/youmi/android/cf;->f:Ljava/lang/String;

    iput-object p5, p0, Lnet/youmi/android/cf;->g:Ljava/lang/String;

    iput-object p2, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    iget-object v0, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    invoke-virtual {v0, v2}, Lnet/youmi/android/ca;->a(I)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/cf;->i:I

    invoke-direct {p0}, Lnet/youmi/android/cf;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnet/youmi/android/cf;->d()V

    invoke-direct {p0}, Lnet/youmi/android/cf;->e()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/cf;)Lnet/youmi/android/cs;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    return-object v0
.end method

.method static synthetic a(Lnet/youmi/android/cf;Lnet/youmi/android/as;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    return-void
.end method

.method static synthetic b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    return-object v0
.end method

.method static synthetic c(Lnet/youmi/android/cf;)V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/cf;->f()V

    return-void
.end method

.method private c()Z
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    iget-object v1, p0, Lnet/youmi/android/cf;->e:[Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lnet/youmi/android/ca;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cs;->a(Landroid/content/Context;[Ljava/lang/String;I)Lnet/youmi/android/cs;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lnet/youmi/android/cf;)Landroid/widget/ImageSwitcher;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/16 v2, 0xf5

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/youmi/android/cf;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    iget-object v1, v1, Lnet/youmi/android/as;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v0}, Lnet/youmi/android/cs;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/widget/Gallery;

    iget-object v1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    new-instance v1, Lnet/youmi/android/ah;

    invoke-direct {v1, p0}, Lnet/youmi/android/ah;-><init>(Lnet/youmi/android/cf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->b:Landroid/view/GestureDetector;

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    new-instance v1, Lnet/youmi/android/v;

    invoke-direct {v1, p0}, Lnet/youmi/android/v;-><init>(Lnet/youmi/android/cf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    new-instance v1, Lnet/youmi/android/u;

    invoke-direct {v1, p0}, Lnet/youmi/android/u;-><init>(Lnet/youmi/android/cf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/youmi/android/cf;->l:Landroid/widget/ImageView;

    const v1, 0x1080052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lnet/youmi/android/cf;->l:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/t;

    invoke-direct {v1, p0}, Lnet/youmi/android/t;-><init>(Lnet/youmi/android/cf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-static {v0}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lnet/youmi/android/cf;->m:Landroid/widget/ImageView;

    const v1, 0x108004e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lnet/youmi/android/cf;->m:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/q;

    invoke-direct {v1, p0}, Lnet/youmi/android/q;-><init>(Lnet/youmi/android/cf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lnet/youmi/android/cf;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/cf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lnet/youmi/android/cf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/cf;->t:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cf;->t:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->u:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cf;->u:Landroid/view/animation/Animation;

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lnet/youmi/android/cf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cf;->g:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/cf;->p:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->d()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/cf;->p:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/youmi/android/cf;->p:Landroid/view/animation/Animation;

    iget v1, p0, Lnet/youmi/android/cf;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->q:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->d()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/cf;->q:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/youmi/android/cf;->q:Landroid/view/animation/Animation;

    iget v1, p0, Lnet/youmi/android/cf;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/cf;->r:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->d()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/cf;->r:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/youmi/android/cf;->r:Landroid/view/animation/Animation;

    iget v1, p0, Lnet/youmi/android/cf;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lnet/youmi/android/cf;->s:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/youmi/android/cf;->h:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->d()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/cf;->s:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/youmi/android/cf;->s:Landroid/view/animation/Animation;

    iget v1, p0, Lnet/youmi/android/cf;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lnet/youmi/android/cf;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b_()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/youmi/android/cf;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lnet/youmi/android/cf;->d:J

    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    const-string v1, "\u518d\u6b21\u6309\u540e\u9000\u952e\u8fd4\u56de"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-virtual {v0}, Lnet/youmi/android/AdActivity;->a()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lnet/youmi/android/cf;->i:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v1}, Lnet/youmi/android/cs;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v0, v3

    :cond_0
    if-le v0, v5, :cond_5

    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v1}, Lnet/youmi/android/cs;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    invoke-direct {p0}, Lnet/youmi/android/cf;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v1, v0}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v2, v0, Lnet/youmi/android/as;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageURI(Landroid/net/Uri;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    return v0

    :cond_2
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lnet/youmi/android/cf;->i:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v0}, Lnet/youmi/android/cs;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    :cond_3
    if-le v0, v5, :cond_5

    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v1}, Lnet/youmi/android/cs;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/cf;->j:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    invoke-direct {p0}, Lnet/youmi/android/cf;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lnet/youmi/android/cf;->n:Lnet/youmi/android/cs;

    invoke-virtual {v1, v0}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lnet/youmi/android/cf;->k:Landroid/widget/ImageSwitcher;

    iget-object v2, v0, Lnet/youmi/android/as;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageURI(Landroid/net/Uri;)V

    iput-object v0, p0, Lnet/youmi/android/cf;->o:Lnet/youmi/android/as;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_5
    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
