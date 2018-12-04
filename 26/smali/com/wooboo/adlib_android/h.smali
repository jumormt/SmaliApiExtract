.class public final Lcom/wooboo/adlib_android/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wooboo/adlib_android/h;->a:[B

    .line 7
    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        0x14t
        0xat
        0x1t
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([B)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x6

    const-string v3, "Wooboo SDK 1.2"

    .line 13
    array-length v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 14
    aget-byte v0, p0, v2

    const/16 v1, -0x20

    if-ne v0, v1, :cond_1

    .line 15
    const-string v0, "Wooboo SDK 1.2"

    const-string v0, "Wooboo_PID does not exist"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object v0, v4

    .line 73
    :goto_1
    return-object v0

    .line 16
    :cond_1
    aget-byte v0, p0, v2

    const/16 v1, -0x1f

    if-ne v0, v1, :cond_2

    .line 17
    const-string v0, "Wooboo SDK 1.2"

    const-string v0, "Wooboo Server busy"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_2
    aget-byte v0, p0, v2

    const/16 v1, -0x1e

    if-ne v0, v1, :cond_3

    .line 19
    const-string v0, "Wooboo SDK 1.2"

    const-string v0, "Wooboo_PID does not activated"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 20
    :cond_3
    aget-byte v0, p0, v2

    const/16 v1, -0x1d

    if-ne v0, v1, :cond_4

    .line 22
    const-string v0, "Wooboo SDK 1.2"

    .line 23
    const-string v0, "Wooboo Server couldnot find the most suitable ad currently"

    .line 22
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    :cond_4
    aget-byte v0, p0, v2

    const/16 v1, -0x1c

    if-ne v0, v1, :cond_0

    .line 25
    const-string v0, "Wooboo SDK 1.2"

    const-string v0, "Other unknown error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_5
    const/4 v0, 0x0

    .line 35
    sget-object v1, Lcom/wooboo/adlib_android/h;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    move v2, v0

    move-object v3, v4

    move v0, v1

    move-object v1, v4

    .line 39
    :goto_2
    array-length v5, p0

    if-lt v0, v5, :cond_6

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_6
    aget-byte v5, p0, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    aget-byte v6, p0, v0

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    const v8, 0xff00

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-short v6, v6

    .line 43
    add-int/lit8 v0, v0, 0x2

    .line 45
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, p0, v0, v6, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 47
    const/4 v8, -0x6

    if-ne v5, v8, :cond_7

    move-object v4, v7

    .line 62
    :goto_3
    add-int/2addr v0, v6

    goto :goto_2

    .line 50
    :cond_7
    const/4 v8, -0x5

    if-ne v5, v8, :cond_8

    move-object v3, v7

    .line 51
    goto :goto_3

    .line 53
    :cond_8
    const/4 v8, -0x4

    if-ne v5, v8, :cond_9

    .line 54
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v1, v7

    move v2, v5

    .line 59
    goto :goto_3

    .line 63
    :catch_0
    move-exception v5

    .line 64
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method
