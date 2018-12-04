.class Lnet/youmi/android/dr;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/cd;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lnet/youmi/android/cd;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/dr;->a:Lnet/youmi/android/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dr;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "last.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "last-enable.png"

    invoke-virtual {p0, v1}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dr;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dr;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v10, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    const/16 v5, 0xff

    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v0, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v1, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x420c0000    # 35.0f

    const/16 v3, 0x50

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-static {v10, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v1, v10

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lnet/youmi/android/cd;->a()[I

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/youmi/android/cd;->b()[I

    move-result-object v0

    invoke-virtual {v7, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lnet/youmi/android/cd;->c()[I

    move-result-object v0

    invoke-virtual {v7, v0, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v7
.end method

.method a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dr;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "next.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "next-enable.png"

    invoke-virtual {p0, v1}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dr;->c:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dr;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method c()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dr;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "download.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dr;->f:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dr;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method d()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dr;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "quit.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dr;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dr;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method e()Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v2, "reflesh.png"

    iget-object v0, p0, Lnet/youmi/android/dr;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "reflesh.png"

    invoke-virtual {p0, v2}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "reflesh.png"

    invoke-virtual {p0, v2}, Lnet/youmi/android/dr;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dr;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dr;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
