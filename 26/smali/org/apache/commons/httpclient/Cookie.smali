.class public Lorg/apache/commons/httpclient/Cookie;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "Cookie.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;


# instance fields
.field private cookieComment:Ljava/lang/String;

.field private cookieDomain:Ljava/lang/String;

.field private cookieExpiryDate:Ljava/util/Date;

.field private cookiePath:Ljava/lang/String;

.field private cookieVersion:I

.field private hasDomainAttribute:Z

.field private hasPathAttribute:Z

.field private isSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.Cookie"

    invoke-static {v0}, Lorg/apache/commons/httpclient/Cookie;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->class$org$apache$commons$httpclient$Cookie:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v2, "noname"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "maxAge"    # I
    .param p6, "secure"    # Z

    .prologue
    .line 137
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 138
    const/4 v0, -0x1

    if-ge p5, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid max age:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    if-ltz p5, :cond_1

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 144
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "expires"    # Ljava/util/Date;
    .param p6, "secure"    # Z

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    .line 525
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    .line 528
    iput v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    .line 107
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter Cookie(String, String, String, String, Date, boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 108
    if-nez p2, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p5}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 117
    invoke-virtual {p0, p6}, Lorg/apache/commons/httpclient/Cookie;->setSecure(Z)V

    .line 118
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const-string v6, "/"

    .line 456
    sget-object v3, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter Cookie.compare(Object, Object)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 458
    instance-of v3, p1, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_0

    .line 459
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_0
    instance-of v3, p2, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_1

    .line 462
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v1, v0

    .line 465
    .local v1, "c1":Lorg/apache/commons/httpclient/Cookie;
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v2, v0

    .line 466
    .local v2, "c2":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v5

    .line 483
    :goto_0
    return v3

    .line 468
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 470
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 471
    goto :goto_0

    .line 473
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 477
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    .line 478
    goto :goto_0

    .line 480
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 483
    :cond_6
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 417
    if-nez p1, :cond_0

    move v2, v4

    .line 425
    :goto_0
    return v2

    .line 418
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    goto :goto_0

    .line 419
    :cond_1
    instance-of v2, p1, Lorg/apache/commons/httpclient/Cookie;

    if-eqz v2, :cond_3

    .line 420
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v1, v0

    .line 421
    .local v1, "that":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "that":Lorg/apache/commons/httpclient/Cookie;
    :cond_3
    move v2, v4

    .line 425
    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->isSecure:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 403
    const/16 v0, 0x11

    .line 404
    .local v0, "hash":I
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 406
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 407
    return v0
.end method

.method public isDomainAttributeSpecified()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 4
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathAttributeSpecified()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieComment:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_1

    .line 233
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "ndx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    .line 239
    .end local v0    # "ndx":I
    :cond_1
    return-void
.end method

.method public setDomainAttributeSpecified(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    .line 382
    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expiryDate"    # Ljava/util/Date;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    .line 198
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setPathAttributeSpecified(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    .line 352
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->isSecure:Z

    .line 287
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 311
    iput p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    .line 312
    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "spec":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    if-lez v1, :cond_0

    .line 438
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 442
    :goto_0
    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_0
    const-string v1, "netscape"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
