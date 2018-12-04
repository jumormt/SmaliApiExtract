.class public Lcom/wiyun/ad/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wiyun/ad/j;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/wiyun/ad/j;->b:[C

    return-void

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

    :array_1
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static a([B)[C
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wiyun/ad/j;->a([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static a([BZ)[C
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/wiyun/ad/j;->a:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/wiyun/ad/j;->a([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/wiyun/ad/j;->b:[C

    goto :goto_0
.end method

.method protected static a([B[C)[C
    .locals 6

    const/4 v2, 0x0

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/wiyun/ad/j;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
