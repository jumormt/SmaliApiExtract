.class public Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;
.super Ljava/lang/Object;
.source "ByteArrayPartSource.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/multipart/PartSource;


# instance fields
.field private bytes:[B

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;->bytes:[B

    .line 64
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
