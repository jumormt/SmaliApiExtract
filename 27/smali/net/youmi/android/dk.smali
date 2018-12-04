.class Lnet/youmi/android/dk;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/RectF;

.field b:I

.field c:I

.field d:Landroid/graphics/RectF;

.field e:Landroid/graphics/Paint;

.field f:F

.field g:I

.field h:Lnet/youmi/android/ca;

.field i:F


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/ca;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/dk;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/dk;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lnet/youmi/android/dk;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/dk;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/youmi/android/dk;->i:F

    iput-object p2, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    iget-object v0, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/dk;->f:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/dk;->f:F

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lnet/youmi/android/dk;->g:I

    invoke-virtual {p0}, Lnet/youmi/android/dk;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/dk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lnet/youmi/android/ca;->a(I)I

    move-result v1

    invoke-virtual {p0}, Lnet/youmi/android/dk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    invoke-virtual {v0}, Lnet/youmi/android/ca;->d()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->d()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lnet/youmi/android/dk;->h:Lnet/youmi/android/ca;

    invoke-virtual {v0}, Lnet/youmi/android/ca;->d()I

    move-result v0

    :cond_1
    iput v0, p0, Lnet/youmi/android/dk;->b:I

    iput v1, p0, Lnet/youmi/android/dk;->c:I

    iget-object v2, p0, Lnet/youmi/android/dk;->a:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lnet/youmi/android/dk;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/dk;->i:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/16 v2, 0xb4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/dk;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/youmi/android/dk;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/dk;->d:Landroid/graphics/RectF;

    iget v1, p0, Lnet/youmi/android/dk;->f:F

    iget v2, p0, Lnet/youmi/android/dk;->f:F

    iget v3, p0, Lnet/youmi/android/dk;->i:F

    iget v4, p0, Lnet/youmi/android/dk;->g:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/dk;->f:F

    sub-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/dk;->c:I

    int-to-float v4, v4

    iget v5, p0, Lnet/youmi/android/dk;->f:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x41

    const/16 v3, 0x69

    const/16 v4, 0xe1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lnet/youmi/android/dk;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/youmi/android/dk;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
