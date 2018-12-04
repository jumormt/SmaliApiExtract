.class public abstract Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;
.super Ljava/lang/Object;
.source "ControllerThreadSocketFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SocketTask"
.end annotation


# instance fields
.field private exception:Ljava/io/IOException;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->exception:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public abstract doit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->doit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method protected setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "newSocket"    # Ljava/net/Socket;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->socket:Ljava/net/Socket;

    .line 140
    return-void
.end method
