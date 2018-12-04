.class public Lorg/apache/commons/httpclient/methods/OptionsMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "OptionsMethod.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;


# instance fields
.field private methodsAllowed:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.OptionsMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->class$org$apache$commons$httpclient$methods$OptionsMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    .line 97
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 74
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
.method public getAllowedMethods()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->checkUsed()V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "OPTIONS"

    return-object v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->checkUsed()V

    .line 130
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needContentLength()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 163
    sget-object v4, Lorg/apache/commons/httpclient/methods/OptionsMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter OptionsMethod.processResponseHeaders(HttpState, HttpConnection)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 165
    const-string v4, "allow"

    invoke-virtual {p0, v4}, Lorg/apache/commons/httpclient/methods/OptionsMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 166
    .local v0, "allowHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "allowHeaderValue":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "methodAllowed":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/OptionsMethod;->methodsAllowed:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    .end local v1    # "allowHeaderValue":Ljava/lang/String;
    .end local v2    # "methodAllowed":Ljava/lang/String;
    .end local v3    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    return-void
.end method
