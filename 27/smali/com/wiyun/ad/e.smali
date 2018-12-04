.class Lcom/wiyun/ad/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/wiyun/ad/r;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/StringBuffer;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/wiyun/ad/r;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/wiyun/ad/e;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/wiyun/ad/e;->e:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/wiyun/ad/e;->f:I

    iput-object p1, p0, Lcom/wiyun/ad/e;->a:Lcom/wiyun/ad/r;

    iput-object p2, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    return-void
.end method

.method private a(I)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, -0x1

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    sub-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/e;->e:I

    :cond_0
    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    const/16 v1, 0x26

    iget v2, p0, Lcom/wiyun/ad/e;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/e;->e:I

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    iget v1, p0, Lcom/wiyun/ad/e;->e:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    const/16 v1, 0x3b

    iget v2, p0, Lcom/wiyun/ad/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lcom/wiyun/ad/e;->f:I

    :cond_1
    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    iget v1, p0, Lcom/wiyun/ad/e;->f:I

    sub-int/2addr v0, v1

    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    if-ne v0, v3, :cond_5

    iput v3, p0, Lcom/wiyun/ad/e;->e:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/e;->e:I

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    if-ne v0, v3, :cond_0

    goto :goto_1
.end method

.method private b(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/e;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/wiyun/ad/e;->f:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    iget v1, p0, Lcom/wiyun/ad/e;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    :goto_0
    iget v1, p0, Lcom/wiyun/ad/e;->d:I

    sub-int v1, v0, v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/wiyun/ad/e;->d:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput v0, p0, Lcom/wiyun/ad/e;->d:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v3, p0, Lcom/wiyun/ad/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/wiyun/ad/e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget v1, p0, Lcom/wiyun/ad/e;->d:I

    if-lt v1, v0, :cond_2

    goto :goto_1
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/wiyun/ad/e;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/e;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/wiyun/ad/e;->d()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/wiyun/ad/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/e;->d:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/wiyun/ad/e;->e()Z

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/wiyun/ad/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wiyun/ad/e;->d:I

    goto :goto_2
.end method

.method private d()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/e;->e:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/wiyun/ad/e;->e:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/wiyun/ad/e;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v3

    :goto_2
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/wiyun/ad/e;->b(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2
.end method

.method private e()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/wiyun/ad/e;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wiyun/ad/e;->a:Lcom/wiyun/ad/r;

    invoke-virtual {v1, v0}, Lcom/wiyun/ad/r;->a(Ljava/lang/String;)C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    :goto_0
    iget v0, p0, Lcom/wiyun/ad/e;->d:I

    iget-object v1, p0, Lcom/wiyun/ad/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/e;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/wiyun/ad/e;->d:I

    invoke-direct {p0, v0}, Lcom/wiyun/ad/e;->a(I)V

    invoke-direct {p0}, Lcom/wiyun/ad/e;->b()V

    invoke-direct {p0}, Lcom/wiyun/ad/e;->c()V

    goto :goto_0
.end method
