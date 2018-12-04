.class public final Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;
.super Ljava/lang/Object;
.source "AuthChallengeProcessor.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;


# instance fields
.field private params:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.AuthChallengeProcessor"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter collection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 67
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
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
.method public processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .locals 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/auth/AuthState;
    .param p2, "challenges"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authentication state may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    if-nez p2, :cond_1

    .line 145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Challenge map may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v3

    if-nez v3, :cond_3

    .line 150
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->selectAuthScheme(Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    .line 152
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 153
    .local v0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "id":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Using authentication scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 157
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, "challenge":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 159
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_5
    invoke-interface {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->processChallenge(Ljava/lang/String;)V

    .line 163
    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 164
    return-object v0
.end method

.method public selectAuthScheme(Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .locals 9
    .param p1, "challenges"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthChallengeException;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Challenge map may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    const-string v7, "http.auth.scheme-priority"

    invoke-interface {v6, v7}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 86
    .local v0, "authPrefs":Ljava/util/Collection;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    :cond_1
    invoke-static {}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->getDefaultAuthPrefs()Ljava/util/List;

    move-result-object v0

    .line 89
    :cond_2
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Supported authentication schemes in the order of preference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 93
    :cond_3
    const/4 v1, 0x0

    .line 94
    .local v1, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    const/4 v2, 0x0

    .line 95
    .local v2, "challenge":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 96
    .local v5, "item":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 98
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "challenge":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 99
    .restart local v2    # "challenge":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 100
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 101
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " authentication scheme selected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 104
    :cond_5
    :try_start_0
    invoke-static {v4}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    .end local v4    # "id":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_8

    .line 118
    new-instance v6, Lorg/apache/commons/httpclient/auth/AuthChallengeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to respond to any of these challenges: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    .restart local v4    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v6, Lorg/apache/commons/httpclient/auth/AuthChallengeException;

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    sget-object v6, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Challenge for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " authentication scheme not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    .end local v4    # "id":Ljava/lang/String;
    :cond_8
    return-object v1
.end method
