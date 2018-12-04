.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;
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
    name = "Cookie2MaxageAttributeHandler"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .locals 9
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 919
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    :cond_0
    if-nez p2, :cond_1

    .line 922
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for max-age attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_1
    const/4 v0, -0x1

    .line 927
    .local v0, "age":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 931
    :goto_0
    if-gez v0, :cond_2

    .line 932
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Invalid max-age attribute."

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    goto :goto_0

    .line 934
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 935
    return-void
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .prologue
    .line 941
    return-void
.end method
