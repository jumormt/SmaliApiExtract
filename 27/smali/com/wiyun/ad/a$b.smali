.class final Lcom/wiyun/ad/a$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wiyun/ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/wiyun/ad/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/wiyun/ad/a$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/wiyun/ad/a$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wiyun/ad/a$b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wiyun/ad/a$b;->setDaemon(Z)V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/a$b;)I
    .locals 1

    iget v0, p0, Lcom/wiyun/ad/a$b;->d:I

    return v0
.end method

.method private a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    const/16 v2, 0x2710

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {}, Lcom/wiyun/ad/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wiyun/ad/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wiyun/ad/l;->d()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    return-object v1
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/wiyun/ad/a$b$1;

    invoke-direct {v1, p0, p1}, Lcom/wiyun/ad/a$b$1;-><init>(Lcom/wiyun/ad/a$b;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    :goto_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    iget v4, p0, Lcom/wiyun/ad/a$b;->e:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/wiyun/ad/a$b;->e:I

    iget v2, p0, Lcom/wiyun/ad/a$b;->e:I

    invoke-direct {p0, v2}, Lcom/wiyun/ad/a$b;->a(I)V

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_4
    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic b(Lcom/wiyun/ad/a$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/wiyun/ad/a$b;)Lcom/wiyun/ad/a;
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Lcom/wiyun/ad/a$b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/wiyun/ad/a$b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/wiyun/ad/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0x12c

    if-ge v0, v3, :cond_2

    const-string v0, "Content-Length"

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/f;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/a$b;->d:I

    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    iget-object v4, p0, Lcom/wiyun/ad/a$b;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/wiyun/ad/a;->a(Lcom/wiyun/ad/a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lcom/wiyun/ad/a$b$2;

    invoke-direct {v2, p0}, Lcom/wiyun/ad/a$b$2;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/wiyun/ad/a$b$6;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/a$b$6;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v4, Lcom/wiyun/ad/a$b$3;

    invoke-direct {v4, p0}, Lcom/wiyun/ad/a$b$3;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/wiyun/ad/a$b;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/wiyun/ad/a$b$4;

    invoke-direct {v2, p0}, Lcom/wiyun/ad/a$b$4;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v2}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/wiyun/ad/a$b$5;

    invoke-direct {v0, p0}, Lcom/wiyun/ad/a$b$5;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0}, Lcom/wiyun/ad/a$b$5;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/wiyun/ad/a$b$6;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/a$b$6;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "WiYun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to download apk: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wiyun/ad/a$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/wiyun/ad/a$b$6;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/a$b$6;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_5
    iget-object v0, p0, Lcom/wiyun/ad/a$b;->a:Lcom/wiyun/ad/a;

    invoke-virtual {v0}, Lcom/wiyun/ad/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/wiyun/ad/a$b$6;

    invoke-direct {v1, p0}, Lcom/wiyun/ad/a$b$6;-><init>(Lcom/wiyun/ad/a$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v2
.end method
