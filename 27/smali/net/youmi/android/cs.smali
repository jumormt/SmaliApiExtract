.class Lnet/youmi/android/cs;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/cs;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/content/Context;[Ljava/lang/String;I)Lnet/youmi/android/cs;
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-nez p1, :cond_1

    move-object v0, v9

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    array-length v0, p1

    if-ge v0, v1, :cond_2

    move-object v0, v9

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/youmi/android/cs;

    invoke-direct {v0, p0}, Lnet/youmi/android/cs;-><init>(Landroid/content/Context;)V

    if-gtz p2, :cond_8

    const/16 v1, 0x64

    :goto_1
    iput v1, v0, Lnet/youmi/android/cs;->c:I

    :goto_2
    array-length v3, p1

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lnet/youmi/android/cs;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_3
    move-object v0, v9

    goto :goto_0

    :cond_3
    aget-object v3, p1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v6, :cond_6

    if-lez v7, :cond_6

    if-lt v6, v7, :cond_7

    div-int v4, v6, v1

    :cond_6
    :goto_5
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v6, Lnet/youmi/android/as;

    invoke-direct {v6}, Lnet/youmi/android/as;-><init>()V

    iput-object v3, v6, Lnet/youmi/android/as;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v6, Lnet/youmi/android/as;->b:Landroid/net/Uri;

    iget-object v3, v5, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, v6, Lnet/youmi/android/as;->d:Ljava/lang/String;

    iput-object v4, v6, Lnet/youmi/android/as;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Lnet/youmi/android/cs;->a(Lnet/youmi/android/as;)V

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_7
    div-int v4, v7, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_8
    move v1, p2

    goto :goto_1
.end method

.method private a(Lnet/youmi/android/as;)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method a(I)Lnet/youmi/android/as;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/as;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, v1, Lnet/youmi/android/as;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, p2

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/youmi/android/cs;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    iget v3, p0, Lnet/youmi/android/cs;->c:I

    iget v4, p0, Lnet/youmi/android/cs;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v2, 0x1080066

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, p2

    goto :goto_0

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method
