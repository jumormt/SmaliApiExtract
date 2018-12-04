.class public final Lorg/apache/commons/httpclient/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-gez p2, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    if-nez p3, :cond_3

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->port:I

    .line 66
    iput-object p3, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    .line 67
    iput-boolean p4, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->secure:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->port:I

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;->secure:Z

    return v0
.end method
