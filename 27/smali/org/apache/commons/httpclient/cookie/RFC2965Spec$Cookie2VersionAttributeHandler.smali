.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;
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
    name = "Cookie2VersionAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 6
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1059
    if-nez p1, :cond_0

    .line 1060
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cookie may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1062
    :cond_0
    instance-of v4, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v4, :cond_3

    .line 1063
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 1064
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    if-nez p2, :cond_1

    .line 1065
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v5, "Missing value for version attribute"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1068
    :cond_1
    const/4 v3, -0x1

    .line 1070
    .local v3, "version":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1074
    :goto_0
    if-gez v3, :cond_2

    .line 1075
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v5, "Invalid cookie version."

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    :catch_0
    move-exception v2

    .line 1072
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0

    .line 1077
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersion(I)V

    .line 1078
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersionAttributeSpecified(Z)V

    .line 1080
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v3    # "version":I
    :cond_3
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
    .line 1087
    if-nez p1, :cond_0

    .line 1088
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1090
    :cond_0
    instance-of v2, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v2, :cond_1

    .line 1091
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 1092
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isVersionAttributeSpecified()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1097
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_1
    return-void
.end method
