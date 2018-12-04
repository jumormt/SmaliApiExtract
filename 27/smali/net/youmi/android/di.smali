.class abstract Lnet/youmi/android/di;
.super Lnet/youmi/android/dh;


# instance fields
.field protected h:Lnet/youmi/android/ed;


# direct methods
.method constructor <init>(Lnet/youmi/android/ed;)V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/dh;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/di;->h:Lnet/youmi/android/ed;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/di;->e:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/di;->e:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/io/File;)Z
.end method

.method protected abstract a([B)Z
.end method

.method protected b()I
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/di;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/di;->h:Lnet/youmi/android/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/di;->h:Lnet/youmi/android/ed;

    iget-object v1, p0, Lnet/youmi/android/di;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/youmi/android/ed;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/youmi/android/di;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lnet/youmi/android/di;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/di;->i()V

    iget v0, p0, Lnet/youmi/android/di;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/di;->f()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lnet/youmi/android/di;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/youmi/android/di;->c:J

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    iput v0, p0, Lnet/youmi/android/di;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/di;->i()V

    iget v0, p0, Lnet/youmi/android/di;->f:I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-wide v2, p0, Lnet/youmi/android/di;->c:J

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_4

    const/4 v2, 0x7

    iput v2, p0, Lnet/youmi/android/di;->f:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    iget-object v3, p0, Lnet/youmi/android/di;->h:Lnet/youmi/android/ed;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/youmi/android/di;->h:Lnet/youmi/android/ed;

    iget-object v4, p0, Lnet/youmi/android/di;->e:Landroid/content/Context;

    iget-object v5, p0, Lnet/youmi/android/di;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lnet/youmi/android/ed;->a(Landroid/content/Context;Ljava/lang/String;[B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {p0, v2}, Lnet/youmi/android/di;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    iput v2, p0, Lnet/youmi/android/di;->f:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    :try_start_7
    invoke-virtual {p0}, Lnet/youmi/android/di;->i()V

    iget v0, p0, Lnet/youmi/android/di;->f:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    iput v4, p0, Lnet/youmi/android/di;->f:I

    iget-wide v4, p0, Lnet/youmi/android/di;->d:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/youmi/android/di;->d:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x4

    iput v0, p0, Lnet/youmi/android/di;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/di;->i()V

    iget v0, p0, Lnet/youmi/android/di;->f:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x7

    :try_start_8
    iput v2, p0, Lnet/youmi/android/di;->f:I

    goto :goto_3

    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lnet/youmi/android/di;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/di;->i()V

    iget v0, p0, Lnet/youmi/android/di;->f:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v3

    goto :goto_2
.end method
