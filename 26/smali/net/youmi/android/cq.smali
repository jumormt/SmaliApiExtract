.class Lnet/youmi/android/cq;
.super Ljava/lang/Object;


# static fields
.field static final a:[C

.field static final b:[C

.field private static final c:[C

.field private static final d:C

.field private static final e:C

.field private static final f:C

.field private static final g:C

.field private static final h:C

.field private static final i:C

.field private static final j:[C

.field private static k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/youmi/android/cq;->c:[C

    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->d:C

    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->e:C

    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->f:C

    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->g:C

    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->h:C

    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/cq;->i:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/youmi/android/cq;->j:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/youmi/android/cq;->a:[C

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/youmi/android/cq;->b:[C

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/youmi/android/cq;->k:[I

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lnet/youmi/android/cq;->c:[C

    sget-object v3, Lnet/youmi/android/cq;->c:[C

    array-length v3, v3

    invoke-static {v3}, Lnet/youmi/android/bn;->a(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "+"

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static a([B)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x10

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v1, v9, [C

    fill-array-data v1, :array_0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [C

    move v5, v4

    :goto_0
    if-lt v4, v9, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    aget-byte v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    aput-char v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static final a([BLjava/lang/String;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, p0

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lnet/youmi/android/cq;->a([B)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v11

    :goto_1
    const/16 v4, 0x1a

    if-lt v2, v4, :cond_4

    const/16 v2, 0x43

    if-ge v3, v2, :cond_f

    const/16 v2, 0x43

    :goto_2
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    const/4 v3, 0x1

    sub-int v3, v2, v3

    :goto_3
    if-gtz v3, :cond_7

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v4, p1

    array-length v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v11, v7

    move v7, v6

    move v6, v11

    :goto_4
    if-lt v6, v5, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget-object v4, Lnet/youmi/android/cq;->c:[C

    rem-int/lit8 v5, p1, 0x3

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v11, v4

    move v4, v2

    move v2, v11

    :goto_5
    if-lt v2, p1, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v4, v3, 0x3

    if-le v4, v2, :cond_2

    move v4, v2

    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_3

    const/4 v5, 0x0

    :goto_6
    sget-object v6, Lnet/youmi/android/cq;->c:[C

    aget-char v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lnet/youmi/android/cq;->c:[C

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_3
    ushr-int/lit8 v5, v4, 0x6

    goto :goto_6

    :cond_4
    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-le v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x2

    sub-int v3, v2, v3

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_7
    sget-object v6, Lnet/youmi/android/cq;->k:[I

    array-length v6, v6

    if-lt v5, v6, :cond_8

    :goto_8
    if-nez v4, :cond_0

    add-int/lit8 v3, v3, -0x2

    goto/16 :goto_3

    :cond_8
    sget-object v6, Lnet/youmi/android/cq;->k:[I

    aget v6, v6, v5

    rem-int v6, v3, v6

    if-nez v6, :cond_9

    const/4 v4, 0x0

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    aget-byte v8, p0, v6

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p1, v7

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    if-lt v9, v4, :cond_e

    const/4 v8, 0x0

    :goto_9
    and-int/lit16 v9, v7, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    sget-object v10, Lnet/youmi/android/cq;->a:[C

    aget-char v9, v10, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v7, 0xf

    sget-object v9, Lnet/youmi/android/cq;->a:[C

    aget-char v7, v9, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v5, v2, 0x3

    if-ge v5, p1, :cond_c

    add-int/lit8 v5, v2, 0x3

    :goto_a
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x40

    if-ge v5, v6, :cond_d

    const/4 v6, 0x0

    :goto_b
    int-to-byte v6, v6

    mul-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x3623

    and-int/lit8 v4, v4, 0x3f

    sget-object v7, Lnet/youmi/android/cq;->c:[C

    add-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v7, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x3623

    and-int/lit8 v4, v4, 0x3f

    sget-object v6, Lnet/youmi/android/cq;->c:[C

    add-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_c
    move v5, p1

    goto :goto_a

    :cond_d
    ushr-int/lit8 v6, v5, 0x6

    goto :goto_b

    :cond_e
    move v8, v9

    goto :goto_9

    :cond_f
    move v2, v3

    goto/16 :goto_2
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v7

    move v3, v7

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v4, v2, 0x3

    if-ge v4, v0, :cond_1

    add-int/lit8 v4, v2, 0x3

    :goto_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_2

    move v5, v7

    :goto_2
    int-to-byte v5, v5

    sget-object v6, Lnet/youmi/android/cq;->c:[C

    aget-char v5, v6, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    sget-object v5, Lnet/youmi/android/cq;->c:[C

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :cond_2
    ushr-int/lit8 v5, v4, 0x6

    goto :goto_2
.end method
