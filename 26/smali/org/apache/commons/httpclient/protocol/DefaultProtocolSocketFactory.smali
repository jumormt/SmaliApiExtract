.class public Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
.super Ljava/lang/Object;
.source "DefaultProtocolSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# static fields
.field private static final factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static getSocketFactory()Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/commons/httpclient/params/HttpConnectionParams;)Ljava/net/Socket;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p5, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getConnectionTimeout()I

    move-result v5

    .line 121
    .local v5, "timeout":I
    if-nez v5, :cond_1

    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const-string v0, "javax.net.SocketFactory"

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v6

    .line 127
    .local v6, "socket":Ljava/net/Socket;
    if-nez v6, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 128
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;->createSocket(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v6

    :cond_2
    move-object v0, v6

    .line 131
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
