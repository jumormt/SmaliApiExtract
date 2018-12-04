.class public Lorg/apache/commons/httpclient/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    const-string v3, "/"

    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 58
    const-string v0, "/"

    .line 60
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v1, v0

    .line 68
    .local v1, "c1":Lorg/apache/commons/httpclient/Cookie;
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v2, v0

    .line 69
    .local v2, "c2":Lorg/apache/commons/httpclient/Cookie;
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "path1":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "path2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 79
    :goto_0
    return v5

    .line 73
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    const/4 v5, -0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v6

    .line 79
    goto :goto_0
.end method
