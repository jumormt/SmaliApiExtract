.class public Lorg/apache/commons/httpclient/methods/multipart/FilePart;
.super Lorg/apache/commons/httpclient/methods/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;


# instance fields
.field private source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.multipart.FilePart"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void

    .line 69
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lorg/apache/commons/httpclient/methods/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p3, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    if-nez p4, :cond_1

    const-string v1, "ISO-8859-1"

    :goto_1
    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p2, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p3

    .line 93
    goto :goto_0

    :cond_1
    move-object v1, p4

    goto :goto_1

    .line 103
    :cond_2
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    .line 104
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 69
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
.method protected getSource()Lorg/apache/commons/httpclient/methods/multipart/PartSource;
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getSource()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v3, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter sendData(OutputStream out)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->lengthOfData()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 214
    sget-object v3, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "No data to send."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 219
    .local v2, "tmp":[B
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v3}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 222
    .local v0, "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_1

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 227
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 191
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 192
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 194
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 195
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    :cond_0
    return-void
.end method
