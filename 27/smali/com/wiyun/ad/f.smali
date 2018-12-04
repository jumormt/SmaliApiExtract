.class Lcom/wiyun/ad/f;
.super Ljava/lang/Object;


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wiyun/ad/f;->a:[C

    return-void

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

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/wiyun/ad/f;->a(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;I)I
    .locals 2

    if-nez p1, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v5

    :goto_0
    if-lt v1, v0, :cond_0

    if-ne v2, v5, :cond_2

    move v0, v4

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string v1, "/"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    const-string v0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x25

    const-string v0, "%25"

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v10

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v3, v1, v0

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-static {v2, v3, p1}, Lcom/wiyun/ad/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    array-length v3, v1

    sub-int/2addr v3, v10

    if-ge v0, v3, :cond_2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    move v4, v9

    :goto_3
    if-ne v5, v8, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/wiyun/ad/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p1}, Lcom/wiyun/ad/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    if-ne v5, v4, :cond_5

    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    if-ge v5, v4, :cond_f

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_6

    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x2

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_3

    :cond_6
    const/16 v6, 0x30

    if-lt v4, v6, :cond_7

    const/16 v6, 0x39

    if-le v4, v6, :cond_9

    :cond_7
    const/16 v6, 0x41

    if-lt v4, v6, :cond_8

    const/16 v6, 0x5a

    if-le v4, v6, :cond_9

    :cond_8
    const/16 v6, 0x61

    if-lt v4, v6, :cond_e

    const/16 v6, 0x7a

    if-gt v4, v6, :cond_e

    :cond_9
    add-int/lit8 v4, v5, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-lt v4, v6, :cond_a

    const/16 v6, 0x39

    if-le v4, v6, :cond_c

    :cond_a
    const/16 v6, 0x41

    if-lt v4, v6, :cond_b

    const/16 v6, 0x5a

    if-le v4, v6, :cond_c

    :cond_b
    const/16 v6, 0x61

    if-lt v4, v6, :cond_d

    const/16 v6, 0x7a

    if-gt v4, v6, :cond_d

    :cond_c
    add-int/lit8 v4, v5, 0x3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x3

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto/16 :goto_3

    :cond_d
    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto/16 :goto_3

    :cond_e
    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto/16 :goto_3

    :cond_f
    const-string v4, "%25"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, -0x1

    const-string v4, "?&=:,()+ "

    const-string v0, "?&=:,()+ "

    invoke-static {p1, v4, v1}, Lcom/wiyun/ad/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    const-string v0, "%20"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    const-string v1, "?&=:,()+ "

    invoke-static {p1, v4, v0}, Lcom/wiyun/ad/f;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_1
    if-lt v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/wiyun/ad/f;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gbk"

    invoke-static {p0, v0}, Lcom/wiyun/ad/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/wiyun/ad/f;->a(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
