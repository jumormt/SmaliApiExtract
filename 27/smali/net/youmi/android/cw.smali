.class Lnet/youmi/android/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# instance fields
.field final synthetic a:Lnet/youmi/android/dh;


# direct methods
.method constructor <init>(Lnet/youmi/android/dh;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cw;->a:Lnet/youmi/android/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 5

    const/4 v1, 0x0

    const-string v4, "location"

    const-string v3, "Location"

    const-string v2, "LOCATION"

    const-string v0, "location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "Location"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Location"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "LOCATION"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "LOCATION"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/youmi/android/cw;->a:Lnet/youmi/android/dh;

    iput-object v0, v1, Lnet/youmi/android/dh;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x133

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
