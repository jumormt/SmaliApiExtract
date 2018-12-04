.class Lnet/youmi/android/dw;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lnet/youmi/android/ee;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private c:Lnet/youmi/android/dl;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/dl;Lnet/youmi/android/cu;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lnet/youmi/android/dw;->h:Z

    iput-object p1, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    if-nez p3, :cond_0

    iput-boolean v0, p0, Lnet/youmi/android/dw;->h:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lnet/youmi/android/cu;->s()Z

    move-result v0

    iput-boolean v0, p0, Lnet/youmi/android/dw;->h:Z

    invoke-virtual {p3}, Lnet/youmi/android/cu;->v()V

    invoke-virtual {p3}, Lnet/youmi/android/cu;->B()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dw;->k:J

    invoke-virtual {p3}, Lnet/youmi/android/cu;->A()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dw;->l:J

    invoke-virtual {p3}, Lnet/youmi/android/cu;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dw;->f:Ljava/lang/String;

    invoke-virtual {p3}, Lnet/youmi/android/cu;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dw;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dw;->i:Ljava/lang/String;

    invoke-virtual {p3}, Lnet/youmi/android/cu;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dw;->j:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method a()J
    .locals 4

    iget-wide v0, p0, Lnet/youmi/android/dw;->e:J

    iget-wide v2, p0, Lnet/youmi/android/dw;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dw;->d:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    invoke-static {v2, p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;Lnet/youmi/android/ee;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    iput-object v2, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    iget-object v6, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v2, 0x400

    :try_start_5
    new-array v2, v2, [B

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :cond_5
    :goto_4
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    if-gtz v8, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_11

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    :goto_5
    :try_start_7
    iget-object v2, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_7
    :try_start_a
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :try_start_b
    invoke-virtual {v1, v2, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v8, v3, 0xa
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_d

    const/4 v8, 0x1

    :try_start_c
    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    div-long/2addr v10, v4

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v8

    :try_start_d
    invoke-static {v8}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_9
    :try_start_e
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v1, :cond_a

    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    :goto_a
    if-eqz v2, :cond_b

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :cond_b
    :goto_b
    :try_start_11
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v8, 0x1

    :try_start_12
    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_d
    if-eqz v1, :cond_e

    :try_start_13
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :cond_e
    :goto_e
    if-eqz v2, :cond_f

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    :cond_f
    :goto_f
    :try_start_15
    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    :cond_10
    :goto_10
    throw v0

    :catch_5
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5

    :catch_6
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_8
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_9
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_a
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_b
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_c
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_d
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_e
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_11
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_11
    if-eqz v0, :cond_12

    :try_start_17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    :cond_12
    :goto_12
    if-eqz v1, :cond_13

    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    :cond_13
    :goto_13
    :try_start_19
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    goto :goto_c

    :catch_f
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_10
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_11
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_12
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto/16 :goto_9

    :cond_14
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_11
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    invoke-interface {v1, v0}, Lnet/youmi/android/dl;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method protected a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dw;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v3

    :goto_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    :goto_2
    move v0, v2

    :goto_3
    return v0

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    :goto_4
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_3
    :goto_6
    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_7
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_5
    :goto_9
    throw v0

    :cond_6
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_a
    if-eqz v0, :cond_7

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :cond_7
    :goto_b
    if-eqz v1, :cond_3

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_7

    :catch_a
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    :catch_b
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :cond_8
    move-object v1, v0

    move-object v0, v3

    goto :goto_a

    :cond_9
    move-object v0, v3

    move-object v1, v3

    goto :goto_a
.end method

.method protected a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v0, v11

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    array-length v0, p1

    if-lez v0, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v9

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v3, v9

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v3, v0, :cond_11

    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_4
    move-object v0, v2

    goto :goto_1

    :cond_3
    :try_start_3
    aget-object v2, p1, v0

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v10, :cond_4

    :cond_4
    iget-object v3, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v3, :cond_5

    iget-object v3, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    invoke-static {v3, p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;Lnet/youmi/android/ee;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    iput-object v3, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_5
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v4, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v5, "Last-Modified"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    :try_start_5
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v5}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v5

    :goto_5
    :try_start_6
    invoke-static {}, Lnet/youmi/android/bc;->d()Lnet/youmi/android/ed;

    move-result-object v7

    invoke-virtual {v7, v2}, Lnet/youmi/android/ed;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    cmp-long v7, v5, v12

    if-gtz v7, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    :goto_7
    const/4 v2, 0x1

    :try_start_8
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x64

    array-length v5, p1

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    move-wide v5, v12

    goto :goto_5

    :cond_8
    :try_start_9
    invoke-virtual {p0, v4, v2}, Lnet/youmi/android/dw;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v2, v11

    goto :goto_6

    :cond_a
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    :try_start_b
    invoke-virtual {p0, v4, v2}, Lnet/youmi/android/dw;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    :try_start_c
    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_a
    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception v7

    invoke-static {v7}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v2, v3

    :goto_b
    if-eqz v2, :cond_b

    :try_start_e
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_b
    :goto_c
    const/4 v2, 0x1

    :try_start_f
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x64

    array-length v5, p1

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_8

    :catch_5
    move-exception v4

    :try_start_10
    invoke-static {v4}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_d
    if-eqz v2, :cond_c

    :try_start_11
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :goto_e
    const/4 v2, 0x1

    :try_start_12
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    array-length v4, p1

    div-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :goto_f
    :try_start_13
    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catch_6
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    :cond_d
    :goto_10
    move-object v0, v11

    goto/16 :goto_1

    :cond_e
    :try_start_16
    invoke-virtual {p0, v4, v2}, Lnet/youmi/android/dw;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    :try_start_17
    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_11
    :try_start_18
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object v2, v3

    goto/16 :goto_6

    :cond_f
    move-object v2, v3

    :goto_12
    if-eqz v2, :cond_10

    :try_start_19
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_10
    :goto_13
    const/4 v2, 0x1

    :try_start_1a
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x64

    array-length v5, p1

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_8

    :catch_7
    move-exception v2

    goto/16 :goto_8

    :cond_11
    :try_start_1b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_9
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_1
    move-exception v0

    :try_start_1c
    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    :cond_12
    :goto_14
    throw v0

    :catch_a
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_13
    :try_start_1d
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_c
    move-exception v2

    goto/16 :goto_7

    :catch_d
    move-exception v4

    goto :goto_11

    :catch_e
    move-exception v2

    goto/16 :goto_c

    :catch_f
    move-exception v2

    goto/16 :goto_e

    :catch_10
    move-exception v2

    goto :goto_13

    :catch_11
    move-exception v0

    goto/16 :goto_f

    :catchall_2
    move-exception v1

    move-object v2, v11

    goto/16 :goto_d

    :catch_12
    move-exception v2

    move-object v2, v11

    goto/16 :goto_b

    :catch_13
    move-exception v2

    goto/16 :goto_8

    :cond_14
    move-wide v5, v12

    goto/16 :goto_5

    :cond_15
    move-object v2, v11

    goto :goto_12
.end method

.method protected varargs a([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/youmi/android/dw;->publishProgress([Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    iget-object v1, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/youmi/android/dw;->a([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-object v2, p0, Lnet/youmi/android/dw;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v2, v4

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/dw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_3
    move-object v0, v4

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_a
    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_5
    :goto_4
    throw v0

    :catch_6
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    :try_start_b
    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/youmi/android/dw;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected b([Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dw;->e:J

    iget-object v0, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    invoke-interface {v0}, Lnet/youmi/android/dl;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    invoke-interface {v0, p0, p1}, Lnet/youmi/android/dl;->a(Lnet/youmi/android/dw;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/dw;->c:Lnet/youmi/android/dl;

    invoke-interface {v0}, Lnet/youmi/android/dl;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/dw;->h:Z

    return v0
.end method

.method c()J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/dw;->k:J

    return-wide v0
.end method

.method d()J
    .locals 4

    iget-wide v0, p0, Lnet/youmi/android/dw;->d:J

    iget-wide v2, p0, Lnet/youmi/android/dw;->l:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/youmi/android/dw;->a([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dw;->f:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dw;->g:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dw;->i:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dw;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/youmi/android/dw;->b([Ljava/lang/String;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/youmi/android/dw;->a([Ljava/lang/Integer;)V

    return-void
.end method
