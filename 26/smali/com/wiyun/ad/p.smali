.class public Lcom/wiyun/ad/p;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Random;

.field static b:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/wiyun/ad/p;->a:Ljava/util/Random;

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    aput v4, v2, v5

    aput v6, v2, v7

    aput v8, v2, v4

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v4, v1, v2

    aput v8, v1, v5

    aput v6, v1, v7

    aput v5, v1, v4

    aput v7, v1, v6

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v5

    aput v7, v1, v7

    aput v5, v1, v4

    aput v4, v1, v8

    aput v8, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    aput v8, v1, v5

    aput v4, v1, v7

    aput v7, v1, v4

    aput v5, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v6, v1, v2

    aput v4, v1, v5

    aput v5, v1, v7

    aput v8, v1, v4

    aput v7, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    aput v8, v1, v5

    aput v4, v1, v4

    aput v6, v1, v8

    aput v5, v1, v6

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    aput v7, v2, v5

    aput v4, v2, v4

    aput v5, v2, v8

    aput v6, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    aput v7, v2, v7

    aput v6, v2, v4

    aput v5, v2, v8

    aput v4, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/wiyun/ad/p;->b:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    xor-int/2addr v3, v2

    const-string v4, "%06x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/wiyun/ad/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v3, v1, 0x3e5

    rem-int v0, v3, v0

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    rem-int/lit8 v1, p1, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v3, v6

    :goto_0
    if-lt v3, v7, :cond_0

    move-object v1, v0

    move v0, v6

    :goto_1
    if-lt v0, v7, :cond_1

    return-object v1

    :cond_0
    sget-object v4, Lcom/wiyun/ad/p;->b:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v1, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int v0, p2, v0

    if-gtz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, p0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v2, v0, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v0, v5

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    const/4 v7, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    const-string v10, "%010d"

    invoke-static {p0}, Lcom/wiyun/ad/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p1}, Lcom/wiyun/ad/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    xor-long v4, v0, v2

    const-string v6, "%010d"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%010d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    :goto_0
    if-lt v1, v9, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x38

    if-le v1, v2, :cond_0

    const/16 v1, 0x37

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    xor-long/2addr v4, v2

    const-wide/32 v6, 0x3b9aca00

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    xor-long/2addr v4, v6

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, p2}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xf

    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    move v8, p2

    move-object p2, p0

    move p0, v8

    :goto_0
    if-gez p0, :cond_0

    return-object p2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x10

    invoke-static {p2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int p2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "%03x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%03x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    xor-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, p0, 0x1

    invoke-static {p2, v2}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p0, p0, -0x1

    goto :goto_0
.end method
