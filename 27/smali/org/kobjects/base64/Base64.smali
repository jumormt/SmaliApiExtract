.class public Lorg/kobjects/base64/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final charTab:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/kobjects/base64/Base64;->charTab:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(C)I
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 96
    if-lt p0, v2, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 97
    sub-int v0, p0, v2

    .line 109
    :goto_0
    return v0

    .line 98
    :cond_0
    if-lt p0, v3, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 99
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 100
    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 101
    sub-int v0, p0, v1

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 103
    :cond_2
    sparse-switch p0, :sswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :sswitch_0
    const/16 v0, 0x3e

    goto :goto_0

    .line 107
    :sswitch_1
    const/16 v0, 0x3f

    goto :goto_0

    .line 109
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3d

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    if-ne v0, v1, :cond_2

    .line 160
    :cond_1
    return-void

    .line 144
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/kobjects/base64/Base64;->decode(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/kobjects/base64/Base64;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/kobjects/base64/Base64;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/kobjects/base64/Base64;->decode(C)I

    move-result v4

    add-int v2, v3, v4

    .line 150
    .local v2, "tri":I
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 151
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 153
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 154
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 156
    and-int/lit16 v3, v2, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 158
    add-int/lit8 v0, v0, 0x4

    .line 159
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/kobjects/base64/Base64;->decode(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 33
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/kobjects/base64/Base64;->encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance p3, Ljava/lang/StringBuffer;

    .end local p3    # "buf":Ljava/lang/StringBuffer;
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 51
    .restart local p3    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    const/4 v5, 0x3

    sub-int v1, p2, v5

    .line 52
    .local v1, "end":I
    move v2, p1

    .line 53
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "n":I
    move v4, v3

    .line 55
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 56
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 61
    .local v0, "d":I
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v2, v2, 0x3

    .line 68
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 69
    const/4 v3, 0x0

    .line 70
    const-string v5, "\r\n"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move v4, v3

    .line 72
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    .line 74
    .end local v0    # "d":I
    :cond_2
    add-int v5, p1, p2

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_4

    .line 75
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int v0, v5, v6

    .line 79
    .restart local v0    # "d":I
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const-string v5, "="

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v0    # "d":I
    :cond_3
    :goto_1
    return-object p3

    .line 84
    :cond_4
    add-int v5, p1, p2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_3

    .line 85
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x10

    .line 87
    .restart local v0    # "d":I
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    sget-object v5, Lorg/kobjects/base64/Base64;->charTab:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, "=="

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
