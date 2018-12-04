.class final Lnet/youmi/android/en;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:Landroid/graphics/Path;

.field private F:Landroid/graphics/Path;

.field private G:Landroid/graphics/Path;

.field private H:Landroid/graphics/Path;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Shader;

.field private K:Landroid/graphics/Shader;

.field private L:I

.field private M:I

.field private N:Lnet/youmi/android/ca;

.field a:I

.field b:I

.field c:F

.field d:F

.field e:F

.field private f:Ljava/lang/String;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/graphics/Rect;

.field private p:F

.field private q:F

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;

.field private t:Landroid/graphics/RectF;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(IILnet/youmi/android/ca;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lnet/youmi/android/en;->c:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lnet/youmi/android/en;->d:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lnet/youmi/android/en;->e:F

    const-string v0, "\u6709\u7c73"

    iput-object v0, p0, Lnet/youmi/android/en;->f:Ljava/lang/String;

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lnet/youmi/android/en;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lnet/youmi/android/en;->h:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->j:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->l:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->m:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->n:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lnet/youmi/android/en;->p:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lnet/youmi/android/en;->q:F

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x43a00000    # 320.0f

    const/high16 v4, 0x42480000    # 50.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/en;->r:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/youmi/android/en;->r:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lnet/youmi/android/en;->s:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/youmi/android/en;->r:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    const/16 v0, 0xe6

    const/16 v1, 0xfa

    const/16 v2, 0xfa

    const/16 v3, 0xfa

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->u:I

    const/16 v0, 0xe6

    const/16 v1, 0xea

    const/16 v2, 0xea

    const/16 v3, 0xea

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->v:I

    const/16 v0, 0xd9

    const/16 v1, 0xd9

    const/16 v2, 0xd9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->w:I

    const/16 v0, 0x73

    const/16 v1, 0x73

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->x:I

    const/16 v0, 0xff

    iput v0, p0, Lnet/youmi/android/en;->y:I

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->B:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lnet/youmi/android/en;->C:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/youmi/android/en;->D:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->E:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/en;->L:I

    const/4 v0, 0x2

    iput v0, p0, Lnet/youmi/android/en;->M:I

    iput p1, p0, Lnet/youmi/android/en;->a:I

    iput p2, p0, Lnet/youmi/android/en;->b:I

    iput-object p3, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    invoke-virtual {p0}, Lnet/youmi/android/en;->b()V

    iget-object v0, p0, Lnet/youmi/android/en;->r:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lnet/youmi/android/en;->a:I

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/en;->b:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/en;->s:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lnet/youmi/android/en;->a:I

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/en;->b:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lnet/youmi/android/en;->a:I

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/en;->b:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    iget v1, p0, Lnet/youmi/android/en;->d:F

    iget v2, p0, Lnet/youmi/android/en;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lnet/youmi/android/en;->u:I

    iget v6, p0, Lnet/youmi/android/en;->v:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/youmi/android/en;->J:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lnet/youmi/android/ca;->a(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v4, p0, Lnet/youmi/android/en;->b:I

    int-to-float v4, v4

    const/16 v5, 0x8

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v6, 0x32

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lnet/youmi/android/en;->K:Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/youmi/android/en;->E:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->s:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lnet/youmi/android/en;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/en;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lnet/youmi/android/en;->a:I

    iget v4, p0, Lnet/youmi/android/en;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/en;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/youmi/android/en;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lnet/youmi/android/en;->p:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lnet/youmi/android/en;->q:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/en;->i:F

    iget-object v0, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/youmi/android/en;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lnet/youmi/android/en;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/en;->j:F

    iget-object v0, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v5, p0, Lnet/youmi/android/en;->L:I

    if-nez v5, :cond_1

    iget v5, p0, Lnet/youmi/android/en;->M:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v6

    iput v5, p0, Lnet/youmi/android/en;->i:F

    iget-object v5, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lnet/youmi/android/en;->h:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lnet/youmi/android/en;->j:F

    iget v5, p0, Lnet/youmi/android/en;->a:I

    int-to-float v5, v5

    iget v6, p0, Lnet/youmi/android/en;->i:F

    sub-float/2addr v5, v6

    iget v6, p0, Lnet/youmi/android/en;->d:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lnet/youmi/android/en;->z:I

    iget v5, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lnet/youmi/android/en;->A:I

    iget v5, p0, Lnet/youmi/android/en;->j:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iget v6, p0, Lnet/youmi/android/en;->i:F

    iget v7, p0, Lnet/youmi/android/en;->d:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float v6, v1, v6

    iput v6, p0, Lnet/youmi/android/en;->k:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v2

    iget v7, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v6, v7

    iget v7, p0, Lnet/youmi/android/en;->h:F

    sub-float/2addr v6, v7

    iput v6, p0, Lnet/youmi/android/en;->l:F

    iget v6, p0, Lnet/youmi/android/en;->k:F

    iput v6, p0, Lnet/youmi/android/en;->m:F

    iget v6, p0, Lnet/youmi/android/en;->l:F

    iput v6, p0, Lnet/youmi/android/en;->n:F

    iget v6, p0, Lnet/youmi/android/en;->n:F

    iget-object v7, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lnet/youmi/android/ca;->a(F)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lnet/youmi/android/en;->n:F

    iget-object v6, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget v7, p0, Lnet/youmi/android/en;->e:F

    sub-float v7, v1, v7

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget v7, p0, Lnet/youmi/android/en;->e:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float v7, v1, v7

    iget v8, p0, Lnet/youmi/android/en;->e:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float v8, v3, v8

    invoke-virtual {v6, v7, v8, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-virtual {v7, v6, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v7, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v7, v2

    add-float/2addr v7, v5

    iget-object v8, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lnet/youmi/android/en;->i:F

    iget-object v9, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lnet/youmi/android/en;->d:F

    sub-float v8, v2, v8

    iget v9, p0, Lnet/youmi/android/en;->h:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    iget-object v10, p0, Lnet/youmi/android/en;->o:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Lnet/youmi/android/en;->i:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    sub-float v4, v1, v4

    iget v4, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v4, v2

    iget v4, p0, Lnet/youmi/android/en;->j:F

    sub-float v4, v1, v4

    iget v7, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v7, v2

    iget v8, p0, Lnet/youmi/android/en;->j:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    invoke-virtual {v6, v4, v7, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget v7, p0, Lnet/youmi/android/en;->i:F

    sub-float v7, v1, v7

    iget v8, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v8, v2

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p0, Lnet/youmi/android/en;->j:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    add-float/2addr v4, v2

    iget v4, p0, Lnet/youmi/android/en;->i:F

    sub-float v4, v1, v4

    iget v4, p0, Lnet/youmi/android/en;->i:F

    sub-float v4, v1, v4

    sub-float/2addr v4, v5

    iget v7, p0, Lnet/youmi/android/en;->i:F

    sub-float v7, v1, v7

    add-float/2addr v7, v5

    iget v8, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v4, p0, Lnet/youmi/android/en;->i:F

    sub-float v4, v1, v4

    iget v7, p0, Lnet/youmi/android/en;->p:F

    sub-float/2addr v4, v7

    iget v4, p0, Lnet/youmi/android/en;->i:F

    sub-float v4, v1, v4

    iget v7, p0, Lnet/youmi/android/en;->j:F

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    iget v7, p0, Lnet/youmi/android/en;->i:F

    sub-float v7, v1, v7

    sub-float v5, v7, v5

    iget v7, p0, Lnet/youmi/android/en;->j:F

    add-float/2addr v7, v2

    invoke-virtual {v6, v4, v2, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v6, v5, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget v5, p0, Lnet/youmi/android/en;->e:F

    add-float/2addr v5, v0

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p0, Lnet/youmi/android/en;->e:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget v5, p0, Lnet/youmi/android/en;->e:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v2

    invoke-virtual {v6, v0, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v6, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget v4, p0, Lnet/youmi/android/en;->e:F

    sub-float v4, v3, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lnet/youmi/android/en;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    iget v4, p0, Lnet/youmi/android/en;->e:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v6, v0, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v6, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p0, Lnet/youmi/android/en;->e:F

    sub-float v0, v1, v0

    iget-object v1, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/high16 v0, 0x41200000    # 10.0f

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/youmi/android/en;->t:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    neg-float v2, v0

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    iget v1, p0, Lnet/youmi/android/en;->a:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    iget v1, p0, Lnet/youmi/android/en;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lnet/youmi/android/en;->b:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    iget v3, p0, Lnet/youmi/android/en;->a:I

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    iget v4, p0, Lnet/youmi/android/en;->b:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lnet/youmi/android/en;->b:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void

    :cond_1
    iget v0, p0, Lnet/youmi/android/en;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/en;->z:I

    return v0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    invoke-virtual {v0}, Lnet/youmi/android/ca;->i()Lnet/youmi/android/dj;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/dj;->a()F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->g:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->c:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->c:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->d:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->d:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->e:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->e:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->h:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->h:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->p:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->p:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->q:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->q:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->C:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->C:F

    iget-object v0, p0, Lnet/youmi/android/en;->N:Lnet/youmi/android/ca;

    iget v1, p0, Lnet/youmi/android/en;->D:F

    invoke-virtual {v0, v1}, Lnet/youmi/android/ca;->a(F)F

    move-result v0

    iput v0, p0, Lnet/youmi/android/en;->D:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/en;->C:F

    iget v2, p0, Lnet/youmi/android/en;->D:F

    iget v3, p0, Lnet/youmi/android/en;->D:F

    iget v4, p0, Lnet/youmi/android/en;->B:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lnet/youmi/android/en;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/en;->J:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/en;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/en;->s:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/en;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/en;->f:Ljava/lang/String;

    iget v1, p0, Lnet/youmi/android/en;->k:F

    iget v2, p0, Lnet/youmi/android/en;->l:F

    iget-object v3, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget v1, p0, Lnet/youmi/android/en;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/youmi/android/en;->f:Ljava/lang/String;

    iget v1, p0, Lnet/youmi/android/en;->m:F

    iget v2, p0, Lnet/youmi/android/en;->n:F

    iget-object v3, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/youmi/android/en;->K:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/youmi/android/en;->H:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/youmi/android/en;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 2

    const/16 v0, 0xff

    iget v1, p0, Lnet/youmi/android/en;->y:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/en;->y:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
