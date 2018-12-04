.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;
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
    name = "Cookie2DomainAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 6
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    const/4 v5, 0x0

    .line 796
    if-nez p1, :cond_0

    .line 797
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 799
    :cond_0
    if-nez p2, :cond_1

    .line 800
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie origin may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "cookieDomain":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 816
    :goto_0
    return v3

    .line 811
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "effectiveHostWithoutDomain":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move v3, v5

    .line 814
    goto :goto_0

    .line 816
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const-string v2, "."

    .line 704
    if-nez p1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    if-nez p2, :cond_1

    .line 708
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Missing value for domain attribute"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Blank value for domain attribute"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 716
    const-string v0, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 722
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 724
    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/Cookie;->setDomainAttributeSpecified(Z)V

    .line 726
    return-void
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 9
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2e

    const/4 v5, 0x1

    const-string v7, "Domain attribute \""

    .line 733
    if-nez p1, :cond_0

    .line 734
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cookie may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 736
    :cond_0
    if-nez p2, :cond_1

    .line 737
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cookie origin may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 739
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 741
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v5, "Invalid cookie state: domain not specified"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "cookieDomain":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 748
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 749
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Domain attribute \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" violates RFC 2109: domain must start with a dot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 755
    :cond_3
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 756
    .local v1, "dotIndex":I
    if-ltz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_5

    :cond_4
    const-string v4, ".local"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 758
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Domain attribute \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" violates RFC 2965: the value contains no embedded dots "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "and the value is not .local"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 766
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Domain attribute \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" violates RFC 2965: effective host name does not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "domain-match domain attribute."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 773
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "effectiveHostWithoutDomain":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 776
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Domain attribute \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\" violates RFC 2965: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "effective host minus domain may not contain any dots"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    .end local v1    # "dotIndex":I
    .end local v2    # "effectiveHostWithoutDomain":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 784
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Illegal domain attribute: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Domain of origin: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 790
    :cond_8
    return-void
.end method
