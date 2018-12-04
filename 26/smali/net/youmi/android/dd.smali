.class Lnet/youmi/android/dd;
.super Lnet/youmi/android/di;


# instance fields
.field private i:Lnet/youmi/android/cr;


# direct methods
.method constructor <init>(Lnet/youmi/android/ed;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/di;-><init>(Lnet/youmi/android/ed;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lnet/youmi/android/cr;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lnet/youmi/android/cr;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lnet/youmi/android/dd;->i:Lnet/youmi/android/cr;
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
    new-instance v0, Lnet/youmi/android/cr;

    invoke-direct {v0, p1}, Lnet/youmi/android/cr;-><init>([B)V

    iput-object v0, p0, Lnet/youmi/android/dd;->i:Lnet/youmi/android/cr;
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

.method c()Lnet/youmi/android/cr;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dd;->i:Lnet/youmi/android/cr;

    return-object v0
.end method
