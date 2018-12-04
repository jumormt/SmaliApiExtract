.class Lnet/youmi/android/dc;
.super Lnet/youmi/android/dg;


# instance fields
.field private i:Lnet/youmi/android/cq;


# direct methods
.method constructor <init>(Lnet/youmi/android/eb;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/dg;-><init>(Lnet/youmi/android/eb;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lnet/youmi/android/cq;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lnet/youmi/android/cq;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lnet/youmi/android/dc;->i:Lnet/youmi/android/cq;
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
    .locals 1

    :try_start_0
    new-instance v0, Lnet/youmi/android/cq;

    invoke-direct {v0, p1}, Lnet/youmi/android/cq;-><init>([B)V

    iput-object v0, p0, Lnet/youmi/android/dc;->i:Lnet/youmi/android/cq;
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

.method c()Lnet/youmi/android/cq;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dc;->i:Lnet/youmi/android/cq;

    return-object v0
.end method
