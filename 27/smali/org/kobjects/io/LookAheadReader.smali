.class public Lorg/kobjects/io/LookAheadReader;
.super Ljava/io/Reader;
.source "LookAheadReader.java"


# instance fields
.field buf:[C

.field bufPos:I

.field bufValid:I

.field reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "r"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    .line 40
    iput v4, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    .line 41
    iput v4, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    .line 46
    iput-object p1, p0, Lorg/kobjects/io/LookAheadReader;->reader:Ljava/io/Reader;

    .line 47
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/kobjects/io/LookAheadReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 97
    return-void
.end method

.method public peek(I)I
    .locals 6
    .param p1, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 117
    const/16 v2, 0x7f

    if-le p1, v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "peek > 127 not supported!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .local v0, "count":I
    .local v1, "startPos":I
    :cond_0
    iget v2, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    .line 120
    .end local v0    # "count":I
    .end local v1    # "startPos":I
    :cond_1
    iget v2, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    if-lt p1, v2, :cond_2

    .line 121
    iget v2, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    iget v3, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v3, v3

    rem-int v1, v2, v3

    .line 122
    .restart local v1    # "startPos":I
    iget-object v2, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v2, v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v3, v3

    iget v4, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .restart local v0    # "count":I
    iget-object v2, p0, Lorg/kobjects/io/LookAheadReader;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 126
    if-ne v0, v5, :cond_0

    move v2, v5

    .line 131
    .end local v0    # "count":I
    .end local v1    # "startPos":I
    :goto_0
    return v2

    :cond_2
    iget-object v2, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    iget v3, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    iget-object v4, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v4, v4

    rem-int v4, p1, v4

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v0

    .line 107
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 108
    iget v1, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    iget-object v2, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iput v3, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    .line 109
    :cond_0
    iget v1, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    .line 112
    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 54
    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 58
    :cond_0
    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    if-le p3, v0, :cond_1

    iget p3, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v0, v0

    iget v1, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v0, v0

    iget v1, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    sub-int p3, v0, v1

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    iget v1, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/kobjects/io/LookAheadReader;->bufValid:I

    .line 64
    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    .line 65
    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    iget-object v1, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    iget v0, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    iget-object v1, p0, Lorg/kobjects/io/LookAheadReader;->buf:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kobjects/io/LookAheadReader;->bufPos:I

    :cond_3
    move v0, p3

    .line 67
    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 142
    :goto_0
    return-object v1

    .line 139
    :cond_0
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lorg/kobjects/io/LookAheadReader;->readTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    :cond_1
    move-object v1, v0

    .line 142
    goto :goto_0
.end method

.method public readTo(C)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readWhile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public skip(Ljava/lang/String;)V
    .locals 4
    .param p1, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/kobjects/io/LookAheadReader;->read()I

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
