.class final Lorg/apache/commons/httpclient/auth/NTLM;
.super Ljava/lang/Object;
.source "NTLM.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"


# instance fields
.field private credentialCharset:Ljava/lang/String;

.field private currentPosition:I

.field private currentResponse:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 79
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-void
.end method

.method private addByte(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aput-byte p1, v0, v1

    .line 191
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 192
    return-void
.end method

.method private addBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 201
    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private calcResp([B[B[B)V
    .locals 10
    .param p1, "keys"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "results"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    .line 501
    new-array v1, v8, [B

    .line 502
    .local v1, "keys1":[B
    new-array v2, v8, [B

    .line 503
    .local v2, "keys2":[B
    new-array v3, v8, [B

    .line 504
    .local v3, "keys3":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 505
    aget-byte v7, p1, v0

    aput-byte v7, v1, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 509
    add-int/lit8 v7, v0, 0x7

    aget-byte v7, p1, v7

    aput-byte v7, v2, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 513
    add-int/lit8 v7, v0, 0xe

    aget-byte v7, p1, v7

    aput-byte v7, v3, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 515
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v4

    .line 517
    .local v4, "results1":[B
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v5

    .line 519
    .local v5, "results2":[B
    invoke-direct {p0, v3, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v6

    .line 521
    .local v6, "results3":[B
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_3

    .line 522
    aget-byte v7, v4, v0

    aput-byte v7, p3, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 524
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_4

    .line 525
    add-int/lit8 v7, v0, 0x8

    aget-byte v8, v5, v0

    aput-byte v8, p3, v7

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 527
    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_5

    .line 528
    add-int/lit8 v7, v0, 0x10

    aget-byte v8, v6, v0

    aput-byte v8, p3, v7

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 530
    :cond_5
    return-void
.end method

.method private convertShort(I)[B
    .locals 10
    .param p1, "num"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 538
    new-array v3, v6, [B

    .line 539
    .local v3, "val":[B
    invoke-static {p1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "hex":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_0

    .line 541
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "low":Ljava/lang/String;
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "high":Ljava/lang/String;
    invoke-static {v2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 547
    const/4 v4, 0x1

    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 548
    return-object v3
.end method

.method private encrypt([B[B)[B
    .locals 5
    .param p1, "key"    # [B
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->getCipher([B)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 167
    .local v1, "ecipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 168
    .local v2, "enc":[B
    return-object v2

    .line 169
    .end local v2    # "enc":[B
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "Invalid block size for DES encryption."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v4, "Data not padded correctly for DES encryption."

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getCipher([B)Ljavax/crypto/Cipher;
    .locals 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    const-string v2, "DES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 115
    .local v1, "ecipher":Ljavax/crypto/Cipher;
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->setupKey([B)[B

    move-result-object p1

    .line 116
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 117
    return-object v1

    .line 118
    .end local v1    # "ecipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "DES encryption is not available."

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 120
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 121
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "Invalid key for DES encryption."

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 122
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 123
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "NoPadding option for DES is not available."

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getResponse()Ljava/lang/String;
    .locals 5

    .prologue
    .line 212
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-le v3, v4, :cond_1

    .line 213
    iget v3, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    new-array v2, v3, [B

    .line 214
    .local v2, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-ge v0, v3, :cond_0

    .line 215
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    move-object v1, v2

    .line 221
    .end local v0    # "i":I
    .end local v2    # "tmp":[B
    .local v1, "resp":[B
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 219
    .end local v1    # "resp":[B
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    .restart local v1    # "resp":[B
    goto :goto_1
.end method

.method private hashPassword(Ljava/lang/String;[B)[B
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    .line 433
    .local v10, "passw":[B
    const/4 v11, 0x7

    new-array v6, v11, [B

    .line 434
    .local v6, "lmPw1":[B
    const/4 v11, 0x7

    new-array v7, v11, [B

    .line 436
    .local v7, "lmPw2":[B
    array-length v2, v10

    .line 437
    .local v2, "len":I
    const/4 v11, 0x7

    if-le v2, v11, :cond_0

    .line 438
    const/4 v2, 0x7

    .line 442
    :cond_0
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 443
    aget-byte v11, v10, v1

    aput-byte v11, v6, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_1
    :goto_1
    const/4 v11, 0x7

    if-ge v1, v11, :cond_2

    .line 446
    const/4 v11, 0x0

    aput-byte v11, v6, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_2
    array-length v2, v10

    .line 450
    const/16 v11, 0xe

    if-le v2, v11, :cond_3

    .line 451
    const/16 v2, 0xe

    .line 453
    :cond_3
    const/4 v1, 0x7

    :goto_2
    if-ge v1, v2, :cond_4

    .line 454
    const/4 v11, 0x7

    sub-int v11, v1, v11

    aget-byte v12, v10, v1

    aput-byte v12, v7, v11

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 456
    :cond_4
    :goto_3
    const/16 v11, 0xe

    if-ge v1, v11, :cond_5

    .line 457
    const/4 v11, 0x7

    sub-int v11, v1, v11

    const/4 v12, 0x0

    aput-byte v12, v7, v11

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 461
    :cond_5
    const/16 v11, 0x8

    new-array v9, v11, [B

    fill-array-data v9, :array_0

    .line 467
    .local v9, "magic":[B
    invoke-direct {p0, v6, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v4

    .line 469
    .local v4, "lmHpw1":[B
    invoke-direct {p0, v7, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v5

    .line 471
    .local v5, "lmHpw2":[B
    const/16 v11, 0x15

    new-array v3, v11, [B

    .line 472
    .local v3, "lmHpw":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v11, v4

    if-ge v0, v11, :cond_6

    .line 473
    aget-byte v11, v4, v0

    aput-byte v11, v3, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 475
    :cond_6
    const/4 v0, 0x0

    :goto_5
    array-length v11, v5

    if-ge v0, v11, :cond_7

    .line 476
    add-int/lit8 v11, v0, 0x8

    aget-byte v12, v5, v0

    aput-byte v12, v3, v11

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 478
    :cond_7
    const/4 v0, 0x0

    :goto_6
    const/4 v11, 0x5

    if-ge v0, v11, :cond_8

    .line 479
    add-int/lit8 v11, v0, 0x10

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 483
    :cond_8
    const/16 v11, 0x18

    new-array v8, v11, [B

    .line 484
    .local v8, "lmResp":[B
    invoke-direct {p0, v3, p2, v8}, Lorg/apache/commons/httpclient/auth/NTLM;->calcResp([B[B[B)V

    .line 486
    return-object v8

    .line 461
    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private prepareResponse(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 181
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 183
    return-void
.end method

.method private setupKey([B)[B
    .locals 8
    .param p1, "key56"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 135
    .local v1, "key":[B
    aget-byte v2, p1, v3

    shr-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 136
    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 138
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 140
    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 142
    aget-byte v2, p1, v6

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x3

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 144
    const/4 v2, 0x5

    aget-byte v3, p1, v7

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 146
    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 148
    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 151
    aget-byte v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCredentialCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "response":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 100
    .end local v6    # "response":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "response":Ljava/lang/String;
    goto :goto_0
.end method

.method public getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 235
    const-string v9, "ASCII"

    invoke-static {p1, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 236
    .local v4, "hostBytes":[B
    const-string v9, "ASCII"

    invoke-static {p2, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 238
    .local v2, "domainBytes":[B
    array-length v9, v4

    add-int/lit8 v9, v9, 0x20

    array-length v10, v2

    add-int v3, v9, v10

    .line 239
    .local v3, "finalLength":I
    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    .line 242
    const-string v9, "NTLMSSP"

    const-string v10, "ASCII"

    invoke-static {v9, v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 243
    .local v8, "protocol":[B
    invoke-direct {p0, v8}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 244
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 247
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 248
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 249
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 250
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 253
    const/4 v9, 0x6

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 254
    const/16 v9, 0x52

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 255
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 256
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 259
    array-length v7, v2

    .line 260
    .local v7, "iDomLen":I
    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v0

    .line 261
    .local v0, "domLen":[B
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 262
    const/4 v9, 0x1

    aget-byte v9, v0, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 265
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 266
    const/4 v9, 0x1

    aget-byte v9, v0, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 269
    array-length v9, v4

    add-int/lit8 v9, v9, 0x20

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v1

    .line 270
    .local v1, "domOff":[B
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 271
    const/4 v9, 0x1

    aget-byte v9, v1, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 272
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 273
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 276
    array-length v9, v4

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v5

    .line 277
    .local v5, "hostLen":[B
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 278
    const/4 v9, 0x1

    aget-byte v9, v5, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 281
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 282
    const/4 v9, 0x1

    aget-byte v9, v5, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 285
    const/16 v9, 0x20

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v6

    .line 286
    .local v6, "hostOff":[B
    const/4 v9, 0x0

    aget-byte v9, v6, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 287
    const/4 v9, 0x1

    aget-byte v9, v6, v9

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 288
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 289
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 292
    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 295
    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 297
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 16
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v10, 0x0

    .line 336
    .local v10, "ntRespLen":I
    const/16 v9, 0x18

    .line 337
    .local v9, "lmRespLen":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 338
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 340
    const-string v14, "ASCII"

    move-object/from16 v0, p4

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 341
    .local v3, "domainBytes":[B
    const-string v14, "ASCII"

    move-object/from16 v0, p3

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 342
    .local v6, "hostBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    .line 343
    .local v12, "userBytes":[B
    array-length v4, v3

    .line 344
    .local v4, "domainLen":I
    array-length v7, v6

    .line 345
    .local v7, "hostLen":I
    array-length v13, v12

    .line 346
    .local v13, "userLen":I
    add-int/lit8 v14, v10, 0x40

    add-int/lit8 v14, v9, 0x40

    add-int/lit8 v14, v4, 0x58

    add-int/2addr v14, v13

    add-int v5, v14, v7

    .line 348
    .local v5, "finalLength":I
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    .line 349
    const-string v14, "NTLMSSP"

    const-string v15, "ASCII"

    invoke-static {v14, v15}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 350
    .local v11, "ntlmssp":[B
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 351
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 352
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 354
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 355
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 358
    const/16 v14, 0x18

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 359
    const/16 v14, 0x18

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 362
    const/16 v14, 0x18

    sub-int v14, v5, v14

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 363
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 364
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 367
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 368
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 371
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 372
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 373
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 376
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 377
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 380
    const/16 v14, 0x40

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 381
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 385
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 386
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 389
    add-int/lit8 v14, v4, 0x40

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 390
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 391
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 394
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 395
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 398
    add-int/lit8 v14, v4, 0x40

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 400
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v14, 0x6

    if-ge v8, v14, :cond_0

    .line 401
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 400
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 405
    :cond_0
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 406
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 407
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 410
    const/4 v14, 0x6

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 411
    const/16 v14, 0x52

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 412
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 413
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 415
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 416
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 417
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->hashPassword(Ljava/lang/String;[B)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method public parseType2Message(Ljava/lang/String;)[B
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 309
    const-string v3, "ASCII"

    invoke-static {p1, v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 310
    .local v1, "msg":[B
    new-array v2, v4, [B

    .line 312
    .local v2, "nonce":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 313
    add-int/lit8 v3, v0, 0x18

    aget-byte v3, v1, v3

    aput-byte v3, v2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v2
.end method

.method public setCredentialCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "credentialCharset"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    .line 563
    return-void
.end method
