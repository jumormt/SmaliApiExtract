.class public Lorg/kobjects/io/BoundInputStream;
.super Ljava/io/InputStream;
.source "BoundInputStream.java"


# instance fields
.field is:Ljava/io/InputStream;

.field remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/kobjects/io/BoundInputStream;->is:Ljava/io/InputStream;

    .line 33
    iput p2, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    .line 34
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lorg/kobjects/io/BoundInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 39
    .local v0, "avail":I
    iget v1, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    if-ge v0, v1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/kobjects/io/BoundInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    iget v0, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    .line 47
    iget-object v0, p0, Lorg/kobjects/io/BoundInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget v1, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    if-le p3, v1, :cond_0

    .line 53
    iget p3, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    .line 55
    :cond_0
    iget-object v1, p0, Lorg/kobjects/io/BoundInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, "actual":I
    if-lez v0, :cond_1

    iget v1, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/kobjects/io/BoundInputStream;->remaining:I

    .line 59
    :cond_1
    return v0
.end method
