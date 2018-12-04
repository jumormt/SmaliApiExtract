.class public Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;
.super Ljava/lang/Object;
.source "SSLProtocolSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;


# static fields
.field private static final factory:Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static getSocketFactory()Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;

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
    .line 145
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientHost"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

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
    .line 122
    if-nez p5, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getConnectionTimeout()I

    move-result v5

    .line 126
    .local v5, "timeout":I
    if-nez v5, :cond_1

    .line 127
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 130
    :cond_1
    const-string v0, "javax.net.ssl.SSLSocketFactory"

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v6

    .line 132
    .local v6, "socket":Ljava/net/Socket;
    if-nez v6, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 133
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;->createSocket(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v6

    :cond_2
    move-object v0, v6

    .line 136
    goto :goto_0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/commons/httpclient/protocol/SSLProtocolSocketFactory;
    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 172
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
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
