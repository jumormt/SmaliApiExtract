.class Lnet/youmi/android/ca;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lnet/youmi/android/y;

.field private c:Lnet/youmi/android/bo;

.field private d:I

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Lnet/youmi/android/dj;


# direct methods
.method protected constructor <init>(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)V
    .locals 3

    const/16 v1, 0xa0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lnet/youmi/android/ca;->a:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/youmi/android/ca;->f:F

    iput v1, p0, Lnet/youmi/android/ca;->g:I

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lnet/youmi/android/ca;->h:I

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lnet/youmi/android/ca;->i:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/youmi/android/ca;->f:F

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lnet/youmi/android/ca;->g:I

    iget v0, p0, Lnet/youmi/android/ca;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ca;->d:I

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ca;->e:I

    iput-boolean v2, p0, Lnet/youmi/android/ca;->a:Z

    :goto_0
    iget v0, p0, Lnet/youmi/android/ca;->d:I

    iget v1, p0, Lnet/youmi/android/ca;->e:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lnet/youmi/android/ca;->d:I

    iget v1, p0, Lnet/youmi/android/ca;->e:I

    iput v1, p0, Lnet/youmi/android/ca;->d:I

    iput v0, p0, Lnet/youmi/android/ca;->e:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lnet/youmi/android/ca;->h:I

    iput v0, p0, Lnet/youmi/android/ca;->d:I

    iget v0, p0, Lnet/youmi/android/ca;->i:I

    iput v0, p0, Lnet/youmi/android/ca;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ca;->a:Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Lnet/youmi/android/ca;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Lnet/youmi/android/ca;

    invoke-direct {v2, v1, v0}, Lnet/youmi/android/ca;-><init>(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v1, p0, Lnet/youmi/android/ca;->f:F

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public a(I)I
    .locals 3

    const/4 v2, 0x1

    if-gtz p1, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lnet/youmi/android/ca;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    int-to-float v0, v0

    iget v1, p0, Lnet/youmi/android/ca;->f:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public a()Lnet/youmi/android/y;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ca;->b:Lnet/youmi/android/y;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/y;

    invoke-direct {v0, p0, p0}, Lnet/youmi/android/y;-><init>(Lnet/youmi/android/ca;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/ca;->b:Lnet/youmi/android/y;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ca;->b:Lnet/youmi/android/y;

    return-object v0
.end method

.method b()Lnet/youmi/android/bo;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ca;->c:Lnet/youmi/android/bo;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/bo;

    invoke-direct {v0, p0, p0}, Lnet/youmi/android/bo;-><init>(Lnet/youmi/android/ca;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/ca;->c:Lnet/youmi/android/bo;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ca;->c:Lnet/youmi/android/bo;

    return-object v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ca;->a:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ca;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ca;->g:I

    return v0
.end method

.method f()I
    .locals 2

    iget v0, p0, Lnet/youmi/android/ca;->h:I

    iget v1, p0, Lnet/youmi/android/ca;->i:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lnet/youmi/android/ca;->i:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/youmi/android/ca;->h:I

    goto :goto_0
.end method

.method g()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ca;->d:I

    return v0
.end method

.method h()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ca;->e:I

    return v0
.end method

.method i()Lnet/youmi/android/dj;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ca;->j:Lnet/youmi/android/dj;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/dj;

    invoke-direct {v0, p0, p0}, Lnet/youmi/android/dj;-><init>(Lnet/youmi/android/ca;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/ca;->j:Lnet/youmi/android/dj;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ca;->j:Lnet/youmi/android/dj;

    return-object v0
.end method
