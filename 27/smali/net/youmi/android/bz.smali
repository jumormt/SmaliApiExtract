.class Lnet/youmi/android/bz;
.super Lnet/youmi/android/di;


# instance fields
.field private i:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/youmi/android/ed;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/di;-><init>(Lnet/youmi/android/ed;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bz;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a([B)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bz;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bz;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method
