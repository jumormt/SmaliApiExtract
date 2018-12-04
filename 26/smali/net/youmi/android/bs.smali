.class Lnet/youmi/android/bs;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lnet/youmi/android/ee;


# static fields
.field private static c:Landroid/app/Notification;


# instance fields
.field a:Landroid/app/PendingIntent;

.field b:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Lnet/youmi/android/dm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/dm;)V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide v0, p0, Lnet/youmi/android/bs;->f:J

    iput-wide v0, p0, Lnet/youmi/android/bs;->g:J

    iput-object p1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/bs;->h:Lnet/youmi/android/dm;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    const v2, 0x1869e

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/app/PendingIntent;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0"

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d"

    iget-object v4, p0, Lnet/youmi/android/bs;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const v0, 0x1869e

    sget-object v1, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 5

    const-string v0, "\u4e0b\u8f7d\u8fdb\u5ea6:"

    const-string v0, "%"

    :try_start_0
    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u8fdb\u5ea6:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u8fdb\u5ea6:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/youmi/android/bs;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lnet/youmi/android/bs;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x1869e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f,\u6b63\u5728\u5b89\u88c5..."

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/bs;->h:Lnet/youmi/android/dm;

    invoke-static {v0, p1, v1}, Lnet/youmi/android/fd;->a(Landroid/content/Context;Ljava/io/File;Lnet/youmi/android/dm;)Z

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0\u5931\u8d25"

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    sget-object v0, Lnet/youmi/android/bs;->c:Landroid/app/Notification;

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0"

    iget-object v3, p0, Lnet/youmi/android/bs;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lnet/youmi/android/bs;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    const-string v1, "\u66f4\u65b0\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/io/File;
    .locals 13

    const/4 v2, -0x3

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/bs;->h:Lnet/youmi/android/dm;

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_0

    :cond_6
    array-length v0, p1

    if-lez v0, :cond_c

    aget-object v0, p1, v6

    iput-object v0, p0, Lnet/youmi/android/bs;->d:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/bs;->d:Ljava/lang/String;

    iput-object v0, p0, Lnet/youmi/android/bs;->e:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/youmi/android/bs;->h:Lnet/youmi/android/dm;

    iget-object v1, v1, Lnet/youmi/android/dm;->c:Ljava/lang/String;

    invoke-static {v1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/bc;->e()Lnet/youmi/android/ed;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_7

    :cond_7
    :goto_1
    :try_start_2
    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/content/Context;

    invoke-static {v1, p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;Lnet/youmi/android/ee;)Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lnet/youmi/android/bs;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_12

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/youmi/android/bs;->f:J

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    const/16 v4, 0x400

    :try_start_4
    new-array v4, v4, [B

    move v5, v6

    :cond_8
    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-gtz v6, :cond_d

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_a
    :goto_5
    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_8
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v12

    move-object v1, v12

    :goto_6
    if-eqz v1, :cond_b

    :try_start_9
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_c
    :goto_8
    move-object v0, v12

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v0, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/lit8 v5, v5, 0x1

    iget-wide v7, p0, Lnet/youmi/android/bs;->g:J

    int-to-long v9, v6

    add-long v6, v7, v9

    iput-wide v6, p0, Lnet/youmi/android/bs;->g:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    rem-int/lit8 v6, v5, 0x1e

    if-nez v6, :cond_8

    iget-wide v6, p0, Lnet/youmi/android/bs;->f:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_11

    iget-wide v6, p0, Lnet/youmi/android/bs;->g:J

    iget-wide v8, p0, Lnet/youmi/android/bs;->f:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    iget-wide v8, p0, Lnet/youmi/android/bs;->g:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lnet/youmi/android/bs;->f:J

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :cond_e
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/16 v8, 0x63

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    :goto_9
    if-eqz v2, :cond_f

    :try_start_d
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_f
    :goto_a
    if-eqz v1, :cond_10

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :cond_10
    :goto_b
    throw v0

    :cond_11
    const/4 v6, 0x1

    :try_start_f
    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/16 v8, 0x50

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lnet/youmi/android/bs;->publishProgress([Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    :cond_12
    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :cond_13
    :goto_c
    if-eqz v12, :cond_c

    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_8

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v2

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v12

    move-object v2, v12

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v12

    goto :goto_9

    :catch_a
    move-exception v1

    goto/16 :goto_7

    :catch_b
    move-exception v0

    move-object v0, v12

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_4
.end method

.method protected a(Ljava/io/File;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/youmi/android/bs;->b(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u66f4\u65b0\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5"

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bs;->e:Ljava/lang/String;

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u5b58\u50a8\u5361\u4e0d\u53ef\u7528,\u65e0\u6cd5\u66f4\u65b0\u4e0b\u8f7d,\u8bf7\u68c0\u67e5\u5b58\u50a8\u5361\u8bbe\u7f6e!"

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    const-string v0, "\u7f51\u7edc\u9519\u8bef,\u65e0\u6cd5\u66f4\u65b0\u4e0b\u8f7d"

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    :try_start_1
    const-string v0, "\u4e0b\u8f7d\u8fc7\u7a0b\u9047\u5230\u9519\u8bef,\u53d6\u6d88\u672c\u6b21\u4e0b\u8f7d"

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->a(I)V

    goto :goto_0

    :cond_4
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lnet/youmi/android/bs;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->a([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->a(Ljava/io/File;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->a([Ljava/lang/Integer;)V

    return-void
.end method
