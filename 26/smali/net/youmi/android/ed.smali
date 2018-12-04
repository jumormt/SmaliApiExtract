.class Lnet/youmi/android/ed;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 5

    const-wide/16 v1, -0x1

    const-string v4, "/"

    const-string v3, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/ed;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    iput-wide v1, p0, Lnet/youmi/android/ed;->c:J

    iput-wide v1, p0, Lnet/youmi/android/ed;->d:J

    iput-object p1, p0, Lnet/youmi/android/ed;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    iput-wide p2, p0, Lnet/youmi/android/ed;->c:J

    iput-wide p4, p0, Lnet/youmi/android/ed;->d:J

    invoke-virtual {p0}, Lnet/youmi/android/ed;->a()V

    invoke-direct {p0}, Lnet/youmi/android/ed;->c()V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/ed;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lnet/youmi/android/ed;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lnet/youmi/android/ed;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnet/youmi/android/ed;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/ed;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lnet/youmi/android/ed;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lnet/youmi/android/ed;)J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/ed;->c:J

    return-wide v0
.end method

.method private c()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    :try_start_0
    iget-wide v0, p0, Lnet/youmi/android/ed;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lnet/youmi/android/ed;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lnet/youmi/android/ed;->c:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lnet/youmi/android/ed;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/an;

    invoke-direct {v1, p0}, Lnet/youmi/android/an;-><init>(Lnet/youmi/android/ed;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/youmi/android/ed;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/ed;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/youmi/android/ed;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0, p1}, Lnet/youmi/android/ed;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method e(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/youmi/android/ed;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/youmi/android/ed;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method f(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/ed;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
