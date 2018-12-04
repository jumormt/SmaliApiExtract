.class public interface abstract Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
.super Ljava/lang/Object;
.source "SecureProtocolSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
