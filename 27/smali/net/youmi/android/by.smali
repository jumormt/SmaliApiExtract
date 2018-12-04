.class Lnet/youmi/android/by;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lnet/youmi/android/ca;)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->a()I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x3c

    const/16 v6, 0x3c

    const/16 v7, 0x3c

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xa0

    invoke-static {v1, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method static a(Lnet/youmi/android/ca;[I[I)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v11, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/bo;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    div-float v4, v1, v7

    div-float v5, v1, v6

    div-float v6, v0, v6

    div-float v7, v0, v7

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    add-float v9, v2, v6

    invoke-virtual {v8, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v9, v2, v0

    invoke-virtual {v8, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v0

    add-float v10, v3, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v6

    add-float v10, v3, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v6

    add-float v10, v3, v1

    sub-float/2addr v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v0

    sub-float/2addr v9, v7

    add-float v10, v3, v1

    sub-float/2addr v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v0

    sub-float/2addr v9, v7

    add-float v10, v3, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v9, v2, v6

    add-float v10, v3, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v6, v2

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    mul-float v6, v5, v11

    add-float/2addr v6, v3

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v6, v5, v12

    add-float/2addr v6, v3

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v6, v7, v11

    add-float/2addr v6, v2

    mul-float v9, v5, v12

    add-float/2addr v9, v3

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v6, v7, v11

    add-float/2addr v6, v2

    add-float v9, v3, v1

    sub-float/2addr v9, v4

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v0, v2

    sub-float/2addr v0, v7

    div-float/2addr v1, v11

    add-float/2addr v1, v3

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v7, v11

    add-float/2addr v0, v2

    add-float v1, v3, v4

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v7, v11

    add-float/2addr v0, v2

    mul-float v1, v5, v11

    add-float/2addr v1, v3

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v5, v11

    add-float/2addr v0, v3

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v8, v1, v2}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0xf5

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xbf

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1, v1, p2, v2}, Lnet/youmi/android/by;->a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lnet/youmi/android/ca;[I[I[I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/bo;->b()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    div-float v6, v0, v7

    add-float/2addr v6, v2

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    div-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v5, v1, v2}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    const/16 v6, 0xf5

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const/16 v6, 0xbf

    const/16 v7, 0xff

    invoke-static {v2, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/by;->a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v0, p4, p5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lnet/youmi/android/ca;[I[I)Landroid/graphics/drawable/Drawable;
    .locals 12

    const v11, 0x3f333333    # 0.7f

    const v10, 0x3f19999a    # 0.6f

    const v9, 0x3ecccccd    # 0.4f

    const v8, 0x3eb33333    # 0.35f

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/bo;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/bo;->b()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v7, v1

    add-float/2addr v7, v3

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v4, v2

    mul-float v5, v1, v11

    add-float/2addr v5, v3

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    mul-float v5, v1, v8

    add-float/2addr v5, v3

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v0, v10

    add-float/2addr v4, v2

    mul-float v5, v1, v8

    add-float/2addr v5, v3

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v0, v10

    add-float/2addr v4, v2

    invoke-virtual {v6, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v0, v9

    add-float/2addr v4, v2

    invoke-virtual {v6, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v4, v0, v9

    add-float/2addr v4, v2

    mul-float v5, v1, v8

    add-float/2addr v5, v3

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    mul-float v5, v1, v8

    add-float/2addr v5, v3

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    mul-float/2addr v1, v11

    add-float/2addr v1, v3

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v1, v2}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0xf5

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/16 v5, 0xbf

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1, v1, p2, v2}, Lnet/youmi/android/by;->a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lnet/youmi/android/ca;[I[I[I)Landroid/graphics/drawable/Drawable;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->c()I

    move-result v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->c()I

    move-result v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/bo;->b()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    add-int/2addr v4, v2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v3, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v1

    int-to-float v3, v4

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v5, v1, v2}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    const/16 v6, 0xf5

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const/16 v6, 0xbf

    const/16 v7, 0xff

    invoke-static {v2, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/by;->a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Lnet/youmi/android/ca;[I[I[I)Landroid/graphics/drawable/Drawable;
    .locals 12

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bo;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/bo;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/bo;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/bo;->b()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    const v6, 0x3e23d70a    # 0.16f

    mul-float/2addr v6, v1

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v2, v6

    add-float v9, v3, v6

    add-float v10, v2, v0

    sub-float/2addr v10, v6

    add-float v11, v3, v1

    sub-float v6, v11, v6

    invoke-direct {v4, v5, v9, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float v5, v2, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v5, 0x0

    const/high16 v6, -0x3cea0000    # -150.0f

    invoke-virtual {v7, v8, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x433e0000    # 190.0f

    const/high16 v6, 0x43200000    # 160.0f

    invoke-virtual {v7, v4, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-float v5, v2, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, -0x3cea0000    # -150.0f

    invoke-virtual {v7, v8, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-float v5, v2, v0

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v2, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v5, 0x43200000    # 160.0f

    invoke-virtual {v7, v4, v0, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    invoke-virtual {v7, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/youmi/android/bo;->a()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v7, v1, p0}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const v2, -0xbbbbbc

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/16 v2, 0xf5

    const/16 v4, 0xf5

    const/16 v5, 0xf5

    invoke-static {v2, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/16 v0, 0xc8

    const/4 v2, 0x0

    const/16 v4, 0xbf

    const/16 v6, 0xff

    invoke-static {v0, v2, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/by;->a([ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    goto :goto_0
.end method
