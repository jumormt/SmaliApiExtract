.class public Lorg/apache/commons/httpclient/methods/TraceMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "TraceMethod.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/TraceMethod;->setFollowRedirects(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "TRACE"

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->recycle()V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/TraceMethod;->setFollowRedirects(Z)V

    .line 106
    return-void
.end method
