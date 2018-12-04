.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;
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
    name = "Cookie2PortAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 6
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    const/4 v5, 0x0

    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 885
    :cond_0
    if-nez p2, :cond_1

    .line 886
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie origin may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_4

    .line 889
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 890
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v2

    .line 891
    .local v2, "port":I
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 892
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    if-nez v3, :cond_2

    .line 893
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Invalid cookie state: port not specified"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move v3, v5

    .line 902
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2    # "port":I
    :goto_0
    return v3

    .line 896
    .restart local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .restart local v2    # "port":I
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 897
    goto :goto_0

    .line 900
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2    # "port":I
    :cond_4
    move v3, v5

    .line 902
    goto :goto_0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 6
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 832
    if-nez p1, :cond_0

    .line 833
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 835
    :cond_0
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_2

    .line 836
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 837
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 842
    :cond_1
    invoke-virtual {v1, v5}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeBlank(Z)V

    .line 847
    :goto_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPortAttributeSpecified(Z)V

    .line 849
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_2
    return-void

    .line 844
    .restart local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-static {v3, p2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$900(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Ljava/lang/String;)[I

    move-result-object v2

    .line 845
    .local v2, "ports":[I
    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPorts([I)V

    goto :goto_0
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 857
    if-nez p1, :cond_0

    .line 858
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    :cond_0
    if-nez p2, :cond_1

    .line 861
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie origin may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 863
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v3, :cond_2

    .line 864
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 865
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v2

    .line 866
    .local v2, "port":I
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 867
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 868
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 874
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v2    # "port":I
    :cond_2
    return-void
.end method
