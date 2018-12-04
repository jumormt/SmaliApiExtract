.class Lcom/casee/adsdk/e;
.super Landroid/widget/RelativeLayout;


# static fields
.field static a:Z

.field static final b:Landroid/graphics/Typeface;

.field static final c:Landroid/graphics/Typeface;


# instance fields
.field private d:Landroid/graphics/drawable/BitmapDrawable;

.field private e:Landroid/content/Context;

.field private f:Lcom/casee/adsdk/o;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ScrollView;

.field private l:I

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z

.field private q:F

.field private r:Lcom/casee/adsdk/CaseeAdView;

.field private s:Lcom/casee/adsdk/gifview/b;

.field private t:Lcom/casee/adsdk/i;

.field private final u:I

.field private final v:I

.field private w:Landroid/os/Handler;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/casee/adsdk/e;->a:Z

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/casee/adsdk/e;->b:Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/casee/adsdk/e;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/casee/adsdk/o;Lcom/casee/adsdk/CaseeAdView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/casee/adsdk/e;->m:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/e;->n:I

    iput-boolean v1, p0, Lcom/casee/adsdk/e;->o:Z

    iput-boolean v2, p0, Lcom/casee/adsdk/e;->p:Z

    invoke-virtual {p0}, Lcom/casee/adsdk/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/casee/adsdk/e;->q:F

    iput v1, p0, Lcom/casee/adsdk/e;->u:I

    iput v2, p0, Lcom/casee/adsdk/e;->v:I

    new-instance v0, Lcom/casee/adsdk/v;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/v;-><init>(Lcom/casee/adsdk/e;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/casee/adsdk/e;->x:Z

    iput v1, p0, Lcom/casee/adsdk/e;->y:I

    iput v1, p0, Lcom/casee/adsdk/e;->z:I

    iput-object p2, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    iput-object p1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/casee/adsdk/e;->o:Z

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/casee/adsdk/e;->p:Z

    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->h()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/e;->n:I

    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->b()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/e;->l:I

    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->a()F

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/e;->m:F

    iput-object p3, p0, Lcom/casee/adsdk/e;->r:Lcom/casee/adsdk/CaseeAdView;

    new-instance v0, Lcom/casee/adsdk/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/casee/adsdk/i;-><init>(Landroid/content/Context;Lcom/casee/adsdk/o;Lcom/casee/adsdk/CaseeAdView;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Lcom/casee/adsdk/e;->a()V

    return-void
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/casee/adsdk/e;->a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1, p2, p3}, Lcom/casee/adsdk/e;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/casee/adsdk/e;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/e;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->b()I

    move-result v0

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/casee/adsdk/e;->a(ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/casee/adsdk/e;->c()V

    :goto_1
    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/casee/adsdk/e;->b(I)V

    invoke-direct {p0}, Lcom/casee/adsdk/e;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/casee/adsdk/e;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->b()I

    move-result v0

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/casee/adsdk/e;->a(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(ILandroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42180000    # 38.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/casee/adsdk/e;->q:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/casee/adsdk/e;->q:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v1, p0, Lcom/casee/adsdk/e;->o:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/casee/adsdk/e;->q:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/casee/adsdk/e;->q:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v4, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v0, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    aput p3, v1, v4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/e;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setId(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/casee/adsdk/e;->q:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {v0, v4, v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v6

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/casee/adsdk/e;->m:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget v3, p0, Lcom/casee/adsdk/e;->n:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/casee/adsdk/e;->b:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/high16 v1, 0x42180000    # 38.0f

    iget v2, p0, Lcom/casee/adsdk/e;->m:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1, v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/casee/adsdk/e;->p:Z

    if-nez v0, :cond_0

    const-string v0, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    iget-object v1, v1, Lcom/casee/adsdk/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->b()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    const/16 v1, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v1, p0, Lcom/casee/adsdk/e;->o:Z

    if-nez v1, :cond_3

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v1, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/casee/adsdk/e;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/casee/adsdk/e;->q:F

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->a(F)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/e;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/casee/adsdk/e;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;)V

    if-ne p1, v3, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    iget-object v1, p0, Lcom/casee/adsdk/e;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/casee/adsdk/e;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/casee/adsdk/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setClickable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->addStatesFromChildren()Z

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/casee/adsdk/e;->e()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/casee/adsdk/n;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/casee/adsdk/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/casee/adsdk/e;->m:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/casee/adsdk/e;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/casee/adsdk/e;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/casee/adsdk/e;->m:F

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    invoke-virtual {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->t:Lcom/casee/adsdk/i;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private d()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    iget-boolean v1, p0, Lcom/casee/adsdk/e;->o:Z

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/o;->a(Z)Lcom/casee/adsdk/gifview/b;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    iget-object v0, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/casee/adsdk/e;->a(ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/casee/adsdk/e;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/gifview/b;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    invoke-virtual {p0, v1, v0}, Lcom/casee/adsdk/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/casee/adsdk/e;->z:I

    if-le v0, v1, :cond_1

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/casee/adsdk/e;->x:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    iput-boolean v3, p0, Lcom/casee/adsdk/e;->x:Z

    iget v0, p0, Lcom/casee/adsdk/e;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/e;->z:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    iget v0, p0, Lcom/casee/adsdk/e;->y:I

    iget-object v1, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/casee/adsdk/e;->y:I

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/casee/adsdk/e;->x:Z

    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/e;->y:I

    iget-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/casee/adsdk/e;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/e;->y:I

    iget-object v0, p0, Lcom/casee/adsdk/e;->w:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method protected a(F)Landroid/view/View;
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/casee/adsdk/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/casee/adsdk/e;->f:Lcom/casee/adsdk/o;

    invoke-virtual {v1, p1}, Lcom/casee/adsdk/o;->a(F)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/casee/adsdk/e;->n:I

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/e;->s:Lcom/casee/adsdk/gifview/b;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/b;->a()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget v0, p0, Lcom/casee/adsdk/e;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    iget-boolean v1, p0, Lcom/casee/adsdk/e;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/casee/adsdk/e;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/casee/adsdk/e;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/casee/adsdk/e;->q:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/16 v0, 0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x48

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/casee/adsdk/e;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/casee/adsdk/e;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, -0x1

    iget v2, p0, Lcom/casee/adsdk/e;->l:I

    invoke-direct {p0, v0, v1, v2}, Lcom/casee/adsdk/e;->a(Landroid/graphics/Rect;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/e;->d:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/casee/adsdk/e;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/e;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/e;->l:I

    return-void
.end method
