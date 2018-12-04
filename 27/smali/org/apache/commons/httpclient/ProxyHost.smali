.class public Lorg/apache/commons/httpclient/ProxyHost;
.super Lorg/apache/commons/httpclient/HttpHost;
.source "ProxyHost.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/ProxyHost;-><init>(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 64
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/ProxyHost;)V
    .locals 0
    .param p1, "httpproxy"    # Lorg/apache/commons/httpclient/ProxyHost;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Lorg/apache/commons/httpclient/HttpHost;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/ProxyHost;

    .line 82
    .local v0, "copy":Lorg/apache/commons/httpclient/ProxyHost;
    return-object v0
.end method
