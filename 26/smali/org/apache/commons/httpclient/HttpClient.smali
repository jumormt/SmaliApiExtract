.class public Lorg/apache/commons/httpclient/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 66
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.commons.httpclient.HttpClient"

    invoke-static {v3}, Lorg/apache/commons/httpclient/HttpClient;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    :goto_0
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    .line 70
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :try_start_0
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Java version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "java.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 73
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Java vendor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "java.vendor"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 74
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Java class path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "java.class.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 75
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Operating system name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 76
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Operating system architecture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "os.arch"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Operating system version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 80
    .local v2, "providers":[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 81
    aget-object v1, v2, v0

    .line 82
    .local v1, "provider":Ljava/security/Provider;
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/Provider;->getVersion()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/Provider;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v1    # "provider":Ljava/security/Provider;
    .end local v2    # "providers":[Ljava/security/Provider;
    :cond_0
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->class$org$apache$commons$httpclient$HttpClient:Ljava/lang/Class;

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 88
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 1
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 169
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v2, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 188
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 194
    new-instance v2, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Params may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 116
    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 117
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/HttpConnectionManager;

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-nez v2, :cond_2

    .line 128
    new-instance v2, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 130
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 133
    :cond_3
    return-void

    .line 121
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Error instantiating connection manager class, defaulting to SimpleHttpConnectionManager"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;
    .param p2, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 194
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "httpConnectionManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p1, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 155
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 156
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 157
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
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
.method public executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;)I
    .locals 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpClient.executeMethod(HostConfiguration,HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I

    move-result v0

    return v0
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I
    .locals 6
    .param p1, "hostconfig"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 374
    sget-object v3, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter HttpClient.executeMethod(HostConfiguration,HttpMethod,HttpState)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 376
    if-nez p2, :cond_0

    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HttpMethod parameter may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 380
    .local v0, "defaulthostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    if-nez p1, :cond_1

    .line 381
    move-object p1, v0

    .line 383
    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getURI()Lorg/apache/commons/httpclient/URI;

    move-result-object v2

    .line 384
    .local v2, "uri":Lorg/apache/commons/httpclient/URI;
    if-eq p1, v0, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 386
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "hostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    check-cast p1, Lorg/apache/commons/httpclient/HostConfiguration;

    .line 387
    .restart local p1    # "hostconfig":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    invoke-virtual {p1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V

    .line 392
    :cond_3
    new-instance v1, Lorg/apache/commons/httpclient/HttpMethodDirector;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v5

    :goto_0
    invoke-direct {v1, v3, p1, v4, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V

    .line 397
    .local v1, "methodDirector":Lorg/apache/commons/httpclient/HttpMethodDirector;
    invoke-virtual {v1, p2}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 398
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v3

    return v3

    .end local v1    # "methodDirector":Lorg/apache/commons/httpclient/HttpMethodDirector;
    :cond_4
    move-object v5, p3

    .line 392
    goto :goto_0
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    .locals 3
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v0, Lorg/apache/commons/httpclient/HttpClient;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpClient.executeMethod(HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0, v2, p1, v2}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpState;)I

    move-result v0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 1

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getState()Lorg/apache/commons/httpclient/HttpState;
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStrictMode()Z
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setConnectionTimeout(I)V
    .locals 1
    .param p1, "newTimeoutInMilliseconds"    # I

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpConnectionFactoryTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerTimeout(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2
    .param p1, "httpConnectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 472
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 500
    return-void
.end method

.method public declared-synchronized setState(Lorg/apache/commons/httpclient/HttpState;)V
    .locals 1
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStrictMode(Z)V
    .locals 1
    .param p1, "strictMode"    # Z

    .prologue
    .line 235
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->makeStrict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->makeLenient()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "newTimeoutInMilliseconds"    # I

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
