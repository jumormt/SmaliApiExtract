.class Lcom/wiyun/ad/i;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:F

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/lang/String;

.field m:I

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Landroid/graphics/Bitmap;

.field t:Landroid/graphics/Bitmap;

.field u:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/wiyun/ad/i;->i:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/wiyun/ad/i;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/wiyun/ad/i;

    move-object v1, v0

    iget-object v1, v1, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lcom/wiyun/ad/i;

    iget-object v1, p1, Lcom/wiyun/ad/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wiyun/ad/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
