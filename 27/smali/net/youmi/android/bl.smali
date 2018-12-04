.class Lnet/youmi/android/bl;
.super Lnet/youmi/android/dh;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lnet/youmi/android/dh;-><init>()V

    iput-boolean v0, p0, Lnet/youmi/android/bl;->k:Z

    iput-boolean v0, p0, Lnet/youmi/android/bl;->k:Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->e:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bl;->e:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()I
    .locals 7

    const/4 v6, 0x4

    const-string v0, "utf-8"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/bl;->f()Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iput v6, p0, Lnet/youmi/android/bl;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/bl;->i()V

    iget v0, p0, Lnet/youmi/android/bl;->f:I

    :goto_1
    return v0

    :cond_0
    const-wide/16 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lnet/youmi/android/bl;->a(J)V

    iget-boolean v1, p0, Lnet/youmi/android/bl;->k:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lnet/youmi/android/bl;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v3, p0, Lnet/youmi/android/bl;->j:Ljava/util/List;

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/youmi/android/bl;->c:J

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/youmi/android/bl;->i:Ljava/lang/String;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v4, p0, Lnet/youmi/android/bl;->i:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "utf-8"

    iput-object v4, p0, Lnet/youmi/android/bl;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lnet/youmi/android/bl;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_6
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_7
    const/4 v1, 0x6

    :try_start_5
    iput v1, p0, Lnet/youmi/android/bl;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/bl;->i()V

    iget v0, p0, Lnet/youmi/android/bl;->f:I

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lnet/youmi/android/bl;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_8
    iput v6, p0, Lnet/youmi/android/bl;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/bl;->i()V

    iget v0, p0, Lnet/youmi/android/bl;->f:I

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lnet/youmi/android/bl;->a(J)V

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lnet/youmi/android/bl;->i:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lnet/youmi/android/bl;->h:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :cond_4
    :try_start_8
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    const/4 v1, 0x7

    :try_start_9
    iput v1, p0, Lnet/youmi/android/bl;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/bl;->i()V

    iget v0, p0, Lnet/youmi/android/bl;->f:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_7
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bl;->h:Ljava/lang/String;

    return-object v0
.end method
