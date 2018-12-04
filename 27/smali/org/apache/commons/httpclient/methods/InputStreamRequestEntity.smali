.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;
.source "InputStreamRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field public static final CONTENT_LENGTH_AUTO:I = -0x2

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;


# instance fields
.field private buffer:[B

.field private content:Ljava/io/InputStream;

.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.InputStreamRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 111
    iput-wide p2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    .line 112
    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 83
    const-wide/16 v0, -0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 84
    return-void
.end method

.method private bufferContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    .line 133
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v3, "tmp":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 135
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 136
    .local v2, "l":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    .end local v0    # "data":[B
    .end local v2    # "l":I
    .end local v3    # "tmp":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 143
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    iput-object v6, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 145
    iput-object v6, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 146
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v2    # "l":I
    .restart local v3    # "tmp":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 140
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 141
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    array-length v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
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
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->bufferContent()V

    .line 189
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 167
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 168
    .local v1, "tmp":[B
    const/4 v2, 0x0

    .line 169
    .local v2, "total":I
    const/4 v0, 0x0

    .line 170
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_1

    .line 171
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 172
    add-int/2addr v2, v0

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    .end local v1    # "tmp":[B
    .end local v2    # "total":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 179
    :cond_1
    return-void

    .line 177
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content must be set before entity is written"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
