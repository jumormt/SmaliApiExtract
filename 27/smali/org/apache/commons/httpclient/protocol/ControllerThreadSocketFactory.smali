.class public final Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;
.super Ljava/lang/Object;
.source "ControllerThreadSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static createSocket(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;I)Ljava/net/Socket;
    .locals 5
    .param p0, "task"    # Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 112
    int-to-long v2, p1

    :try_start_0
    invoke-static {p0, v2, v3}, Lorg/apache/commons/httpclient/util/TimeoutController;->execute(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 119
    .local v1, "socket":Ljava/net/Socket;
    invoke-static {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 113
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
    new-instance v2, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The host did not accept the connection within timeout of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "e":Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
    .restart local v1    # "socket":Ljava/net/Socket;
    :cond_0
    return-object v1
.end method

.method public static createSocket(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .locals 8
    .param p0, "socketfactory"    # Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;-><init>(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 95
    .local v0, "task":Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
    int-to-long v1, p5

    :try_start_0
    invoke-static {v0, v1, v2}, Lorg/apache/commons/httpclient/util/TimeoutController;->execute(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->getSocket()Ljava/net/Socket;

    move-result-object v7

    .line 102
    .local v7, "socket":Ljava/net/Socket;
    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 96
    .end local v7    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
    new-instance v1, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The host did not accept the connection within timeout of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v6    # "e":Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException;
    .restart local v7    # "socket":Ljava/net/Socket;
    :cond_0
    return-object v7
.end method
