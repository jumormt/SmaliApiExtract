.class public interface abstract Lorg/apache/commons/httpclient/cookie/CookieSpec;
.super Ljava/lang/Object;
.source "CookieSpec.java"


# static fields
.field public static final PATH_DELIM:Ljava/lang/String; = "/"

.field public static final PATH_DELIM_CHAR:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "/"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Lorg/apache/commons/httpclient/cookie/CookieSpec;->PATH_DELIM_CHAR:C

    return-void
.end method


# virtual methods
.method public abstract domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
.end method

.method public abstract formatCookieHeader(Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract formatCookieHeader([Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getValidDateFormats()Ljava/util/Collection;
.end method

.method public abstract match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
.end method

.method public abstract match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;
.end method

.method public abstract parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setValidDateFormats(Ljava/util/Collection;)V
.end method

.method public abstract validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
