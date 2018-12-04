.class Lnet/youmi/android/aq;
.super Lnet/youmi/android/bj;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/bj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/youmi/android/aq;->b:Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lnet/youmi/android/aq;->b:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lnet/youmi/android/aq;->k:Ljava/io/OutputStream;

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lorg/apache/http/HttpResponse;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Z
    .locals 4

    const/4 v3, 0x2

    const-string v0, "utf-8"

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/aq;->b:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/aq;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lnet/youmi/android/aq;->a:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/aq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/aq;->a:Ljava/lang/String;

    invoke-static {v1}, Lnet/youmi/android/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lnet/youmi/android/aq;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/aq;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/aq;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lnet/youmi/android/aq;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lnet/youmi/android/aq;->m:I

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lnet/youmi/android/aq;->m:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
