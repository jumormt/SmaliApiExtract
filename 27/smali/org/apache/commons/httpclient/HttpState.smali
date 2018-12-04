.class public Lorg/apache/commons/httpclient/HttpState;
.super Ljava/lang/Object;
.source "HttpState.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PREEMPTIVE_DEFAULT:Ljava/lang/String; = "false"

.field public static final PREEMPTIVE_PROPERTY:Ljava/lang/String; = "httpclient.authentication.preemptive"

.field static class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;


# instance fields
.field private cookiePolicy:I

.field protected cookies:Ljava/util/ArrayList;

.field protected credMap:Ljava/util/HashMap;

.field private preemptive:Z

.field protected proxyCred:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpState"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpState;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    .line 110
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 103
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

.method private static getCookiesStringRepresentation(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "cookies"    # Ljava/util/List;

    .prologue
    .line 585
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 586
    .local v2, "sbResult":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 587
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .line 589
    .local v0, "ck":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 590
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 594
    .end local v0    # "ck":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "credMap"    # Ljava/util/Map;

    .prologue
    .line 564
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    .local v3, "sbResult":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 568
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Credentials;

    .line 569
    .local v0, "cred":Lorg/apache/commons/httpclient/Credentials;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 570
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 573
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 576
    .end local v0    # "cred":Lorg/apache/commons/httpclient/Credentials;
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 7
    .param p0, "map"    # Ljava/util/HashMap;
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Credentials;

    .line 374
    .local v2, "creds":Lorg/apache/commons/httpclient/Credentials;
    if-nez v2, :cond_2

    .line 377
    const/4 v1, -0x1

    .line 378
    .local v1, "bestMatchFactor":I
    const/4 v0, 0x0

    .line 379
    .local v0, "bestMatch":Lorg/apache/commons/httpclient/auth/AuthScope;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 380
    .local v5, "items":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 382
    .local v3, "current":Lorg/apache/commons/httpclient/auth/AuthScope;
    invoke-virtual {p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->match(Lorg/apache/commons/httpclient/auth/AuthScope;)I

    move-result v4

    .line 383
    .local v4, "factor":I
    if-le v4, v1, :cond_0

    .line 384
    move v1, v4

    .line 385
    move-object v0, v3

    goto :goto_0

    .line 388
    .end local v3    # "current":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v4    # "factor":I
    :cond_1
    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "creds":Lorg/apache/commons/httpclient/Credentials;
    check-cast v2, Lorg/apache/commons/httpclient/Credentials;

    .line 392
    .end local v0    # "bestMatch":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v1    # "bestMatchFactor":I
    .end local v5    # "items":Ljava/util/Iterator;
    .restart local v2    # "creds":Lorg/apache/commons/httpclient/Credentials;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/commons/httpclient/Cookie;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpState.addCookie(Cookie)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 127
    if-eqz p1, :cond_2

    .line 129
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 131
    .local v1, "tmp":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p1, v1}, Lorg/apache/commons/httpclient/Cookie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 136
    .end local v1    # "tmp":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->isExpired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addCookies([Lorg/apache/commons/httpclient/Cookie;)V
    .locals 3
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpState.addCookies(Cookie[])"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearCookies()V

    .line 623
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearCredentials()V

    .line 624
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearProxyCredentials()V

    .line 625
    return-void
.end method

.method public declared-synchronized clearCookies()V
    .locals 1

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCredentials()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    return-void
.end method

.method public clearProxyCredentials()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 609
    return-void
.end method

.method public getCookiePolicy()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    return v0
.end method

.method public declared-synchronized getCookies()[Lorg/apache/commons/httpclient/Cookie;
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCookies()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookies(Ljava/lang/String;ILjava/lang/String;Z)[Lorg/apache/commons/httpclient/Cookie;
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpState.getCookies(String, int, String, boolean)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v1

    .line 201
    .local v1, "matcher":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    new-instance v8, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v8, "list":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "m":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 203
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    move-object v6, v0

    .local v6, "cookie":Lorg/apache/commons/httpclient/Cookie;
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 204
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    .end local v6    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v2, [Lorg/apache/commons/httpclient/Cookie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 198
    .end local v1    # "matcher":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .end local v7    # "i":I
    .end local v8    # "list":Ljava/util/ArrayList;
    .end local v9    # "m":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(String, String"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 2
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    .line 433
    monitor-enter p0

    if-nez p1, :cond_0

    .line 434
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 436
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(AuthScope)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(String, String"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 2
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .prologue
    .line 528
    monitor-enter p0

    if-nez p1, :cond_0

    .line 529
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 531
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getProxyCredentials(AuthScope)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public isAuthenticationPreemptive()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    return v0
.end method

.method public declared-synchronized purgeExpiredCookies()Z
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.purgeExpiredCookies()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 220
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpState;->purgeExpiredCookies(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized purgeExpiredCookies(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpState.purgeExpiredCookies(Date)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "removed":Z
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    monitor-exit p0

    return v1

    .line 236
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "removed":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAuthenticationPreemptive(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    .line 279
    return-void
.end method

.method public setCookiePolicy(I)V
    .locals 0
    .param p1, "policy"    # I

    .prologue
    .line 313
    iput p1, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    .line 314
    return-void
.end method

.method public declared-synchronized setCredentials(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/httpclient/Credentials;)V
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setCredentials(String, String, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    .prologue
    .line 356
    monitor-enter p0

    if-nez p1, :cond_0

    .line 357
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setCredentials(AuthScope, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProxyCredentials(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/httpclient/Credentials;)V
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setProxyCredentials(String, String, Credentials"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    .prologue
    .line 485
    monitor-enter p0

    if-nez p1, :cond_0

    .line 486
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setProxyCredentials(AuthScope, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, " | "

    .line 543
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 545
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpState;->getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpState;->getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpState;->getCookiesStringRepresentation(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 555
    .local v1, "strResult":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 543
    .end local v0    # "sbResult":Ljava/lang/StringBuffer;
    .end local v1    # "strResult":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
