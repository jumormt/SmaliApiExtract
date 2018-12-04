.class Lnet/youmi/android/au;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Shader;

.field b:I

.field c:I

.field d:Lnet/youmi/android/ca;

.field e:Lnet/youmi/android/fe;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Lnet/youmi/android/AdView;

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Rect;

.field j:Landroid/graphics/RectF;

.field k:Landroid/graphics/RectF;

.field l:Landroid/graphics/RectF;

.field m:Landroid/graphics/Rect;

.field n:F

.field o:F

.field p:F

.field q:F

.field r:I

.field s:I

.field t:Z

.field u:Ljava/lang/String;

.field v:Ljava/lang/Runnable;

.field private w:Lnet/youmi/android/cu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/youmi/android/AdView;Lnet/youmi/android/fe;IILnet/youmi/android/ca;Landroid/graphics/drawable/Drawable;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->i:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->j:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->l:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/youmi/android/au;->m:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, p0, Lnet/youmi/android/au;->n:F

    const/4 v2, 0x0

    iput v2, p0, Lnet/youmi/android/au;->o:F

    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Lnet/youmi/android/au;->p:F

    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Lnet/youmi/android/au;->q:F

    const/16 v2, 0xb9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lnet/youmi/android/au;->r:I

    const/16 v2, 0xff

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lnet/youmi/android/au;->s:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/youmi/android/au;->t:Z

    const-string v2, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    iput-object v2, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    new-instance v2, Lnet/youmi/android/et;

    invoke-direct {v2, p0}, Lnet/youmi/android/et;-><init>(Lnet/youmi/android/au;)V

    iput-object v2, p0, Lnet/youmi/android/au;->v:Ljava/lang/Runnable;

    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lnet/youmi/android/au;->d:Lnet/youmi/android/ca;

    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lnet/youmi/android/au;->b:I

    iput-object p2, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Lnet/youmi/android/au;->c:I

    iput-object p3, p0, Lnet/youmi/android/au;->e:Lnet/youmi/android/fe;

    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lnet/youmi/android/au;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/ae;->a()I

    move-result v2

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ae;->b()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/ae;->c()I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/ae;->e()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v6

    invoke-virtual {v6}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v6

    invoke-virtual {v6}, Lnet/youmi/android/ae;->d()I

    move-result v6

    sub-int v7, p5, v5

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lnet/youmi/android/au;->j:Landroid/graphics/RectF;

    sub-int v9, p4, v3

    sub-int/2addr v9, v2

    int-to-float v9, v9

    sub-int v3, p5, v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    sub-int v10, p4, v2

    int-to-float v10, v10

    sub-int v2, p5, v2

    int-to-float v2, v2

    invoke-virtual {v8, v9, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual/range {p6 .. p6}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ae;->f()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v2, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    iget-object v3, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lnet/youmi/android/au;->m:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/au;->m:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p4, v3

    sub-int/2addr v3, v4

    mul-int/lit8 v8, v6, 0x4

    sub-int/2addr v3, v8

    sub-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v8, v7

    sub-int v9, p4, v7

    int-to-float v9, v9

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v8, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lnet/youmi/android/au;->l:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v5, v6

    add-float/2addr v3, v5

    iget-object v5, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v7, v6

    add-float/2addr v5, v7

    iget-object v7, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    int-to-float v8, v4

    add-float/2addr v7, v8

    int-to-float v8, v6

    add-float/2addr v7, v8

    iget-object v8, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    int-to-float v9, v6

    add-float/2addr v8, v9

    int-to-float v4, v4

    add-float/2addr v4, v8

    invoke-virtual {v2, v3, v5, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lnet/youmi/android/au;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lnet/youmi/android/au;->n:F

    div-int/lit8 v2, p5, 0x2

    const/4 v3, 0x5

    move-object/from16 v0, p6

    move v1, v3

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lnet/youmi/android/au;->o:F

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/16 v8, 0xff

    const/16 v9, 0x50

    const/16 v10, 0x50

    const/16 v11, 0x50

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lnet/youmi/android/au;->a:Landroid/graphics/Shader;

    iget v2, p0, Lnet/youmi/android/au;->p:F

    move-object/from16 v0, p6

    move v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v2

    iput v2, p0, Lnet/youmi/android/au;->p:F

    iget v2, p0, Lnet/youmi/android/au;->q:F

    move-object/from16 v0, p6

    move v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v2

    iput v2, p0, Lnet/youmi/android/au;->q:F

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/youmi/android/au;->setClickable(Z)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/au;)Lnet/youmi/android/cu;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    iget-boolean v0, v0, Lnet/youmi/android/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    invoke-virtual {v0}, Lnet/youmi/android/cu;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->c()V

    iget-object v0, p0, Lnet/youmi/android/au;->e:Lnet/youmi/android/fe;

    invoke-virtual {v0}, Lnet/youmi/android/fe;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->c()V

    iget-object v0, p0, Lnet/youmi/android/au;->e:Lnet/youmi/android/fe;

    invoke-virtual {v0}, Lnet/youmi/android/fe;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method a(Lnet/youmi/android/cu;)V
    .locals 3

    const-string v2, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    invoke-virtual {v0}, Lnet/youmi/android/cu;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    invoke-virtual {v0}, Lnet/youmi/android/cu;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    iput-object v2, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a;->c()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/au;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/au;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lnet/youmi/android/au;->postInvalidate()V

    goto :goto_0

    :sswitch_0
    const-string v0, "\u70b9\u51fb\u6d4f\u89c8\u7f51\u9875"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    iput-object v2, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    const-string v0, "\u70b9\u51fb\u76f4\u63a5\u4e0b\u8f7d"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    const-string v0, "\u70b9\u51fb\u62e8\u6253\u7535\u8bdd"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    const-string v0, "\u70b9\u51fb\u53d1\u9001\u90ae\u4ef6"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u5730\u56fe"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    iput-object v2, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_7
    const-string v0, "\u70b9\u51fb\u53d1\u9001\u77ed\u4fe1"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :sswitch_8
    const-string v0, "\u70b9\u51fb\u64ad\u653e\u89c6\u9891"

    iput-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x1f -> :sswitch_6
        0x20 -> :sswitch_8
        0x29 -> :sswitch_3
        0x2a -> :sswitch_7
        0x2b -> :sswitch_5
        0x2c -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    invoke-virtual {v0}, Lnet/youmi/android/cu;->n()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/youmi/android/au;->w:Lnet/youmi/android/cu;

    invoke-virtual {v1}, Lnet/youmi/android/cu;->b()I

    move-result v1

    if-eq v1, v6, :cond_3

    if-nez v1, :cond_9

    :cond_3
    if-eqz v0, :cond_9

    move v1, v6

    :goto_2
    iget-object v2, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v2

    iget-boolean v2, v2, Lnet/youmi/android/a;->c:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/au;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/youmi/android/au;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/au;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lnet/youmi/android/au;->g:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/a;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v1, p0, Lnet/youmi/android/au;->r:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    iget-object v2, p0, Lnet/youmi/android/au;->a:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    iget v2, p0, Lnet/youmi/android/au;->q:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, -0xbbbbbc

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lnet/youmi/android/au;->k:Landroid/graphics/RectF;

    iget v2, p0, Lnet/youmi/android/au;->p:F

    iget v3, p0, Lnet/youmi/android/au;->p:F

    iget-object v4, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lnet/youmi/android/au;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/youmi/android/au;->l:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6
    iget-object v0, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/au;->d:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ae;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/au;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/au;->u:Ljava/lang/String;

    iget v1, p0, Lnet/youmi/android/au;->n:F

    iget v2, p0, Lnet/youmi/android/au;->o:F

    iget-object v3, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-object v1, p0, Lnet/youmi/android/au;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/youmi/android/au;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/au;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    iget-boolean v0, p0, Lnet/youmi/android/au;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/youmi/android/au;->r:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v1, v7

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lnet/youmi/android/au;->t:Z

    :goto_0
    invoke-virtual {p0}, Lnet/youmi/android/au;->postInvalidate()V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iput-boolean v2, p0, Lnet/youmi/android/au;->t:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lnet/youmi/android/au;->t:Z

    invoke-direct {p0, p1}, Lnet/youmi/android/au;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lnet/youmi/android/au;->t:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lnet/youmi/android/au;->t:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lnet/youmi/android/au;->t:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
