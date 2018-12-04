.class Lnet/youmi/android/i;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lnet/youmi/android/ee;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lnet/youmi/android/eb;

.field protected e:J

.field protected f:Ljava/lang/String;

.field protected g:Ljava/io/File;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/eb;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide v0, p0, Lnet/youmi/android/i;->j:J

    iput-wide v0, p0, Lnet/youmi/android/i;->k:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/i;->l:I

    iput-object p1, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/eb;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide v0, p0, Lnet/youmi/android/i;->j:J

    iput-wide v0, p0, Lnet/youmi/android/i;->k:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/i;->l:I

    iput-object p1, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    iput-object p3, p0, Lnet/youmi/android/i;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)I
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "utf-8"

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    iget-wide v1, p0, Lnet/youmi/android/i;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget-wide v1, p0, Lnet/youmi/android/i;->e:J

    long-to-int v1, v1

    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    iget-object v3, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    iget-object v3, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    invoke-static {v3}, Lnet/youmi/android/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_2
    :try_start_4
    iget-object v1, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x5f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lnet/youmi/android/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_9

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    move v0, v6

    :goto_5
    return v0

    :cond_3
    const/16 v1, 0x800

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_6
    :try_start_8
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_8
    move v0, v5

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_b
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_9
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_8
    :goto_b
    throw v0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_6
    move-exception v2

    invoke-static {v2}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_7
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_9
    if-eqz v0, :cond_a

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_a
    :goto_c
    if-eqz v2, :cond_6

    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_9
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_6

    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_6
.end method

.method private a(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)I
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lnet/youmi/android/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lnet/youmi/android/r;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v2, v0, :cond_7

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, -0x3e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    iget-wide v1, p0, Lnet/youmi/android/i;->e:J

    invoke-static {v0, v1, v2}, Lnet/youmi/android/r;->a(Ljava/lang/String;J)Lnet/youmi/android/ci;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_2
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_14

    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_3
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-result v4

    if-gtz v4, :cond_a

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object v2, v7

    :goto_4
    :try_start_6
    invoke-static {v0}, Lnet/youmi/android/r;->b(Lnet/youmi/android/ci;)Lnet/youmi/android/m;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v4, v3, Lnet/youmi/android/m;->c:Ljava/io/File;

    if-eqz v4, :cond_11

    iget-object v4, v3, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v3, v3, Lnet/youmi/android/m;->c:Ljava/io/File;

    iput-object v3, p0, Lnet/youmi/android/i;->g:Ljava/io/File;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_16
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v0, :cond_4

    :try_start_7
    iget-object v3, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_7
    move v0, v8

    goto/16 :goto_0

    :cond_7
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/ci;

    iget-object v3, v0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    iget-object v4, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    :try_start_b
    iget-object v0, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_8
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    :try_start_d
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    :goto_9
    :try_start_e
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v0, :cond_13

    :try_start_f
    iget-object v1, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v0, v2

    move-object v1, v3

    :goto_a
    if-eqz v1, :cond_b

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :cond_b
    :goto_b
    if-eqz v0, :cond_c

    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :cond_c
    :goto_c
    const/4 v0, 0x5

    goto/16 :goto_0

    :catch_3
    move-exception v2

    :try_start_12
    invoke-static {v2}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v2, v3

    goto/16 :goto_4

    :catch_4
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_d
    :try_start_14
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v2, :cond_d

    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :cond_d
    :goto_e
    if-eqz v1, :cond_c

    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_7
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_8
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_9
    move-exception v0

    :try_start_17
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object v0, v2

    move-object v1, v3

    goto :goto_a

    :catchall_0
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    :goto_f
    if-eqz v0, :cond_e

    :try_start_18
    iget-object v4, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v4, :cond_e

    iget-object v4, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_e
    :goto_10
    :try_start_19
    throw v1

    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_d

    :catch_b
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_11
    if-eqz v2, :cond_f

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    :cond_f
    :goto_12
    if-eqz v1, :cond_10

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    :cond_10
    :goto_13
    throw v0

    :cond_11
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_14
    if-eqz v0, :cond_12

    :try_start_1c
    iget-object v3, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v3, :cond_12

    iget-object v3, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_a

    :catch_c
    move-exception v0

    :try_start_1d
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_13
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_a

    :catch_d
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_e
    move-exception v2

    invoke-static {v2}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_f
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_10
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_11
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_11

    :catch_12
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    goto/16 :goto_d

    :catch_13
    move-exception v0

    goto/16 :goto_d

    :catchall_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_f

    :catchall_6
    move-exception v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_f

    :catchall_7
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_f

    :catchall_8
    move-exception v1

    goto/16 :goto_f

    :catch_14
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    goto/16 :goto_9

    :catch_15
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v7

    goto/16 :goto_9

    :catch_16
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_9

    :cond_12
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_a

    :cond_13
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_a

    :cond_14
    move-object v2, v1

    move-object v1, v7

    goto :goto_14

    :cond_15
    move-object v1, v7

    move-object v2, v7

    goto :goto_14
.end method

.method private a(Lorg/apache/http/HttpResponse;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "Content-Disposition"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    move v1, v3

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/cv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private f()Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/r;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v5

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    :goto_1
    move v0, v5

    :goto_2
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/m;

    iget-object v3, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    iget-object v4, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lnet/youmi/android/r;->a(Lnet/youmi/android/m;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    iget-object v4, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/youmi/android/ef;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    iput-object v0, p0, Lnet/youmi/android/i;->g:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object v0, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v0, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/i;->j:J

    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    if-nez v0, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-lez v0, :cond_16

    aget-object v0, p1, v6

    iput-object v0, p0, Lnet/youmi/android/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/i;->a:Landroid/content/Context;

    invoke-static {v1, p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;Lnet/youmi/android/ee;)Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lnet/youmi/android/i;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x23

    invoke-static {v4}, Lnet/youmi/android/bn;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x23

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lnet/youmi/android/i;->publishProgress([Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/youmi/android/i;->e:J

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_1
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_a

    const/4 v1, 0x1

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_9
    :goto_3
    move-object v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    :try_start_7
    const-string v5, "application/octet-stream"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_c

    const/4 v1, 0x1

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v2, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_b

    :try_start_8
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    :try_start_9
    const-string v2, "text/html"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_e

    const/4 v1, 0x0

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_d
    :goto_5
    move-object v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    :try_start_b
    const-string v2, "xhtml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_10

    const/4 v1, 0x0

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_f

    :try_start_c
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_f
    :goto_6
    move-object v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    :try_start_d
    const-string v2, "xml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_12

    const/4 v1, 0x0

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_11

    :try_start_e
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_11
    :goto_7
    move-object v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_12
    :try_start_f
    const-string v2, "wml"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_14

    const/4 v1, 0x0

    iput v1, p0, Lnet/youmi/android/i;->l:I

    invoke-direct {p0, v3}, Lnet/youmi/android/i;->a(Lorg/apache/http/HttpEntity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_13

    :try_start_10
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :cond_13
    :goto_8
    move-object v0, v1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_14
    const/4 v2, -0x1

    :try_start_11
    iput v2, p0, Lnet/youmi/android/i;->l:I

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    :cond_15
    :goto_9
    move-object v0, v1

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_9
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_a
    :try_start_13
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v1, :cond_16

    :try_start_14
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    :cond_16
    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :catch_a
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_c
    if-eqz v1, :cond_17

    :try_start_15
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :cond_17
    :goto_d
    throw v0

    :catch_b
    move-exception v1

    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_18
    if-eqz v0, :cond_16

    :try_start_16
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_b

    :catch_c
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_a
.end method

.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/i;->k:J

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/youmi/android/i;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/youmi/android/em;

    iget-object v1, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/i;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/em;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v1, p0, v0}, Lnet/youmi/android/eb;->a(Lnet/youmi/android/i;Lnet/youmi/android/em;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_5
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->e()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    packed-switch v0, :pswitch_data_1

    :try_start_7
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->e()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_9
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    iget-object v1, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    iget-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lnet/youmi/android/eb;->a(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    :pswitch_3
    :try_start_b
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->f()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_d
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    iget-object v1, p0, Lnet/youmi/android/i;->g:Ljava/io/File;

    iget-object v2, p0, Lnet/youmi/android/i;->f:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lnet/youmi/android/eb;->b(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_0

    :pswitch_5
    :try_start_f
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->g()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :pswitch_6
    :try_start_11
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->h()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_0

    :cond_2
    :try_start_13
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0}, Lnet/youmi/android/eb;->e()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_14
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    if-eqz v0, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v1, v0}, Lnet/youmi/android/eb;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnet/youmi/android/i;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/i;->d:Lnet/youmi/android/eb;

    invoke-interface {v0, p0}, Lnet/youmi/android/eb;->a(Lnet/youmi/android/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method d()J
    .locals 4

    iget-wide v0, p0, Lnet/youmi/android/i;->k:J

    iget-wide v2, p0, Lnet/youmi/android/i;->j:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/youmi/android/i;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method e()J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/i;->j:J

    return-wide v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/youmi/android/i;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/youmi/android/i;->a([Ljava/lang/Integer;)V

    return-void
.end method
