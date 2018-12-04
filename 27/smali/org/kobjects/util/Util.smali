.class public final Lorg/kobjects/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "local"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3a

    const-string v4, "file:///"

    const-string v3, "/"

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 62
    .local v0, "ci":I
    const-string v1, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 67
    :cond_1
    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    move-object v1, p1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    if-nez p0, :cond_4

    .line 71
    const-string p0, "file:///"

    .line 80
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_5
    const-string v1, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 50
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 53
    :goto_1
    return v1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 9
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v8, 0x2

    .line 86
    sub-int v7, p2, p1

    if-gt v7, v8, :cond_1

    .line 87
    sub-int v7, p2, p1

    if-ne v7, v8, :cond_0

    aget-object v7, p0, p1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    aget-object v8, p0, v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 90
    aget-object v6, p0, p1

    .line 91
    .local v6, "tmp":Ljava/lang/Object;
    add-int/lit8 v7, p1, 0x1

    aget-object v7, p0, v7

    aput-object v7, p0, p1

    .line 92
    add-int/lit8 v7, p1, 0x1

    aput-object v6, p0, v7

    .line 134
    .end local v6    # "tmp":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sub-int v7, p2, p1

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 100
    add-int/lit8 v7, p1, 0x2

    invoke-static {p0, p1, v7}, Lorg/kobjects/util/Util;->sort([Ljava/lang/Object;II)V

    .line 101
    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x3

    invoke-static {p0, v7, v8}, Lorg/kobjects/util/Util;->sort([Ljava/lang/Object;II)V

    .line 102
    add-int/lit8 v7, p1, 0x2

    invoke-static {p0, p1, v7}, Lorg/kobjects/util/Util;->sort([Ljava/lang/Object;II)V

    goto :goto_0

    .line 107
    :cond_2
    add-int v7, p1, p2

    div-int/lit8 v5, v7, 0x2

    .line 109
    .local v5, "middle":I
    invoke-static {p0, p1, v5}, Lorg/kobjects/util/Util;->sort([Ljava/lang/Object;II)V

    .line 110
    invoke-static {p0, v5, p2}, Lorg/kobjects/util/Util;->sort([Ljava/lang/Object;II)V

    .line 112
    sub-int v7, p2, p1

    new-array v6, v7, [Ljava/lang/Object;

    .line 114
    .local v6, "tmp":[Ljava/lang/Object;
    move v1, p1

    .line 115
    .local v1, "i0":I
    move v3, v5

    .line 118
    .local v3, "i1":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 120
    if-ne v1, v5, :cond_3

    .line 121
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i1":I
    .local v4, "i1":I
    aget-object v7, p0, v3

    aput-object v7, v6, v0

    move v3, v4

    .line 118
    .end local v4    # "i1":I
    .restart local v3    # "i1":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_3
    if-eq v3, p2, :cond_4

    aget-object v7, p0, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    .line 126
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i0":I
    .local v2, "i0":I
    aget-object v7, p0, v1

    aput-object v7, v6, v0

    move v1, v2

    .end local v2    # "i0":I
    .restart local v1    # "i0":I
    goto :goto_2

    .line 129
    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i1":I
    .restart local v4    # "i1":I
    aget-object v7, p0, v3

    aput-object v7, v6, v0

    move v3, v4

    .end local v4    # "i1":I
    .restart local v3    # "i1":I
    goto :goto_2

    .line 133
    :cond_6
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, p0, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static streamcopy(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/16 v2, 0x4000

    :goto_0
    new-array v0, v2, [B

    .line 39
    .local v0, "buf":[B
    :goto_1
    array-length v2, v0

    invoke-virtual {p0, v0, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 40
    .local v1, "count":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    return-object p1

    .line 34
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    :cond_0
    const/16 v2, 0x80

    goto :goto_0

    .line 42
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    :cond_1
    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method
