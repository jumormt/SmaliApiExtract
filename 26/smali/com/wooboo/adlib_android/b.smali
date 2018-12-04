.class final Lcom/wooboo/adlib_android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/b$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:B

.field private g:Lcom/wooboo/adlib_android/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1388

    sput v0, Lcom/wooboo/adlib_android/b;->a:I

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/wooboo/adlib_android/b;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/wooboo/adlib_android/b;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/b;)B
    .locals 1

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/wooboo/adlib_android/b;->f:B

    return v0
.end method

.method public static a(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/b;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v3, "Could not get ad from Wooboo servers ("

    const-string v7, "Wooboo SDK 1.2"

    const-string v6, " ms);"

    .line 43
    new-instance v0, Lcom/wooboo/adlib_android/b;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/b;-><init>()V

    .line 44
    iput-object p0, v0, Lcom/wooboo/adlib_android/b;->b:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lcom/wooboo/adlib_android/h;->a([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    .line 48
    iget-object v2, v0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/b;->e:Ljava/lang/String;

    .line 50
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/b;->d:Ljava/lang/String;

    .line 51
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, v0, Lcom/wooboo/adlib_android/b;->f:B

    .line 52
    iget-object v1, v0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/wooboo/adlib_android/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v0, "Wooboo SDK 1.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get ad from Wooboo servers ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/wooboo/adlib_android/c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string v1, " ms);"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 67
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v1, "Wooboo SDK 1.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get an ad from Wooboo servers ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/wooboo/adlib_android/c;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    const-string v2, " ms);"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "Wooboo SDK 1.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get ad from Wooboo servers ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/wooboo/adlib_android/c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, " ms);"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 65
    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "|"

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/b;)Lcom/wooboo/adlib_android/b$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->g:Lcom/wooboo/adlib_android/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/wooboo/adlib_android/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/wooboo/adlib_android/b;->a:I

    return v0
.end method

.method static synthetic d(Lcom/wooboo/adlib_android/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/wooboo/adlib_android/b$1;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/b$1;-><init>(Lcom/wooboo/adlib_android/b;)V

    .line 268
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/b$1;->start()V

    .line 269
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 271
    :cond_0
    return-void
.end method

.method public final a(Lcom/wooboo/adlib_android/b$a;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/wooboo/adlib_android/b;->g:Lcom/wooboo/adlib_android/b$a;

    .line 290
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 310
    instance-of v0, p1, Lcom/wooboo/adlib_android/b;

    if-eqz v0, :cond_0

    .line 311
    check-cast p1, Lcom/wooboo/adlib_android/b;

    .line 312
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wooboo/adlib_android/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/wooboo/adlib_android/b;->c:Ljava/lang/String;

    .line 305
    return-object v0
.end method
