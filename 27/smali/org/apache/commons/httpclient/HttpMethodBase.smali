.class public abstract Lorg/apache/commons/httpclient/HttpMethodBase;
.super Ljava/lang/Object;
.source "HttpMethodBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethod;


# static fields
.field private static final DEFAULT_INITIAL_BUFFER_SIZE:I = 0x1000

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final RESPONSE_WAIT_TIME_MS:I = 0xbb8

.field static class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;


# instance fields
.field private volatile aborted:Z

.field private connectionCloseForced:Z

.field private cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

.field private doAuthentication:Z

.field protected effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

.field private followRedirects:Z

.field private hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private httphost:Lorg/apache/commons/httpclient/HttpHost;

.field private methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field private path:Ljava/lang/String;

.field private proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private queryString:Ljava/lang/String;

.field private recoverableExceptionCount:I

.field private requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private requestSent:Z

.field private responseBody:[B

.field private responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private responseStream:Ljava/io/InputStream;

.field private responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field protected statusLine:Lorg/apache/commons/httpclient/StatusLine;

.field private used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpMethodBase"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 112
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 115
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 118
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 121
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 131
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 134
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 137
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    .line 144
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 147
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 150
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 153
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 157
    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    .line 160
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    .line 170
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 176
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    .line 179
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    .line 183
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    .line 186
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v2, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 112
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 115
    new-instance v2, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 118
    new-instance v2, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 121
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 128
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 131
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 134
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 137
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 141
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    .line 144
    new-instance v2, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 147
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 150
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 153
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 157
    iput v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    .line 160
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    .line 170
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 176
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    .line 179
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    .line 183
    iput-boolean v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    .line 186
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 216
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    const-string p1, "/"

    .line 219
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "charset":Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/httpclient/URI;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->setURI(Lorg/apache/commons/httpclient/URI;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-void

    .line 221
    .end local v0    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 222
    .local v1, "e":Lorg/apache/commons/httpclient/URIException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid uri \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URIException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static canResponseHaveBody(I)Z
    .locals 3
    .param p0, "status"    # I

    .prologue
    .line 2281
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.canResponseHaveBody(int)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2283
    const/4 v0, 0x1

    .line 2285
    .local v0, "result":Z
    const/16 v1, 0x64

    if-lt p0, v1, :cond_0

    const/16 v1, 0xc7

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0xcc

    if-eq p0, v1, :cond_1

    const/16 v1, 0x130

    if-ne p0, v1, :cond_2

    .line 2287
    :cond_1
    const/4 v0, 0x0

    .line 2290
    :cond_2
    return v0
.end method

.method private checkExecuteConditions(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1048
    if-nez p1, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpState parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_0
    if-nez p2, :cond_1

    .line 1052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpConnection parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    if-eqz v0, :cond_2

    .line 1055
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method has been aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1058
    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v1, "HttpMethodBase object not valid"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_3
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 104
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

.method private ensureConnectionRelease()V
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 2433
    :cond_0
    return-void
.end method

.method protected static generateRequestLine(Lorg/apache/commons/httpclient/HttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestPath"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;

    .prologue
    const-string v6, "?"

    const-string v5, " "

    const-string v4, "/"

    .line 1496
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpMethodBase.generateRequestLine(HttpConnection, String, String, String, String)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1499
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1501
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1502
    const-string v2, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1504
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1505
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    .line 1506
    .local v1, "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1507
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1508
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1512
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1513
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1517
    .end local v1    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :cond_0
    if-nez p2, :cond_3

    .line 1518
    const-string v2, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    :goto_0
    if-eqz p3, :cond_2

    .line 1527
    const-string v2, "?"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1528
    const-string v2, "?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1530
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1533
    :cond_2
    const-string v2, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1534
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1535
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1520
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1521
    const-string v2, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 4
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;

    .prologue
    .line 1237
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    if-nez v1, :cond_0

    .line 1238
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpState;->getCookiePolicy()I

    move-result v0

    .line 1239
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1240
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCookiePolicy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 1244
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    const-string v3, "http.dateparser.patterns"

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->setValidDateFormats(Ljava/util/Collection;)V

    .line 1247
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    return-object v1

    .line 1242
    .restart local v0    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getSpecByPolicy(I)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    goto :goto_0
.end method

.method private getRequestLine(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 2230
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getQueryString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->generateRequestLine(Lorg/apache/commons/httpclient/HttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readResponseBody(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/io/InputStream;
    .locals 19
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v17, "enter HttpMethodBase.readResponseBody(HttpConnection)"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1818
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/httpclient/HttpConnection;->getResponseInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 1820
    .local v9, "is":Ljava/io/InputStream;
    sget-object v16, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1821
    new-instance v10, Lorg/apache/commons/httpclient/WireLogInputStream;

    sget-object v16, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/WireLogInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/Wire;)V

    .end local v9    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    move-object v9, v10

    .line 1823
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/apache/commons/httpclient/HttpMethodBase;->canResponseHaveBody(I)Z

    move-result v3

    .line 1824
    .local v3, "canHaveBody":Z
    const/4 v12, 0x0

    .line 1825
    .local v12, "result":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    move-object/from16 v16, v0

    const-string v17, "Transfer-Encoding"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v15

    .line 1828
    .local v15, "transferEncodingHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v15, :cond_5

    .line 1830
    invoke-virtual {v15}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 1831
    .local v14, "transferEncoding":Ljava/lang/String;
    const-string v16, "chunked"

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "identity"

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1833
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1834
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Unsupported transfer encoding: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1837
    :cond_1
    invoke-virtual {v15}, Lorg/apache/commons/httpclient/Header;->getElements()[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v6

    .line 1840
    .local v6, "encodings":[Lorg/apache/commons/httpclient/HeaderElement;
    array-length v11, v6

    .line 1841
    .local v11, "len":I
    if-lez v11, :cond_4

    const-string v16, "chunked"

    const/16 v17, 0x1

    sub-int v17, v11, v17

    aget-object v17, v6, v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1843
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1844
    new-instance v12, Lorg/apache/commons/httpclient/ChunkedInputStream;

    .end local v12    # "result":Ljava/io/InputStream;
    move-object v0, v12

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 1880
    .end local v6    # "encodings":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v11    # "len":I
    .end local v14    # "transferEncoding":Ljava/lang/String;
    .restart local v12    # "result":Ljava/io/InputStream;
    :goto_0
    if-nez v3, :cond_a

    .line 1881
    const/4 v12, 0x0

    move-object v13, v12

    .line 1886
    .end local v12    # "result":Ljava/io/InputStream;
    .local v13, "result":Ljava/io/InputStream;
    :goto_1
    if-eqz v13, :cond_9

    .line 1888
    new-instance v12, Lorg/apache/commons/httpclient/AutoCloseInputStream;

    new-instance v16, Lorg/apache/commons/httpclient/HttpMethodBase$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase$1;-><init>(Lorg/apache/commons/httpclient/HttpMethodBase;)V

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/AutoCloseInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/ResponseConsumedWatcher;)V

    .line 1898
    .end local v13    # "result":Ljava/io/InputStream;
    .restart local v12    # "result":Ljava/io/InputStream;
    :goto_2
    return-object v12

    .line 1846
    .restart local v6    # "encodings":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v11    # "len":I
    .restart local v14    # "transferEncoding":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v16

    const-string v17, "http.protocol.strict-transfer-encoding"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1847
    new-instance v16, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v17, "Chunk-encoded body declared but not sent"

    invoke-direct/range {v16 .. v17}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1849
    :cond_3
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v17, "Chunk-encoded body missing"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 1853
    :cond_4
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v17, "Response content is not chunk-encoded"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1856
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->setConnectionCloseForced(Z)V

    .line 1857
    move-object v12, v9

    goto :goto_0

    .line 1860
    .end local v6    # "encodings":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v11    # "len":I
    .end local v14    # "transferEncoding":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v7

    .line 1861
    .local v7, "expectedLength":J
    const-wide/16 v16, -0x1

    cmp-long v16, v7, v16

    if-nez v16, :cond_8

    .line 1862
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    move-object/from16 v16, v0

    sget-object v17, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    move-object/from16 v16, v0

    const-string v17, "Connection"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v5

    .line 1864
    .local v5, "connectionHeader":Lorg/apache/commons/httpclient/Header;
    const/4 v4, 0x0

    .line 1865
    .local v4, "connectionDirective":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1866
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1868
    :cond_6
    const-string v16, "close"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1869
    sget-object v16, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v17, "Response content length is not known"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1870
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->setConnectionCloseForced(Z)V

    .line 1873
    .end local v4    # "connectionDirective":Ljava/lang/String;
    .end local v5    # "connectionHeader":Lorg/apache/commons/httpclient/Header;
    :cond_7
    move-object v12, v9

    goto/16 :goto_0

    .line 1875
    :cond_8
    new-instance v12, Lorg/apache/commons/httpclient/ContentLengthInputStream;

    .end local v12    # "result":Ljava/io/InputStream;
    invoke-direct {v12, v9, v7, v8}, Lorg/apache/commons/httpclient/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    .restart local v12    # "result":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v7    # "expectedLength":J
    .end local v12    # "result":Ljava/io/InputStream;
    .restart local v13    # "result":Ljava/io/InputStream;
    :cond_9
    move-object v12, v13

    .end local v13    # "result":Ljava/io/InputStream;
    .restart local v12    # "result":Ljava/io/InputStream;
    goto/16 :goto_2

    :cond_a
    move-object v13, v12

    .end local v12    # "result":Ljava/io/InputStream;
    .restart local v13    # "result":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private responseAvailable()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 1111
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    if-eqz v1, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    .line 1115
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 1116
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method protected addCookieRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 15
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1266
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter HttpMethodBase.addCookieRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1269
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    const-string v4, "Cookie"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v8

    .line 1270
    .local v8, "cookieheaders":[Lorg/apache/commons/httpclient/Header;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v3, v8

    if-ge v10, v3, :cond_1

    .line 1271
    aget-object v7, v8, v10

    .line 1272
    .local v7, "cookieheader":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1273
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 1270
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1277
    .end local v7    # "cookieheader":Lorg/apache/commons/httpclient/Header;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v1

    .line 1278
    .local v1, "matcher":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v2

    .line 1279
    .local v2, "host":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1280
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 1282
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/httpclient/HttpState;->getCookies()[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v9

    .line 1284
    .local v9, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    if-eqz v9, :cond_7

    array-length v3, v9

    if-lez v3, :cond_7

    .line 1285
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    const-string v4, "http.protocol.single-cookie-header"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1287
    invoke-interface {v1, v9}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v12

    .line 1288
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/httpclient/Header;

    const-string v5, "Cookie"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v12, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 1296
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    instance-of v3, v1, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    if-eqz v3, :cond_7

    .line 1297
    move-object v0, v1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    move-object v14, v0

    .line 1298
    .local v14, "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    invoke-interface {v14}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersion()I

    move-result v13

    .line 1299
    .local v13, "ver":I
    const/4 v11, 0x0

    .line 1300
    .local v11, "needVersionHeader":Z
    const/4 v10, 0x0

    :goto_1
    array-length v3, v9

    if-ge v10, v3, :cond_6

    .line 1301
    aget-object v3, v9, v10

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v3

    if-eq v13, v3, :cond_4

    .line 1302
    const/4 v11, 0x1

    .line 1300
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1291
    .end local v11    # "needVersionHeader":Z
    .end local v13    # "ver":I
    .end local v14    # "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    :cond_5
    const/4 v10, 0x0

    :goto_2
    array-length v3, v9

    if-ge v10, v3, :cond_3

    .line 1292
    aget-object v3, v9, v10

    invoke-interface {v1, v3}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v12

    .line 1293
    .restart local v12    # "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/httpclient/Header;

    const-string v5, "Cookie"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v12, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 1291
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1305
    .end local v12    # "s":Ljava/lang/String;
    .restart local v11    # "needVersionHeader":Z
    .restart local v13    # "ver":I
    .restart local v14    # "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    :cond_6
    if-eqz v11, :cond_7

    .line 1307
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    invoke-interface {v14}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersionHeader()Lorg/apache/commons/httpclient/Header;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 1311
    .end local v11    # "needVersionHeader":Z
    .end local v13    # "ver":I
    .end local v14    # "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    :cond_7
    return-void
.end method

.method protected addHostRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1328
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpMethodBase.addHostRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1335
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1337
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Using virtual host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1341
    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    .line 1351
    .local v1, "port":I
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Adding Host request header"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1356
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1357
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    :cond_1
    const-string v2, "Host"

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    return-void

    .line 1339
    .end local v1    # "port":I
    :cond_2
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected addProxyConnectionHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v2, "Proxy-Connection"

    .line 1379
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addProxyConnectionHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1381
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    const-string v0, "Proxy-Connection"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1383
    const-string v0, "Proxy-Connection"

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :cond_0
    return-void
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 945
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 946
    return-void
.end method

.method public addRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 386
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "HttpMethodBase.addRequestHeader(Header)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 388
    if-nez p1, :cond_0

    .line 389
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "null header value ignored"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1417
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1420
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addUserAgentRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1421
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addHostRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1422
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addCookieRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1423
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addProxyConnectionHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1424
    return-void
.end method

.method public addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .param p1, "footer"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 402
    return-void
.end method

.method protected addUserAgentRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v3, "User-Agent"

    .line 1442
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.addUserAgentRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1445
    const-string v1, "User-Agent"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1446
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.useragent"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1447
    .local v0, "agent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1448
    const-string v0, "Jakarta Commons-HttpClient"

    .line 1450
    :cond_0
    const-string v1, "User-Agent"

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v0    # "agent":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected checkNotUsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1462
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    if-eqz v0, :cond_0

    .line 1463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_0
    return-void
.end method

.method protected checkUsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1475
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1478
    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    .locals 4
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1079
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.execute(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1083
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 1085
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->checkExecuteConditions(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1086
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 1089
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 1092
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    .line 1096
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequest(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1097
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    .line 1098
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponse(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1100
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 1102
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method fakeResponse(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "statusline"    # Lorg/apache/commons/httpclient/StatusLine;
    .param p2, "responseheaders"    # Lorg/apache/commons/httpclient/HeaderGroup;
    .param p3, "responseStream"    # Ljava/io/InputStream;

    .prologue
    .line 2501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 2502
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 2503
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 2504
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 2505
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 2506
    return-void
.end method

.method public getAuthenticationRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;
    .locals 6
    .param p1, "contentheader"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 2324
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter getContentCharSet( Header contentheader )"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2325
    const/4 v0, 0x0

    .line 2326
    .local v0, "charset":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2327
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Header;->getElements()[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v2

    .line 2330
    .local v2, "values":[Lorg/apache/commons/httpclient/HeaderElement;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2331
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v1

    .line 2332
    .local v1, "param":Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v1, :cond_0

    .line 2335
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2339
    .end local v1    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v2    # "values":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_0
    if-nez v0, :cond_1

    .line 2340
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getContentCharset()Ljava/lang/String;

    move-result-object v0

    .line 2341
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2342
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Default charset used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2345
    :cond_1
    return-object v0
.end method

.method public getDoAuthentication()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    return v0
.end method

.method public getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    return v0
.end method

.method public getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 2

    .prologue
    .line 2443
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    .line 2444
    .local v0, "hostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/HttpHost;)V

    .line 2445
    return-object v0
.end method

.method public getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getProxyAuthenticationRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverableExceptionCount()I
    .locals 1

    .prologue
    .line 2377
    iget v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    return v0
.end method

.method public getRequestCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2355
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getRequestHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1000

    .line 673
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v7, :cond_5

    .line 674
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    .line 675
    .local v3, "instream":Ljava/io/InputStream;
    if-eqz v3, :cond_5

    .line 676
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v1

    .line 677
    .local v1, "contentLength":J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 678
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Content too large to be buffered: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 680
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    const-string v8, "http.method.response.buffer.warnlimit"

    const/high16 v9, 0x100000

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v5

    .line 681
    .local v5, "limit":I
    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    int-to-long v7, v5

    cmp-long v7, v1, v7

    if-lez v7, :cond_2

    .line 682
    :cond_1
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Going to buffer response body of large or unknown size. Using getResponseBodyAsStream instead is recommended."

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 685
    :cond_2
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Buffering response body"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 686
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_3

    long-to-int v7, v1

    :goto_0
    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 688
    .local v6, "outstream":Ljava/io/ByteArrayOutputStream;
    new-array v0, v10, [B

    .line 690
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_4

    .line 691
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .end local v6    # "outstream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    move v7, v10

    .line 686
    goto :goto_0

    .line 693
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    .restart local v6    # "outstream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 694
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    .line 695
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 698
    .end local v0    # "buffer":[B
    .end local v1    # "contentLength":J
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "limit":I
    .end local v6    # "outstream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    return-object v7
.end method

.method public getResponseBody(I)[B
    .locals 11
    .param p1, "maxlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 722
    if-gez p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "maxlen must be positive"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 723
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v7, :cond_6

    .line 724
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    .line 725
    .local v3, "instream":Ljava/io/InputStream;
    if-eqz v3, :cond_6

    .line 727
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v1

    .line 728
    .local v1, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    int-to-long v7, p1

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 729
    new-instance v7, Lorg/apache/commons/httpclient/HttpContentTooLargeException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Content-Length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Lorg/apache/commons/httpclient/HttpContentTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 733
    :cond_1
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Buffering response body"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 734
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_3

    long-to-int v7, v1

    :goto_0
    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 736
    .local v6, "rawdata":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 737
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 740
    .local v5, "pos":I
    :cond_2
    array-length v7, v0

    sub-int v8, p1, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v0, v10, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 741
    .local v4, "len":I
    if-ne v4, v9, :cond_4

    .line 746
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    .line 748
    if-ne v5, p1, :cond_5

    .line 749
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 750
    new-instance v7, Lorg/apache/commons/httpclient/HttpContentTooLargeException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Content-Length not known but larger than "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Lorg/apache/commons/httpclient/HttpContentTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 734
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .end local v5    # "pos":I
    .end local v6    # "rawdata":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/16 v7, 0x1000

    goto :goto_0

    .line 742
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    .restart local v5    # "pos":I
    .restart local v6    # "rawdata":Ljava/io/ByteArrayOutputStream;
    :cond_4
    invoke-virtual {v6, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 743
    add-int/2addr v5, v4

    .line 744
    if-lt v5, p1, :cond_2

    goto :goto_1

    .line 754
    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 757
    .end local v0    # "buffer":[B
    .end local v1    # "contentLength":J
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "pos":I
    .end local v6    # "rawdata":Ljava/io/ByteArrayOutputStream;
    :cond_6
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    return-object v7
.end method

.method public getResponseBodyAsStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 780
    :goto_0
    return-object v1

    .line 775
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-eqz v1, :cond_1

    .line 776
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 777
    .local v0, "byteResponseStream":Ljava/io/InputStream;
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "re-creating response stream from byte array"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move-object v1, v0

    .line 778
    goto :goto_0

    .line 780
    .end local v0    # "byteResponseStream":Ljava/io/InputStream;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResponseBodyAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "rawdata":[B
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBody()[B

    move-result-object v0

    .line 805
    :cond_0
    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResponseBodyAsString(I)Ljava/lang/String;
    .locals 3
    .param p1, "maxlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxlen must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_0
    const/4 v0, 0x0

    .line 837
    .local v0, "rawdata":[B
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBody(I)[B

    move-result-object v0

    .line 840
    :cond_1
    if-eqz v0, :cond_2

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResponseCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2365
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseContentLength()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 634
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v4

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    .line 635
    .local v2, "headers":[Lorg/apache/commons/httpclient/Header;
    array-length v4, v2

    if-nez v4, :cond_0

    move-wide v4, v7

    .line 652
    :goto_0
    return-wide v4

    .line 638
    :cond_0
    array-length v4, v2

    if-le v4, v6, :cond_1

    .line 639
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Multiple content-length headers detected"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 641
    :cond_1
    array-length v4, v2

    sub-int v3, v4, v6

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 642
    aget-object v1, v2, v3

    .line 644
    .local v1, "header":Lorg/apache/commons/httpclient/Header;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 645
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 646
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 647
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid content-length value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 641
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_3
    move-wide v4, v7

    .line 652
    goto :goto_0
.end method

.method public getResponseFooter(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .param p1, "footerName"    # Ljava/lang/String;

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 873
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseFooters()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 615
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Lorg/apache/commons/httpclient/URI;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v2

    .line 254
    .local v2, "port":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 255
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 259
    .end local v2    # "port":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 261
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "charset":Ljava/lang/String;
    new-instance v3, Lorg/apache/commons/httpclient/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v3
.end method

.method public hasBeenUsed()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 2539
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    return v0
.end method

.method protected isConnectionCloseForced()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    return v0
.end method

.method public isHttp11()Z
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    return v0
.end method

.method public isRequestSent()Z
    .locals 1

    .prologue
    .line 2551
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    return v0
.end method

.method public isStrictMode()Z
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method protected processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 18
    .param p1, "parser"    # Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .param p2, "headers"    # [Lorg/apache/commons/httpclient/Header;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p4, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 1615
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpMethodBase.processCookieHeaders(Header[], HttpState, HttpConnection)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v3

    .line 1619
    .local v3, "host":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1620
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1622
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ge v0, v1, :cond_4

    .line 1623
    aget-object v7, p2, v16

    .line 1624
    .local v7, "header":Lorg/apache/commons/httpclient/Header;
    const/4 v14, 0x0

    .line 1626
    .local v14, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v6

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1639
    :cond_1
    :goto_1
    if-eqz v14, :cond_3

    .line 1640
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    array-length v2, v14

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_3

    .line 1641
    aget-object v13, v14, v17

    .line 1643
    .local v13, "cookie":Lorg/apache/commons/httpclient/Cookie;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v12

    move-object/from16 v8, p1

    move-object v9, v3

    invoke-interface/range {v8 .. v13}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 1649
    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V

    .line 1650
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1651
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cookie accepted: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1640
    :cond_2
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1632
    .end local v13    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v17    # "j":I
    :catch_0
    move-exception v2

    move-object v15, v2

    .line 1633
    .local v15, "e":Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1634
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid cookie header: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1654
    .end local v15    # "e":Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
    .restart local v13    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .restart local v17    # "j":I
    :catch_1
    move-exception v2

    move-object v15, v2

    .line 1655
    .restart local v15    # "e":Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1656
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cookie rejected: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_3

    .line 1622
    .end local v13    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v15    # "e":Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
    .end local v17    # "j":I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1663
    .end local v7    # "header":Lorg/apache/commons/httpclient/Header;
    .end local v14    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    :cond_4
    return-void
.end method

.method protected processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 1557
    return-void
.end method

.method protected processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 1579
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpMethodBase.processResponseHeaders(HttpState, HttpConnection)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1582
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v2

    .line 1585
    .local v2, "parser":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v4

    const-string v5, "set-cookie"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 1586
    .local v1, "headers":[Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p0, v2, v1, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1589
    instance-of v4, v2, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    if-eqz v4, :cond_0

    .line 1590
    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    move-object v3, v0

    .line 1591
    .local v3, "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    invoke-interface {v3}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersion()I

    move-result v4

    if-lez v4, :cond_0

    .line 1594
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v4

    const-string v5, "set-cookie2"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 1595
    invoke-virtual {p0, v2, v1, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1598
    .end local v3    # "versupport":Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;
    :cond_0
    return-void
.end method

.method protected processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 1678
    return-void
.end method

.method protected readResponse(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1730
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.readResponse(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1734
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    if-nez v1, :cond_2

    .line 1735
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1736
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1737
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1738
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1740
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    .line 1741
    .local v0, "status":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 1742
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1743
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Discarding unexpected response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1745
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    goto :goto_0

    .line 1748
    .end local v0    # "status":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1749
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1750
    return-void
.end method

.method protected readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1781
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.readResponseBody(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1785
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 1786
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBodyConsumed()V

    .line 1793
    :goto_0
    return-void

    .line 1790
    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 1791
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 1930
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.readResponseHeaders(HttpState,HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1933
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 1935
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getResponseInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1938
    .local v0, "headers":[Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/HeaderGroup;->setHeaders([Lorg/apache/commons/httpclient/Header;)V

    .line 1939
    return-void
.end method

.method protected readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v7, "The server "

    .line 1964
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpMethodBase.readStatusLine(HttpState, HttpConnection)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1966
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    const-string v5, "http.protocol.status-line-garbage-limit"

    const v6, 0x7fffffff

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    .line 1970
    .local v1, "maxGarbageLines":I
    const/4 v0, 0x0

    .line 1973
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/httpclient/HttpConnection;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1974
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 1976
    new-instance v4, Lorg/apache/commons/httpclient/NoHttpResponseException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The server "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " failed to respond"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1979
    :cond_0
    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1980
    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/Wire;->input(Ljava/lang/String;)V

    .line 1982
    :cond_1
    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/apache/commons/httpclient/StatusLine;->startsWithHTTP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1994
    new-instance v4, Lorg/apache/commons/httpclient/StatusLine;

    invoke-direct {v4, v2}, Lorg/apache/commons/httpclient/StatusLine;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 1997
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/StatusLine;->getHttpVersion()Ljava/lang/String;

    move-result-object v3

    .line 1998
    .local v3, "versionStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    const-string v5, "http.protocol.unambiguous-statusline"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2000
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 2001
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2002
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Ambiguous status line (HTTP protocol version missing):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2009
    :cond_2
    :goto_1
    return-void

    .line 1985
    .end local v3    # "versionStr":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    if-lt v0, v1, :cond_5

    .line 1987
    :cond_4
    new-instance v4, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The server "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " failed to respond with a valid HTTP response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1990
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1991
    goto/16 :goto_0

    .line 2006
    .restart local v3    # "versionStr":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Lorg/apache/commons/httpclient/HttpVersion;->parse(Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    goto :goto_1
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1143
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1145
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->releaseConnection()V

    .line 1147
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    .line 1148
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    .line 1150
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 1151
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 1152
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 1153
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 1154
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 1155
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    .line 1156
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    .line 1157
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 1158
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 1159
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 1160
    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    .line 1161
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 1162
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 1163
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 1164
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 1165
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    .line 1166
    return-void
.end method

.method public releaseConnection()V
    .locals 1

    .prologue
    .line 1178
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1181
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    .line 1188
    return-void

    .line 1186
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    throw v0

    .line 1182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeRequestHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 1198
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1199
    .local v0, "headers":[Lorg/apache/commons/httpclient/Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1200
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    return-void
.end method

.method public removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 1211
    if-nez p1, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0
.end method

.method protected responseBodyConsumed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2393
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 2394
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v2, :cond_0

    .line 2395
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 2401
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2402
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 2421
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 2422
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    .line 2423
    return-void

    .line 2405
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2406
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.protocol.warn-extra-input"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    .line 2409
    .local v1, "logExtraInput":Z
    if-eqz v1, :cond_2

    .line 2410
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Extra response data detected - closing connection"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2412
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2415
    .end local v1    # "logExtraInput":Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2416
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 2417
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method protected setConnectionCloseForced(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 966
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Force-close connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 969
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 970
    return-void
.end method

.method public setDoAuthentication(Z)V
    .locals 0
    .param p1, "doAuthentication"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    .line 351
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 300
    return-void
.end method

.method public setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 4
    .param p1, "hostconfig"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 2455
    if-eqz p1, :cond_0

    .line 2456
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    .line 2463
    :goto_0
    return-void

    .line 2461
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    goto :goto_0
.end method

.method public setHttp11(Z)V
    .locals 2
    .param p1, "http11"    # Z

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    goto :goto_0
.end method

.method public setMethodRetryHandler(Lorg/apache/commons/httpclient/MethodRetryHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/commons/httpclient/MethodRetryHandler;

    .prologue
    .line 2484
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

    .line 2485
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpMethodParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .prologue
    .line 2253
    if-nez p1, :cond_0

    .line 2254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2256
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 2257
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2
    .param p1, "params"    # [Lorg/apache/commons/httpclient/NameValuePair;

    .prologue
    .line 442
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.setQueryString(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 443
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v0, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 465
    return-void
.end method

.method public setRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 4
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 477
    .local v0, "headers":[Lorg/apache/commons/httpclient/Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 483
    return-void
.end method

.method protected setResponseStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "responseStream"    # Ljava/io/InputStream;

    .prologue
    .line 882
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 883
    return-void
.end method

.method public setStrictMode(Z)V
    .locals 1
    .param p1, "strictMode"    # Z

    .prologue
    .line 920
    if-eqz p1, :cond_0

    .line 921
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->makeStrict()V

    .line 925
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->makeLenient()V

    goto :goto_0
.end method

.method public setURI(Lorg/apache/commons/httpclient/URI;)V
    .locals 1
    .param p1, "uri"    # Lorg/apache/commons/httpclient/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Lorg/apache/commons/httpclient/URI;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    .line 283
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "/"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getEscapedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setQueryString(Ljava/lang/String;)V

    .line 289
    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getEscapedPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 5
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    const/4 v4, 0x1

    const-string v3, "connection"

    .line 983
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isConnectionCloseForced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Should force-close connection."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v1, v4

    .line 1035
    :goto_0
    return v1

    .line 988
    :cond_0
    const/4 v0, 0x0

    .line 990
    .local v0, "connectionHeader":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 992
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "proxy-connection"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 997
    :cond_1
    if-nez v0, :cond_2

    .line 998
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "connection"

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1002
    :cond_2
    if-nez v0, :cond_3

    .line 1003
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "connection"

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1005
    :cond_3
    if-eqz v0, :cond_8

    .line 1006
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1007
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1008
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Should close connection in response to directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    move v1, v4

    .line 1011
    goto :goto_0

    .line 1012
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keep-alive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1013
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1014
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Should NOT close connection in response to directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1017
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1019
    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1020
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1024
    :cond_8
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Resorting to protocol version default close connection policy"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1026
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1027
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1028
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Should NOT close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1035
    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    goto/16 :goto_0

    .line 1031
    :cond_a
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1032
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Should close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public validate()Z
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x1

    return v0
.end method

.method protected writeRequest(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v7, "Expect"

    .line 2057
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter HttpMethodBase.writeRequest(HttpState, HttpConnection)"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2059
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2060
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2061
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 2062
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2063
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    .line 2066
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v4

    .line 2067
    .local v4, "ver":Lorg/apache/commons/httpclient/HttpVersion;
    const-string v5, "Expect"

    invoke-virtual {p0, v7}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 2068
    .local v1, "expectheader":Lorg/apache/commons/httpclient/Header;
    const/4 v2, 0x0

    .line 2069
    .local v2, "expectvalue":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2070
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 2072
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, "100-continue"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 2074
    sget-object v5, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2077
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->flushRequestOutputStream()V

    .line 2079
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v3

    .line 2081
    .local v3, "readTimeout":I
    const/16 v5, 0xbb8

    :try_start_0
    invoke-virtual {p2, v5}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 2082
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2083
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2084
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2085
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2087
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    .line 2089
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 2090
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "OK to continue received"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 2114
    .end local v3    # "readTimeout":I
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z

    .line 2116
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->flushRequestOutputStream()V

    .line 2117
    :goto_1
    return-void

    .line 2104
    .restart local v3    # "readTimeout":I
    :cond_3
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    goto :goto_1

    .line 2094
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2095
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2096
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2104
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    throw v5

    .line 2101
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_4
    :try_start_2
    const-string v5, "Expect"

    invoke-virtual {p0, v5}, Lorg/apache/commons/httpclient/HttpMethodBase;->removeRequestHeader(Ljava/lang/String;)V

    .line 2102
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "100 (continue) read timeout. Resume sending the request"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2104
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    goto :goto_0

    .line 2108
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "readTimeout":I
    :cond_5
    const-string v5, "Expect"

    invoke-virtual {p0, v7}, Lorg/apache/commons/httpclient/HttpMethodBase;->removeRequestHeader(Ljava/lang/String;)V

    .line 2109
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "\'Expect: 100-continue\' handshake is only supported by HTTP/1.1 or higher"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 1
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 2145
    const/4 v0, 0x1

    return v0
.end method

.method protected writeRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 2175
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpMethodBase.writeRequestHeaders(HttpState,HttpConnection)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2177
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 2179
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 2182
    .local v1, "headers":[Lorg/apache/commons/httpclient/Header;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2183
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 2184
    .local v3, "s":Ljava/lang/String;
    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2185
    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v4, v3}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    .line 2187
    :cond_0
    invoke-virtual {p2, v3, v0}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2189
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected writeRequestLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 2212
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.writeRequestLine(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2214
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestLine(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, "requestLine":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2216
    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    .line 2218
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    return-void
.end method
