.class public final Lorg/apache/commons/httpclient/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PROXY_AUTH:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field public static final WWW_AUTH:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"

.field static class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.HttpAuthenticator"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .locals 2
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticate(AuthScheme, HttpMethod, HttpConnection, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .locals 2
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateDefault(HttpMethod, HttpConnection, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 220
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateProxy(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .locals 2
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 390
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateProxy(AuthScheme, HttpMethod, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateProxyDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .locals 2
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateProxyDefault(HttpMethod, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 252
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 76
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

.method private static doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z
    .locals 3
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p4, "proxy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    const-string p1, "Authentication scheme may not be null"

    .end local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    .restart local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .restart local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    :cond_0
    if-nez p1, :cond_1

    .line 267
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    const-string p1, "HTTP method may not be null"

    .end local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    .restart local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .restart local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    :cond_1
    if-nez p3, :cond_2

    .line 270
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    const-string p1, "HTTP state may not be null"

    .end local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    .restart local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .restart local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    :cond_2
    const/4 v0, 0x0

    .line 273
    .local v0, "host":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 274
    if-eqz p4, :cond_5

    .line 275
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object p2

    .end local v0    # "host":Ljava/lang/String;
    .local p2, "host":Ljava/lang/String;
    move-object v0, p2

    .line 283
    .end local p2    # "host":Ljava/lang/String;
    .restart local v0    # "host":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "realm":Ljava/lang/String;
    sget-object p2, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 285
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local p2, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "Using credentials for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    if-nez v1, :cond_6

    .line 288
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :goto_1
    const-string v2, " authentication realm at "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    sget-object v2, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v2, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 298
    :cond_4
    if-eqz p4, :cond_7

    invoke-virtual {p3, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object p2

    .line 301
    .local p2, "credentials":Lorg/apache/commons/httpclient/Credentials;
    :goto_2
    if-nez p2, :cond_9

    .line 302
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local p0, "buffer":Ljava/lang/StringBuffer;
    const-string p1, "No credentials available for the "

    .end local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    if-nez v1, :cond_8

    .line 305
    const-string p1, "default"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    :goto_3
    const-string p1, " authentication realm at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    new-instance p1, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {p1, p0}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    .end local v1    # "realm":Ljava/lang/String;
    .local p0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .restart local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    .local p2, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_5
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    .end local v0    # "host":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "host":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 279
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object p2

    .end local v0    # "host":Ljava/lang/String;
    .local p2, "host":Ljava/lang/String;
    move-object v0, p2

    .end local p2    # "host":Ljava/lang/String;
    .restart local v0    # "host":Ljava/lang/String;
    goto :goto_0

    .line 290
    .restart local v1    # "realm":Ljava/lang/String;
    .local p2, "buffer":Ljava/lang/StringBuffer;
    :cond_6
    const/16 v2, 0x27

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const/16 v2, 0x27

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 298
    .end local p2    # "buffer":Ljava/lang/StringBuffer;
    :cond_7
    invoke-virtual {p3, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object p2

    goto :goto_2

    .line 307
    .end local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    .local p0, "buffer":Ljava/lang/StringBuffer;
    .local p2, "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_8
    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 315
    .local p0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .restart local p1    # "method":Lorg/apache/commons/httpclient/HttpMethod;
    :cond_9
    invoke-interface {p0, p2, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object p0

    .line 316
    .local p0, "auth":Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 317
    if-eqz p4, :cond_a

    const-string p2, "Proxy-Authorization"

    .end local p2    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    move-object p3, p2

    .line 318
    .local p3, "s":Ljava/lang/String;
    :goto_4
    new-instance p2, Lorg/apache/commons/httpclient/Header;

    const/4 p4, 0x1

    invoke-direct {p2, p3, p0, p4}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    .end local p4    # "proxy":Z
    .local p2, "header":Lorg/apache/commons/httpclient/Header;
    invoke-interface {p1, p2}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 320
    const/4 p0, 0x1

    .line 322
    .end local p0    # "auth":Ljava/lang/String;
    .end local p2    # "header":Lorg/apache/commons/httpclient/Header;
    .end local p3    # "s":Ljava/lang/String;
    :goto_5
    return p0

    .line 317
    .restart local p0    # "auth":Ljava/lang/String;
    .local p2, "credentials":Lorg/apache/commons/httpclient/Credentials;
    .local p3, "state":Lorg/apache/commons/httpclient/HttpState;
    .restart local p4    # "proxy":Z
    :cond_a
    const-string p2, "Authorization"

    move-object p3, p2

    goto :goto_4

    .line 322
    :cond_b
    const/4 p0, 0x0

    goto :goto_5
.end method

.method private static doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z
    .locals 9
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p3, "proxy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP method may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "HTTP state may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_1
    const/4 v3, 0x0

    .line 164
    .local v3, "host":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 165
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 167
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p2, v8, v3}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    move-object v1, v5

    .line 169
    .local v1, "credentials":Lorg/apache/commons/httpclient/Credentials;
    :goto_1
    if-nez v1, :cond_5

    move v5, v6

    .line 186
    .end local v1    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :goto_2
    return v5

    .line 165
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p2, v8, v3}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    move-object v1, v5

    goto :goto_1

    .line 172
    .restart local v1    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_5
    instance-of v5, v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    if-nez v5, :cond_6

    .line 173
    new-instance v5, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Credentials cannot be used for basic authentication: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_6
    check-cast v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    .end local v1    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    invoke-interface {p0}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/apache/commons/httpclient/auth/BasicScheme;->authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 181
    if-eqz p3, :cond_7

    const-string v5, "Proxy-Authorization"

    move-object v4, v5

    .line 182
    .local v4, "s":Ljava/lang/String;
    :goto_3
    new-instance v2, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v2, v4, v0, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    .local v2, "header":Lorg/apache/commons/httpclient/Header;
    invoke-interface {p0, v2}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    move v5, v7

    .line 184
    goto :goto_2

    .line 181
    .end local v2    # "header":Lorg/apache/commons/httpclient/Header;
    .end local v4    # "s":Ljava/lang/String;
    :cond_7
    const-string v5, "Authorization"

    move-object v4, v5

    goto :goto_3

    :cond_8
    move v5, v6

    .line 186
    goto :goto_2
.end method

.method public static selectAuthScheme([Lorg/apache/commons/httpclient/Header;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .locals 7
    .param p0, "challenges"    # [Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 121
    sget-object v4, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpAuthenticator.selectAuthScheme(Header[])"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array of challenges may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    array-length v4, p0

    if-nez v4, :cond_1

    .line 126
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array of challenges may not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 129
    .local v0, "challenge":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    .local v1, "challengemap":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 131
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    const-string v4, "ntlm"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "challenge":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 136
    .restart local v0    # "challenge":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 137
    new-instance v4, Lorg/apache/commons/httpclient/auth/NTLMScheme;

    invoke-direct {v4, v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;-><init>(Ljava/lang/String;)V

    .line 145
    :goto_1
    return-object v4

    .line 139
    :cond_3
    const-string v4, "digest"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "challenge":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 140
    .restart local v0    # "challenge":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 141
    new-instance v4, Lorg/apache/commons/httpclient/auth/DigestScheme;

    invoke-direct {v4, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_4
    const-string v4, "basic"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "challenge":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 144
    .restart local v0    # "challenge":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 145
    new-instance v4, Lorg/apache/commons/httpclient/auth/BasicScheme;

    invoke-direct {v4, v0}, Lorg/apache/commons/httpclient/auth/BasicScheme;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_5
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Authentication scheme(s) not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
