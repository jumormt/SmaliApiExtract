.class Lnet/youmi/android/df;
.super Landroid/view/View;


# instance fields
.field A:F

.field B:F

.field C:I

.field D:Landroid/graphics/Paint;

.field E:Landroid/graphics/Path;

.field private F:I

.field a:F

.field b:I

.field c:F

.field d:I

.field e:I

.field f:I

.field g:I

.field h:F

.field i:F

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Landroid/graphics/LinearGradient;

.field o:Landroid/graphics/LinearGradient;

.field p:F

.field q:F

.field r:F

.field s:F

.field t:Landroid/graphics/drawable/ShapeDrawable;

.field u:Landroid/graphics/Rect;

.field v:Landroid/graphics/RectF;

.field w:Landroid/graphics/RectF;

.field x:I

.field y:I

.field z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILnet/youmi/android/ca;)V
    .locals 10

    const/16 v9, 0xf5

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lnet/youmi/android/df;->c:F

    iput v4, p0, Lnet/youmi/android/df;->d:I

    iput v4, p0, Lnet/youmi/android/df;->e:I

    iput v3, p0, Lnet/youmi/android/df;->h:F

    iput v5, p0, Lnet/youmi/android/df;->i:F

    const/16 v0, 0x87

    const/16 v1, 0xce

    const/16 v2, 0xeb

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->j:I

    const/16 v0, 0xf0

    const/16 v1, 0xf8

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->k:I

    const/16 v0, 0x41

    const/16 v1, 0x69

    const/16 v2, 0xe1

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->l:I

    const/16 v0, 0xc8

    invoke-static {v0, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->m:I

    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lnet/youmi/android/df;->p:F

    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lnet/youmi/android/df;->q:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lnet/youmi/android/df;->r:F

    iput v3, p0, Lnet/youmi/android/df;->s:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/df;->u:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/df;->v:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/df;->w:Landroid/graphics/RectF;

    iput v4, p0, Lnet/youmi/android/df;->x:I

    iput v4, p0, Lnet/youmi/android/df;->y:I

    iput v3, p0, Lnet/youmi/android/df;->z:F

    iput v3, p0, Lnet/youmi/android/df;->A:F

    iput v8, p0, Lnet/youmi/android/df;->B:F

    iput v4, p0, Lnet/youmi/android/df;->C:I

    iput v4, p0, Lnet/youmi/android/df;->F:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    int-to-float v0, p2

    iput v0, p0, Lnet/youmi/android/df;->a:F

    iput p3, p0, Lnet/youmi/android/df;->b:I

    invoke-virtual {p4}, Lnet/youmi/android/ca;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v5, p0, Lnet/youmi/android/df;->i:F

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/df;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    const-string v2, "179%"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lnet/youmi/android/df;->h:F

    invoke-virtual {p4, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v1

    iput v1, p0, Lnet/youmi/android/df;->h:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lnet/youmi/android/df;->f:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lnet/youmi/android/df;->g:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x400ccccd    # 2.2f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lnet/youmi/android/df;->x:I

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lnet/youmi/android/df;->y:I

    iget v3, p0, Lnet/youmi/android/df;->c:F

    invoke-virtual {p4, v3}, Lnet/youmi/android/ca;->a(F)F

    move-result v3

    iput v3, p0, Lnet/youmi/android/df;->c:F

    iget v3, p0, Lnet/youmi/android/df;->a:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lnet/youmi/android/df;->s:F

    iget v3, p0, Lnet/youmi/android/df;->b:I

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/df;->c:F

    sub-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/df;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lnet/youmi/android/df;->d:I

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v8, v8, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    iget v5, p0, Lnet/youmi/android/df;->p:F

    iget v6, p0, Lnet/youmi/android/df;->p:F

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v3, 0x3e8f5c29    # 0.28f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lnet/youmi/android/df;->C:I

    iget-object v4, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    iget-object v1, p0, Lnet/youmi/android/df;->E:Landroid/graphics/Path;

    iget v2, p0, Lnet/youmi/android/df;->x:I

    int-to-float v2, v2

    iget v3, p0, Lnet/youmi/android/df;->y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lnet/youmi/android/df;->t:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v0, p0, Lnet/youmi/android/df;->v:Landroid/graphics/RectF;

    int-to-float v1, p3

    iget v2, p0, Lnet/youmi/android/df;->c:F

    sub-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lnet/youmi/android/df;->z:F

    invoke-virtual {p4, v0}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->z:F

    iget v0, p0, Lnet/youmi/android/df;->A:F

    invoke-virtual {p4, v0}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->A:F

    iget v0, p0, Lnet/youmi/android/df;->q:F

    invoke-virtual {p4, v0}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->q:F

    iget v0, p0, Lnet/youmi/android/df;->r:F

    invoke-virtual {p4, v0}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->r:F

    iget-object v0, p0, Lnet/youmi/android/df;->t:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget v1, p0, Lnet/youmi/android/df;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p4, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v1

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    invoke-virtual {p4}, Lnet/youmi/android/ca;->e()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput v5, p0, Lnet/youmi/android/df;->i:F

    goto/16 :goto_0

    :sswitch_0
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lnet/youmi/android/df;->i:F

    goto/16 :goto_0

    :sswitch_1
    iput v5, p0, Lnet/youmi/android/df;->i:F

    goto/16 :goto_0

    :sswitch_2
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lnet/youmi/android/df;->i:F

    goto/16 :goto_0

    :sswitch_3
    const/high16 v0, 0x41980000    # 19.0f

    iput v0, p0, Lnet/youmi/android/df;->i:F

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/df;->t:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget v2, p0, Lnet/youmi/android/df;->z:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/youmi/android/df;->n:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lnet/youmi/android/df;->v:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lnet/youmi/android/df;->v:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x4

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/youmi/android/df;->n:Landroid/graphics/LinearGradient;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/df;->n:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/youmi/android/df;->v:Landroid/graphics/RectF;

    iget v1, p0, Lnet/youmi/android/df;->q:F

    iget v2, p0, Lnet/youmi/android/df;->q:F

    iget-object v3, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x777778
        -0xbbbbbc
        -0x1000000
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/df;->w:Landroid/graphics/RectF;

    iget v2, p0, Lnet/youmi/android/df;->z:F

    iget v3, p0, Lnet/youmi/android/df;->b:I

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/df;->c:F

    sub-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/df;->z:F

    add-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/df;->B:F

    iget v5, p0, Lnet/youmi/android/df;->z:F

    sub-float/2addr v4, v5

    iget v5, p0, Lnet/youmi/android/df;->b:I

    int-to-float v5, v5

    iget v6, p0, Lnet/youmi/android/df;->z:F

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/df;->o:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lnet/youmi/android/df;->w:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lnet/youmi/android/df;->w:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lnet/youmi/android/df;->k:I

    iget v6, p0, Lnet/youmi/android/df;->l:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/youmi/android/df;->o:Landroid/graphics/LinearGradient;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/df;->o:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/df;->w:Landroid/graphics/RectF;

    iget v1, p0, Lnet/youmi/android/df;->r:F

    iget v2, p0, Lnet/youmi/android/df;->r:F

    iget-object v3, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/df;->F:I

    return-void
.end method

.method a(I)V
    .locals 2

    const/16 v1, 0x64

    iget v0, p0, Lnet/youmi/android/df;->F:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    iput p1, p0, Lnet/youmi/android/df;->F:I

    iget v0, p0, Lnet/youmi/android/df;->F:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/youmi/android/df;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/youmi/android/df;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/df;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/youmi/android/df;->invalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget v0, p0, Lnet/youmi/android/df;->s:F

    iget v1, p0, Lnet/youmi/android/df;->F:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/df;->B:F

    iget v0, p0, Lnet/youmi/android/df;->B:F

    iget v1, p0, Lnet/youmi/android/df;->C:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/df;->e:I

    iget-object v0, p0, Lnet/youmi/android/df;->u:Landroid/graphics/Rect;

    iget v1, p0, Lnet/youmi/android/df;->e:I

    iget v2, p0, Lnet/youmi/android/df;->d:I

    iget v3, p0, Lnet/youmi/android/df;->x:I

    iget v4, p0, Lnet/youmi/android/df;->e:I

    add-int/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/df;->y:I

    iget v5, p0, Lnet/youmi/android/df;->d:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lnet/youmi/android/df;->t:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lnet/youmi/android/df;->u:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lnet/youmi/android/df;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/df;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/df;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/youmi/android/df;->F:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/df;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnet/youmi/android/df;->u:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/youmi/android/df;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lnet/youmi/android/df;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lnet/youmi/android/df;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
