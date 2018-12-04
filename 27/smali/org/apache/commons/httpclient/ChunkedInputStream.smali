.class public Lorg/apache/commons/httpclient/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;


# instance fields
.field private bof:Z

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private in:Ljava/io/InputStream;

.field private method:Lorg/apache/commons/httpclient/HttpMethod;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.ChunkedInputStream"

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    .line 78
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 81
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    .line 108
    iput-object p2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    .line 109
    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 110
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 87
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

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/16 v1, 0x400

    new-array v0, v1, [B

    .line 369
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 372
    return-void
.end method

.method private static getChunkSizeFromInputStream(Ljava/io/InputStream;)I
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 246
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 249
    .local v6, "state":I
    :goto_0
    if-eq v6, v8, :cond_2

    .line 250
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 251
    .local v0, "b":I
    if-ne v0, v8, :cond_0

    .line 252
    new-instance v7, Ljava/io/IOException;

    const-string v8, "chunked stream ended unexpectedly"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 254
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 291
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "assertion failed"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 256
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    .line 264
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 258
    :sswitch_0
    const/4 v6, 0x1

    .line 259
    goto :goto_0

    .line 261
    :sswitch_1
    const/4 v6, 0x2

    goto :goto_1

    .line 269
    :pswitch_1
    const/16 v7, 0xa

    if-ne v0, v7, :cond_1

    .line 270
    const/4 v6, -0x1

    goto :goto_0

    .line 273
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Protocol violation: Unexpected single newline character in chunk size"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 279
    :pswitch_2
    sparse-switch v0, :sswitch_data_1

    .line 288
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 281
    :sswitch_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 282
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 285
    :sswitch_3
    const/4 v6, 0x0

    goto :goto_2

    .line 296
    .end local v0    # "b":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "dataString":Ljava/lang/String;
    const/16 v7, 0x3b

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 298
    .local v5, "separator":I
    if-lez v5, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 304
    :goto_3
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 308
    .local v4, "result":I
    return v4

    .line 298
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_3

    .line 305
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 306
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Bad chunk size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 256
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch

    .line 279
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->readCRLF()V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->getChunkSizeFromInputStream(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    .line 222
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    .line 223
    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 224
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 226
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->parseTrailerHeaders()V

    .line 228
    :cond_1
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, "footers":[Lorg/apache/commons/httpclient/Header;
    :try_start_0
    const-string v0, "US-ASCII"

    .line 319
    .local v0, "charset":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v5, :cond_0

    .line 320
    iget-object v5, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v5}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v5, v0}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 329
    iget-object v5, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v5, :cond_1

    .line 330
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 331
    iget-object v5, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Lorg/apache/commons/httpclient/HttpMethod;->addResponseFooter(Lorg/apache/commons/httpclient/Header;)V

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "charset":Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 324
    .local v1, "e":Lorg/apache/commons/httpclient/HttpException;
    sget-object v5, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Error parsing trailer headers"

    invoke-interface {v5, v6, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 325
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "ioe":Ljava/io/IOException;
    invoke-static {v4, v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 327
    throw v4

    .line 334
    .end local v1    # "e":Lorg/apache/commons/httpclient/HttpException;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readCRLF()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 205
    .local v0, "cr":I
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 206
    .local v1, "lf":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 207
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CRLF expected at end of chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 343
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_1

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-nez v0, :cond_0

    .line 346
    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 350
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    .line 353
    :cond_1
    return-void

    .line 349
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 350
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 152
    :goto_0
    return v0

    .line 145
    :cond_1
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v0, v1, :cond_2

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 152
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 168
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_1

    move v1, v3

    .line 184
    :goto_0
    return v1

    .line 175
    :cond_1
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_2

    .line 176
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    .line 177
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    move v1, v3

    .line 178
    goto :goto_0

    .line 181
    :cond_2
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 182
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 183
    .local v0, "count":I
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    move v1, v0

    .line 184
    goto :goto_0
.end method
