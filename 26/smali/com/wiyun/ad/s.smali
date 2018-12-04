.class Lcom/wiyun/ad/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/s;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BII)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B[B[B)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2
    array-length v3, p2

    invoke-static {p2, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101009c

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a1

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v6, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v10

    move-object v1, v10

    move-object v2, v10

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v10

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009d
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009d
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x101009d
    .end array-data
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/wiyun/ad/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wiyun/ad/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.wiyun.ad.sdk"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "loading_ad"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/s;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/wiyun/ad/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.wiyun.ad.sdk"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/wiyun/ad/n;->e:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "wy_dialog_bg"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
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

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/wiyun/ad/n;->f:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "wy_progress_dialog_bg"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
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

.method public static d()Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v10, 0x0

    :try_start_0
    sget-object v0, Lcom/wiyun/ad/n;->c:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/wiyun/ad/n;->c:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/wiyun/ad/n;->b:[B

    const/4 v2, 0x0

    sget-object v3, Lcom/wiyun/ad/n;->b:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    sget-object v2, Lcom/wiyun/ad/n;->d:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/wiyun/ad/n;->d:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101009c

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10100a1

    aput v9, v7, v8

    invoke-virtual {v6, v7, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v6, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v10

    move-object v1, v10

    move-object v2, v10

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v10

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009d
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009d
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x101009d
    .end array-data
.end method

.method private static e()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wiyun/ad/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/wiyun/ad/s;->b:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
