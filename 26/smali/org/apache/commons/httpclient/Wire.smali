.class Lorg/apache/commons/httpclient/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# static fields
.field public static CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

.field public static HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;


# instance fields
.field private log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lorg/apache/commons/httpclient/Wire;

    const-string v1, "httpclient.wire.header"

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    sput-object v0, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    .line 50
    new-instance v0, Lorg/apache/commons/httpclient/Wire;

    const-string v1, "httpclient.wire.content"

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    sput-object v0, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/logging/Log;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/commons/logging/Log;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    .line 57
    return-void
.end method

.method private wire(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "\""

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "ch":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 64
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 65
    const-string v2, "[\\r]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 66
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 67
    const-string v2, "[\\n]\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, "\""

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v2, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 72
    :cond_1
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-le v1, v2, :cond_3

    .line 73
    :cond_2
    const-string v2, "[0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :cond_3
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 81
    const-string v2, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v2, "\""

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v2, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 86
    :cond_5
    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public input(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->input([B)V

    .line 149
    return-void
.end method

.method public input(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    const-string v0, "<< "

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 107
    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->input([B)V

    .line 165
    return-void
.end method

.method public input([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 139
    return-void
.end method

.method public input([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 123
    return-void
.end method

.method public output(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    .line 144
    return-void
.end method

.method public output(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const-string v0, ">> "

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 99
    return-void
.end method

.method public output(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    .line 157
    return-void
.end method

.method public output([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 131
    return-void
.end method

.method public output([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 115
    return-void
.end method
