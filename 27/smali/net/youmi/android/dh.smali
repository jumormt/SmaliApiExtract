.class abstract Lnet/youmi/android/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/dn;


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:J

.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:Lnet/youmi/android/cc;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/youmi/android/dh;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/dh;->f:I

    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 3

    const-string v2, ";"

    sget-object v0, Lnet/youmi/android/dh;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0(Linux;U;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/eh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/eh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/eh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AppleWebkit/533.1(KHTML,like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/dh;->h:Ljava/lang/String;

    :cond_0
    sget-object v0, Lnet/youmi/android/dh;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/dh;->e:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/dh;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/youmi/android/dh;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/youmi/android/dh;->a()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnet/youmi/android/dh;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected a(J)V
    .locals 1

    iput-wide p1, p0, Lnet/youmi/android/dh;->d:J

    const/4 v0, 0x5

    iput v0, p0, Lnet/youmi/android/dh;->f:I

    invoke-virtual {p0}, Lnet/youmi/android/dh;->i()V

    return-void
.end method

.method protected abstract b()I
.end method

.method protected e()Lorg/apache/http/params/HttpParams;
    .locals 5

    const-string v2, "utf-8"

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {}, Lnet/youmi/android/dh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v1, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v1, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/youmi/android/dh;->e:Landroid/content/Context;

    invoke-static {v1}, Lnet/youmi/android/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "http.route.default-proxy"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    return-object v0
.end method

.method protected f()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p0}, Lnet/youmi/android/dh;->e()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lnet/youmi/android/cw;

    invoke-direct {v1, p0}, Lnet/youmi/android/cw;-><init>(Lnet/youmi/android/dh;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/dh;->f:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dh;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dh;->g:Lnet/youmi/android/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dh;->g:Lnet/youmi/android/cc;

    invoke-interface {v0, p0}, Lnet/youmi/android/cc;->a(Lnet/youmi/android/dn;)V

    :cond_0
    return-void
.end method
