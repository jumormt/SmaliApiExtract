.class public interface abstract Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
.super Ljava/lang/Object;
.source "CookieAttributeHandler.java"


# virtual methods
.method public abstract match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
.end method

.method public abstract parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation
.end method

.method public abstract validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation
.end method
