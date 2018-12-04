.class public final Lcom/wooboo/adlib_android/ImpressionAdView;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static a:Lcom/wooboo/adlib_android/ImpressionAdView;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/content/Context;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Landroid/view/View;

.field private static h:I

.field private static i:Ljava/util/Timer;

.field private static j:Landroid/widget/ImageButton;

.field private static k:Landroid/widget/RelativeLayout;

.field private static l:Landroid/graphics/Bitmap;

.field private static m:D

.field private static n:I

.field private static o:I

.field private static p:Lcom/wooboo/adlib_android/AdListener;

.field private static q:I

.field private static r:I

.field private static s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 25
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    .line 27
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    .line 28
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    .line 32
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    .line 35
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    .line 93
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    .line 94
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->s:I

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIZ)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 118
    if-nez p2, :cond_0

    .line 120
    const-string v0, "The parent view that you add is null,please check whether the parent view is initialized or is a real view."

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->c(Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 125
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setDen(D)V

    .line 126
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-direct {v0, p1}, Lcom/wooboo/adlib_android/ImpressionAdView;-><init>(Landroid/content/Context;)V

    .line 127
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 128
    const v1, 0x1030003

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAnimationStyle(I)V

    .line 129
    sput-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    .line 130
    sput p3, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    .line 131
    sput p4, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    .line 132
    invoke-static {p1}, Lcom/wooboo/adlib_android/c;->c(Landroid/content/Context;)V

    .line 133
    invoke-static {p6}, Lcom/wooboo/adlib_android/c;->a(Z)V

    .line 134
    invoke-static {p5}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(I)V

    .line 135
    sput-object p2, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    .line 136
    invoke-static {p1}, Lcom/wooboo/adlib_android/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->b(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;IIIZ)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 144
    if-nez p2, :cond_0

    .line 146
    const-string v0, "The parent view that you add is null,please check whether the parent view is initialized or is a real view."

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->c(Ljava/lang/String;)V

    .line 149
    :cond_0
    if-eqz p3, :cond_1

    .line 150
    invoke-static {p3}, Lcom/wooboo/adlib_android/c;->d(Ljava/lang/String;)V

    .line 152
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 154
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setDen(D)V

    .line 155
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-direct {v0, p1}, Lcom/wooboo/adlib_android/ImpressionAdView;-><init>(Landroid/content/Context;)V

    .line 156
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    .line 157
    const v1, 0x1030003

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setAnimationStyle(I)V

    .line 158
    sput-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    .line 159
    sput p4, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    .line 160
    sput p5, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    .line 161
    invoke-static {p1}, Lcom/wooboo/adlib_android/c;->c(Landroid/content/Context;)V

    .line 162
    invoke-static {p7}, Lcom/wooboo/adlib_android/c;->a(Z)V

    .line 163
    invoke-static {p6}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(I)V

    .line 164
    sput-object p2, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    .line 165
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->b(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method static synthetic a()Landroid/view/View;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    return-object v0
.end method

.method private static a(I)V
    .locals 1

    .prologue
    .line 372
    const/high16 v0, -0x1000000

    or-int/2addr v0, p0

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->f:I

    .line 373
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 263
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->k()V

    return-void
.end method

.method static synthetic a(Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->j:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private static a(Z)V
    .locals 7

    .prologue
    .line 241
    sget-object v6, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    monitor-enter v6

    .line 242
    if-eqz p0, :cond_1

    :try_start_0
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-lez v0, :cond_1

    .line 243
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 245
    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    new-instance v1, Lcom/wooboo/adlib_android/ImpressionAdView$2;

    invoke-direct {v1}, Lcom/wooboo/adlib_android/ImpressionAdView$2;-><init>()V

    .line 251
    sget v2, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    int-to-long v2, v2

    sget v4, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    int-to-long v4, v4

    .line 245
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 241
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 253
    :cond_1
    if-eqz p0, :cond_2

    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-nez v0, :cond_0

    .line 254
    :cond_2
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 256
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->i:Ljava/util/Timer;

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 184
    invoke-static {p0}, Lcom/wooboo/adlib_android/c;->a(Landroid/content/Context;)I

    move-result v0

    .line 185
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->c(I)V

    .line 187
    :try_start_0
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 189
    const-string v1, "wooboo_btn.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->o:I

    .line 195
    invoke-static {p0}, Lcom/wooboo/adlib_android/ImpressionAdView;->getDisplayMetricsPit(Landroid/content/Context;)I

    move-result v0

    .line 196
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(I)V

    .line 197
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 198
    const/16 v0, 0x48

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:I

    .line 203
    :cond_1
    :goto_1
    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    sget-object v2, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    .line 204
    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    sget-object v2, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->s:I

    .line 205
    invoke-static {p0}, Lcom/wooboo/adlib_android/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->e(Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/wooboo/adlib_android/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/String;)V

    .line 211
    invoke-static {p0}, Lcom/wooboo/adlib_android/d;->a(Landroid/content/Context;)Lcom/wooboo/adlib_android/d;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 212
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->d(I)V

    .line 213
    invoke-static {p0}, Lcom/wooboo/adlib_android/c;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->a(I)V

    .line 214
    return-void

    .line 199
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 200
    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    sget-wide v2, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 201
    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->dismiss()V

    .line 388
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 390
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    sput-object v1, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    goto :goto_0
.end method

.method static synthetic d()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->j:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic g()Lcom/wooboo/adlib_android/ImpressionAdView;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->a:Lcom/wooboo/adlib_android/ImpressionAdView;

    return-object v0
.end method

.method protected static getAdHeight()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:I

    return v0
.end method

.method protected static getAdWidth()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->o:I

    return v0
.end method

.method protected static getBtnHeight()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->s:I

    return v0
.end method

.method protected static getBtnWidth()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    return v0
.end method

.method protected static getDen()D
    .locals 2

    .prologue
    .line 86
    sget-wide v0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    return-wide v0
.end method

.method protected static getDisplayMetricsPit(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 68
    const/16 v1, 0x2d8

    if-gt v0, v1, :cond_0

    .line 69
    sput v2, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    move v0, v2

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    sput v3, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    move v0, v3

    .line 73
    goto :goto_0
.end method

.method protected static getDisplayPit()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    return v0
.end method

.method protected static getTextColor()I
    .locals 1

    .prologue
    .line 380
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->f:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 401
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->e:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 409
    sget v0, Lcom/wooboo/adlib_android/ImpressionAdView;->d:I

    return v0
.end method

.method static synthetic j()Lcom/wooboo/adlib_android/AdListener;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->p:Lcom/wooboo/adlib_android/AdListener;

    return-object v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->b:Landroid/os/Handler;

    .line 267
    :cond_0
    new-instance v0, Lcom/wooboo/adlib_android/ImpressionAdView$1;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$1;-><init>()V

    .line 351
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/ImpressionAdView$1;->start()V

    .line 353
    return-void
.end method

.method protected static setAdHeight(I)V
    .locals 0

    .prologue
    .line 82
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->n:I

    .line 83
    return-void
.end method

.method protected static setAdWidth(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->o:I

    .line 54
    return-void
.end method

.method protected static setBtnHeight(I)V
    .locals 0

    .prologue
    .line 109
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->s:I

    .line 110
    return-void
.end method

.method protected static setBtnWidth(I)V
    .locals 0

    .prologue
    .line 101
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->r:I

    .line 102
    return-void
.end method

.method protected static setDen(D)V
    .locals 0

    .prologue
    .line 90
    sput-wide p0, Lcom/wooboo/adlib_android/ImpressionAdView;->m:D

    .line 91
    return-void
.end method

.method protected static setDisplayPit(I)V
    .locals 0

    .prologue
    .line 63
    sput p0, Lcom/wooboo/adlib_android/ImpressionAdView;->q:I

    .line 64
    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 356
    invoke-static {p1}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    .line 357
    return-void
.end method

.method public final setAdListener(Lcom/wooboo/adlib_android/AdListener;)V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    sput-object p1, Lcom/wooboo/adlib_android/ImpressionAdView;->p:Lcom/wooboo/adlib_android/AdListener;

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->k()V

    .line 181
    :cond_0
    return-void
.end method

.method public final show(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x258

    const/16 v2, 0x3c

    const-string v6, "Wooboo SDK 1.2"

    const-string v5, "Fresh ads Interval("

    .line 170
    sget-object v0, Lcom/wooboo/adlib_android/ImpressionAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->k()V

    .line 173
    :cond_0
    if-gtz p1, :cond_1

    move v0, v4

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/wooboo/adlib_android/ImpressionAdView;->h:I

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    .line 174
    :goto_1
    return-void

    .line 173
    :cond_1
    if-ge p1, v2, :cond_2

    const-string v0, "Wooboo SDK 1.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_2
    if-le p1, v3, :cond_4

    const-string v0, "Wooboo SDK 1.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fresh ads Interval("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") seconds must be <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0
.end method
