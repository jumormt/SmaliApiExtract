.class public Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;
.super Ljava/lang/Object;
.source "DefaultHttpParamsFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# static fields
.field static class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private httpParams:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 72
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
.method protected createParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 10

    .prologue
    const-string v9, "http.useragent"

    const-string v8, "http.authentication.preemptive"

    .line 68
    new-instance v3, Lorg/apache/commons/httpclient/params/HttpClientParams;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 70
    .local v3, "params":Lorg/apache/commons/httpclient/params/HttpClientParams;
    const-string v5, "http.useragent"

    const-string v5, "Jakarta Commons-HttpClient/3.1"

    invoke-virtual {v3, v9, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v5, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 72
    sget-object v5, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "org.apache.commons.httpclient.SimpleHttpConnectionManager"

    invoke-static {v5}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerClass(Ljava/lang/Class;)V

    .line 73
    const-string v5, "default"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 74
    const-string v5, "US-ASCII"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setHttpElementCharset(Ljava/lang/String;)V

    .line 75
    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setContentCharset(Ljava/lang/String;)V

    .line 76
    const-string v5, "http.method.retry-handler"

    new-instance v6, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v6}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "datePatterns":Ljava/util/ArrayList;
    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "EEE MMM d HH:mm:ss yyyy"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "EEE dd MMM yy HH:mm:ss z"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    const-string v5, "http.dateparser.patterns"

    invoke-virtual {v3, v5, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "agent":Ljava/lang/String;
    :try_start_0
    const-string v5, "httpclient.useragent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 107
    :goto_1
    if-eqz v0, :cond_0

    .line 108
    const-string v5, "http.useragent"

    invoke-virtual {v3, v9, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_0
    const/4 v4, 0x0

    .line 114
    .local v4, "preemptiveDefault":Ljava/lang/String;
    :try_start_1
    const-string v5, "httpclient.authentication.preemptive"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 117
    :goto_2
    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    const-string v5, "http.authentication.preemptive"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_1
    :goto_3
    const/4 v2, 0x0

    .line 129
    .local v2, "defaultCookiePolicy":Ljava/lang/String;
    :try_start_2
    const-string v5, "apache.commons.httpclient.cookiespec"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 132
    :goto_4
    if-eqz v2, :cond_2

    .line 133
    const-string v5, "COMPATIBILITY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    const-string v5, "compatibility"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_5
    return-object v3

    .line 72
    .end local v0    # "agent":Ljava/lang/String;
    .end local v1    # "datePatterns":Ljava/util/ArrayList;
    .end local v2    # "defaultCookiePolicy":Ljava/lang/String;
    .end local v4    # "preemptiveDefault":Ljava/lang/String;
    :cond_3
    sget-object v5, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    goto/16 :goto_0

    .line 121
    .restart local v0    # "agent":Ljava/lang/String;
    .restart local v1    # "datePatterns":Ljava/util/ArrayList;
    .restart local v4    # "preemptiveDefault":Ljava/lang/String;
    :cond_4
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    const-string v5, "http.authentication.preemptive"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 135
    .restart local v2    # "defaultCookiePolicy":Ljava/lang/String;
    :cond_5
    const-string v5, "NETSCAPE_DRAFT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 136
    const-string v5, "netscape"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_5

    .line 137
    :cond_6
    const-string v5, "RFC2109"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    const-string v5, "rfc2109"

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_5

    .line 130
    :catch_0
    move-exception v5

    goto :goto_4

    .line 115
    .end local v2    # "defaultCookiePolicy":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 105
    .end local v4    # "preemptiveDefault":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public declared-synchronized getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->createParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
