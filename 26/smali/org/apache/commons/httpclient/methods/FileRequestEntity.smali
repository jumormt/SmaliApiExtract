.class public Lorg/apache/commons/httpclient/methods/FileRequestEntity;
.super Ljava/lang/Object;
.source "FileRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# instance fields
.field final contentType:Ljava/lang/String;

.field final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/FileRequestEntity;->file:Ljava/io/File;

    .line 56
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/FileRequestEntity;->contentType:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/FileRequestEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/FileRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 72
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .line 73
    .local v0, "i":I
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/FileRequestEntity;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v1, "instream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    .line 76
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 81
    return-void
.end method
