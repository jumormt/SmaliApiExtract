.class public Lorg/apache/commons/httpclient/params/HostParams;
.super Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.source "HostParams.java"


# static fields
.field public static final DEFAULT_HEADERS:Ljava/lang/String; = "http.default-headers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 0
    .param p1, "defaults"    # Lorg/apache/commons/httpclient/params/HttpParams;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getVirtualHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "http.virtual-host"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HostParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/commons/httpclient/params/HostParams;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setVirtualHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "http.virtual-host"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HostParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method
