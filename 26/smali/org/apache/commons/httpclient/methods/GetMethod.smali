.class public Lorg/apache/commons/httpclient/methods/GetMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "GetMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$GetMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->class$org$apache$commons$httpclient$methods$GetMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.GetMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->class$org$apache$commons$httpclient$methods$GetMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->class$org$apache$commons$httpclient$methods$GetMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->setFollowRedirects(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter GetMethod(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->setFollowRedirects(Z)V

    .line 92
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
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
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "GET"

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lorg/apache/commons/httpclient/methods/GetMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter GetMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 125
    invoke-super {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->recycle()V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->setFollowRedirects(Z)V

    .line 127
    return-void
.end method
