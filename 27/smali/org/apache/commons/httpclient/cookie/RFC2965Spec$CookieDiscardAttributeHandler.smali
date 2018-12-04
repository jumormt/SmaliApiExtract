.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;
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
    name = "CookieDiscardAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "commenturl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1032
    instance-of v2, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v2, :cond_0

    .line 1033
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    move-object v1, v0

    .line 1034
    .local v1, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setDiscard(Z)V

    .line 1036
    .end local v1    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_0
    return-void
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 1040
    return-void
.end method
