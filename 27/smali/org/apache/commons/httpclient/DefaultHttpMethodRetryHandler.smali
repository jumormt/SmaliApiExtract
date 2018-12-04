.class public Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpMethodRetryHandler.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethodRetryHandler;


# static fields
.field private static SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    .line 51
    :try_start_0
    const-string v0, "javax.net.ssl.SSLHandshakeException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>(IZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z
    .locals 4
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "exception"    # Ljava/io/IOException;
    .param p3, "executionCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP method may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    if-nez p2, :cond_1

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exception parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    instance-of v1, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v1, :cond_2

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 131
    :goto_0
    return v1

    .line 101
    :cond_2
    iget v1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    if-le p3, v1, :cond_3

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    instance-of v1, p2, Lorg/apache/commons/httpclient/NoHttpResponseException;

    if-eqz v1, :cond_4

    move v1, v3

    .line 107
    goto :goto_0

    .line 109
    :cond_4
    instance-of v1, p2, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_5

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_5
    instance-of v1, p2, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_6

    move v1, v2

    .line 115
    goto :goto_0

    .line 117
    :cond_6
    instance-of v1, p2, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_7

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    if-eqz v1, :cond_8

    sget-object v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_8
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v1, :cond_a

    :cond_9
    move v1, v3

    .line 128
    goto :goto_0

    :cond_a
    move v1, v2

    .line 131
    goto :goto_0
.end method
