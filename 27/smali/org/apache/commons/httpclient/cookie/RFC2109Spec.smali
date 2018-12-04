.class public Lorg/apache/commons/httpclient/cookie/RFC2109Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# static fields
.field public static final SET_COOKIE_KEY:Ljava/lang/String; = "set-cookie"


# instance fields
.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 67
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 68
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 69
    return-void
.end method

.method private formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p3, "version"    # I

    .prologue
    const-string v4, "; "

    .line 227
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 229
    const-string v0, ""

    .line 231
    :cond_0
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 232
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isPathAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "; "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Path"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 236
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    const-string v1, "; "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Domain"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 241
    :cond_2
    return-void
.end method

.method private formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "param"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p3, "version"    # I

    .prologue
    .line 208
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 209
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    goto :goto_0
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 196
    .local v0, "match":Z
    :goto_0
    return v0

    .line 193
    .end local v0    # "match":Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 250
    sget-object v2, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter RFC2109Spec.formatCookie(Cookie)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cookie may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    .line 255
    .local v1, "version":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 259
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 7
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 272
    sget-object v4, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter RFC2109Spec.formatCookieHeader(Cookie[])"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 273
    const v3, 0x7fffffff

    .line 275
    .local v3, "version":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 276
    aget-object v1, p1, v2

    .line 277
    .local v1, "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 278
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v3

    .line 275
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4, v3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 285
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 286
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    aget-object v4, p1, v2

    invoke-direct {p0, v0, v4, v3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 6
    .param p1, "attribute"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cookie may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "paramValue":Ljava/lang/String;
    const-string v3, "path"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    if-nez v2, :cond_2

    .line 95
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Missing value for path attribute"

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Blank value for path attribute"

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_3
    invoke-virtual {p2, v2}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 103
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setPathAttributeSpecified(Z)V

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_4
    const-string v3, "version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 106
    if-nez v2, :cond_5

    .line 107
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Missing value for version attribute"

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    goto :goto_0
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    const/4 v4, 0x1

    const/4 v6, -0x1

    const-string v5, "Domain attribute \""

    .line 137
    sget-object v2, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter RFC2109Spec.validate(String, int, String, boolean, Cookie)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 141
    invoke-super/range {p0 .. p5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 144
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 145
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Cookie name may not contain blanks"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Cookie name may not start with $"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_1
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 155
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Domain attribute \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" violates RFC 2109: domain must start with a dot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_2
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 162
    .local v0, "dotIndex":I
    if-ltz v0, :cond_3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_4

    .line 163
    :cond_3
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Domain attribute \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" violates RFC 2109: domain must contain an embedded dot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Illegal domain attribute \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". Domain of origin: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "hostWithoutDomain":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 177
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Domain attribute \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" violates RFC 2109: host minus domain may not contain any dots"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v0    # "dotIndex":I
    .end local v1    # "hostWithoutDomain":Ljava/lang/String;
    :cond_6
    return-void
.end method
