.class public Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
.super Ljava/lang/Object;
.source "ByteArrayRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# instance fields
.field private content:[B

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "content"    # [B

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([BLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "content"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    .line 69
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->contentType:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 91
    return-void
.end method
