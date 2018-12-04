.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;
.source "ReflectionSocketFactory.java"


# static fields
.field private static INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static REFLECTION_FAILED:Z

.field private static SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

.field static class$java$net$InetAddress:Ljava/lang/Class;

.field static class$java$net$Socket:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 55
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 56
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .line 57
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    .line 58
    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 121
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

.method public static createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .locals 4
    .param p0, "socketfactoryName"    # Ljava/lang/String;
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
    .line 95
    sget-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 p0, 0x0

    .line 166
    .end local p0    # "socketfactoryName":Ljava/lang/String;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "localAddress":Ljava/net/InetAddress;
    .end local p4    # "localPort":I
    :goto_0
    return-object p0

    .line 109
    .restart local p0    # "socketfactoryName":Ljava/lang/String;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "localAddress":Ljava/net/InetAddress;
    .restart local p4    # "localPort":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
    .local v1, "socketfactoryClass":Ljava/lang/Class;
    const-string p0, "getDefault"

    .end local p0    # "socketfactoryName":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 112
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "socketfactory":Ljava/lang/Object;
    const-string p0, "createSocket"

    .end local p0    # "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 116
    .restart local p0    # "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1    # "socketfactoryClass":Ljava/lang/Class;
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "socketfactory":Ljava/lang/Object;
    check-cast v0, Ljava/net/Socket;

    .line 118
    .local v0, "socket":Ljava/net/Socket;
    sget-object p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .end local p0    # "method":Ljava/lang/reflect/Method;
    if-nez p0, :cond_1

    .line 119
    const-string p0, "java.net.InetSocketAddress"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 120
    .local p0, "addressClass":Ljava/lang/Class;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "java.net.InetAddress"

    invoke-static {v3}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .end local p0    # "addressClass":Ljava/lang/Class;
    sput-object p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 124
    :cond_1
    sget-object p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .end local p1    # "host":Ljava/lang/String;
    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 127
    .local p1, "remoteaddr":Ljava/lang/Object;
    sget-object p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2    # "port":I
    const/4 v1, 0x0

    aput-object p3, p2, v1

    const/4 p3, 0x1

    new-instance v1, Ljava/lang/Integer;

    .end local p3    # "localAddress":Ljava/net/InetAddress;
    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, p2, p3

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 130
    .local p0, "localaddr":Ljava/lang/Object;
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    if-nez p2, :cond_2

    .line 131
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez p2, :cond_5

    const-string p2, "java.net.Socket"

    invoke-static {p2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_2
    const-string p3, "connect"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Class;

    .end local p4    # "localPort":I
    const/4 v1, 0x0

    const-string v2, "java.net.SocketAddress"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p4, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p4, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    sput-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .line 135
    :cond_2
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    if-nez p2, :cond_3

    .line 136
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez p2, :cond_6

    const-string p2, "java.net.Socket"

    invoke-static {p2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_3
    const-string p3, "bind"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "java.net.SocketAddress"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p4, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    sput-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    .line 139
    :cond_3
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    .end local p0    # "localaddr":Ljava/lang/Object;
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p1, 0x1

    new-instance p3, Ljava/lang/Integer;

    .end local p1    # "remoteaddr":Ljava/lang/Object;
    invoke-direct {p3, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object p3, p2, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 141
    goto/16 :goto_0

    .line 120
    .local p0, "addressClass":Ljava/lang/Class;
    .local p1, "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "localAddress":Ljava/net/InetAddress;
    .restart local p4    # "localPort":I
    :cond_4
    sget-object v3, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    goto/16 :goto_1

    .line 131
    .end local p2    # "port":I
    .end local p3    # "localAddress":Ljava/net/InetAddress;
    .local p0, "localaddr":Ljava/lang/Object;
    .local p1, "remoteaddr":Ljava/lang/Object;
    :cond_5
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    goto :goto_2

    .line 136
    .end local p4    # "localPort":I
    :cond_6
    sget-object p2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 143
    .end local v0    # "socket":Ljava/net/Socket;
    .end local p0    # "localaddr":Ljava/lang/Object;
    .end local p1    # "remoteaddr":Ljava/lang/Object;
    :catch_0
    move-exception p0

    .line 144
    .local p0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 145
    .local p0, "cause":Ljava/lang/Throwable;
    sget-object p1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    if-nez p1, :cond_7

    .line 147
    :try_start_1
    const-string p1, "java.net.SocketTimeoutException"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_7
    sget-object p1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 155
    new-instance p1, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "The host did not accept the connection within timeout of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 148
    :catch_1
    move-exception p0

    .line 150
    .local p0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 p0, 0x1

    sput-boolean p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 151
    .end local p0    # "ex":Ljava/lang/ClassNotFoundException;
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 159
    .local p0, "cause":Ljava/lang/Throwable;
    :cond_8
    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_9

    .line 160
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "cause":Ljava/lang/Throwable;
    throw p0

    .line 162
    .restart local p0    # "cause":Ljava/lang/Throwable;
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 164
    .end local p0    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception p0

    .line 165
    .local p0, "e":Ljava/lang/Exception;
    const/4 p0, 0x1

    sput-boolean p0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    .line 166
    .end local p0    # "e":Ljava/lang/Exception;
    const/4 p0, 0x0

    goto/16 :goto_0
.end method
