.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cookie2PathAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    const/4 v3, 0x0

    .line 671
    if-nez p1, :cond_0

    .line 672
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_0
    if-nez p2, :cond_1

    .line 675
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie origin may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 679
    sget-object v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid cookie state: path attribute is null."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move v1, v3

    .line 689
    :goto_0
    return v1

    .line 682
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    const-string v0, "/"

    .line 686
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 687
    goto :goto_0

    .line 689
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    if-nez p2, :cond_1

    .line 623
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Missing value for path attribute"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Blank value for path attribute"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/Cookie;->setPathAttributeSpecified(Z)V

    .line 632
    return-void
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_0
    if-nez p2, :cond_1

    .line 644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cookie origin may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path of origin host may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 652
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v2, "Invalid cookie state: path attribute is null."

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 656
    const-string v0, "/"

    .line 659
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 660
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal path attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". Path of origin: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_5
    return-void
.end method
