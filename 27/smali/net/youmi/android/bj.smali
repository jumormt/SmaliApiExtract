.class abstract Lnet/youmi/android/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/ee;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected f:Ljava/lang/String;

.field protected final g:Ljava/lang/String;

.field protected h:Landroid/content/Context;

.field protected i:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected j:Ljava/io/InputStream;

.field protected k:Ljava/io/OutputStream;

.field protected l:Ljava/util/List;

.field protected m:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lnet/youmi/android/bj;->g:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lnet/youmi/android/bj;->m:I

    iput-object p1, p0, Lnet/youmi/android/bj;->h:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/bj;->c:Ljava/lang/String;

    iput-object p2, p0, Lnet/youmi/android/bj;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bj;->h:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1e

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1d

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1c

    :cond_2
    :goto_2
    move v0, v1

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/bj;->h:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/s;->b(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    :try_start_5
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b

    :cond_5
    :goto_4
    :try_start_6
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1a

    :cond_6
    :goto_5
    :try_start_7
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_19

    :cond_7
    :goto_6
    move v0, v2

    goto :goto_3

    :cond_8
    :try_start_8
    iget-object v0, p0, Lnet/youmi/android/bj;->h:Landroid/content/Context;

    invoke-static {v0, p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;Lnet/youmi/android/ee;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-ne p1, v2, :cond_c

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lnet/youmi/android/bj;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/youmi/android/bj;->l:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/youmi/android/bj;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lnet/youmi/android/bj;->l:Ljava/util/List;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_9
    :goto_7
    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_22

    invoke-virtual {p0, v0}, Lnet/youmi/android/bj;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-nez v1, :cond_10

    iget v0, p0, Lnet/youmi/android/bj;->m:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_18

    :cond_a
    :goto_8
    :try_start_a
    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    :cond_b
    :goto_9
    :try_start_b
    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_c
    :try_start_c
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lnet/youmi/android/bj;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_d
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_d
    :goto_a
    :try_start_e
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    :cond_e
    :goto_b
    :try_start_f
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :cond_f
    :goto_c
    move v0, v4

    goto/16 :goto_3

    :cond_10
    :try_start_10
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/youmi/android/bj;->e:J

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lnet/youmi/android/bj;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_d
    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_14

    invoke-virtual {p0}, Lnet/youmi/android/bj;->b()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v0

    if-eqz v0, :cond_18

    :try_start_11
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_16

    :cond_11
    :goto_e
    :try_start_12
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    :cond_12
    :goto_f
    :try_start_13
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    :cond_13
    :goto_10
    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_14
    :try_start_14
    iget-object v2, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    :try_start_15
    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    :cond_15
    :goto_11
    :try_start_16
    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    :cond_16
    :goto_12
    :try_start_17
    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    :cond_17
    :goto_13
    throw v0

    :cond_18
    :try_start_18
    iget v0, p0, Lnet/youmi/android/bj;->m:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13

    :cond_19
    :goto_14
    :try_start_1a
    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    :cond_1a
    :goto_15
    :try_start_1b
    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :cond_1b
    :try_start_1c
    iget v0, p0, Lnet/youmi/android/bj;->m:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :try_start_1d
    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    :cond_1c
    :goto_16
    :try_start_1e
    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    :cond_1d
    :goto_17
    :try_start_1f
    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_1e
    :try_start_20
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f

    :cond_1f
    :goto_18
    :try_start_21
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_e

    :cond_20
    :goto_19
    :try_start_22
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d

    :cond_21
    :goto_1a
    move v0, v4

    goto/16 :goto_3

    :cond_22
    :try_start_23
    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lnet/youmi/android/bj;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    :cond_23
    :goto_1b
    :try_start_24
    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lnet/youmi/android/bj;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b

    :cond_24
    :goto_1c
    :try_start_25
    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lnet/youmi/android/bj;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_a

    :cond_25
    :goto_1d
    move v0, v4

    goto/16 :goto_3

    :catch_4
    move-exception v1

    goto/16 :goto_13

    :catch_5
    move-exception v1

    goto/16 :goto_12

    :catch_6
    move-exception v1

    goto/16 :goto_11

    :catch_7
    move-exception v0

    goto/16 :goto_c

    :catch_8
    move-exception v0

    goto/16 :goto_b

    :catch_9
    move-exception v0

    goto/16 :goto_a

    :catch_a
    move-exception v0

    goto :goto_1d

    :catch_b
    move-exception v0

    goto :goto_1c

    :catch_c
    move-exception v0

    goto :goto_1b

    :catch_d
    move-exception v0

    goto :goto_1a

    :catch_e
    move-exception v0

    goto :goto_19

    :catch_f
    move-exception v0

    goto :goto_18

    :catch_10
    move-exception v1

    goto :goto_17

    :catch_11
    move-exception v1

    goto :goto_16

    :catch_12
    move-exception v1

    goto/16 :goto_15

    :catch_13
    move-exception v1

    goto/16 :goto_14

    :catch_14
    move-exception v0

    goto/16 :goto_10

    :catch_15
    move-exception v0

    goto/16 :goto_f

    :catch_16
    move-exception v0

    goto/16 :goto_e

    :catch_17
    move-exception v1

    goto/16 :goto_9

    :catch_18
    move-exception v1

    goto/16 :goto_8

    :catch_19
    move-exception v0

    goto/16 :goto_6

    :catch_1a
    move-exception v0

    goto/16 :goto_5

    :catch_1b
    move-exception v0

    goto/16 :goto_4

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_1

    :catch_1e
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method a(Ljava/util/List;)I
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/bj;->l:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/youmi/android/bj;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bj;->d:Ljava/lang/String;

    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract a(Lorg/apache/http/HttpResponse;)Z
.end method

.method protected abstract b()Z
.end method
