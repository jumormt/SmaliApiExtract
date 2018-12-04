.class public Lcom/casee/adsdk/gifview/b;
.super Landroid/view/View;

# interfaces
.implements Lcom/casee/adsdk/gifview/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/gifview/b$1;,
        Lcom/casee/adsdk/gifview/b$b;,
        Lcom/casee/adsdk/gifview/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/casee/adsdk/gifview/d;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Lcom/casee/adsdk/gifview/b$b;

.field private i:Lcom/casee/adsdk/gifview/b$a;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->d:Z

    iput v2, p0, Lcom/casee/adsdk/gifview/b;->e:I

    iput v2, p0, Lcom/casee/adsdk/gifview/b;->f:I

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    sget-object v0, Lcom/casee/adsdk/gifview/b$a;->b:Lcom/casee/adsdk/gifview/b$a;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->i:Lcom/casee/adsdk/gifview/b$a;

    new-instance v0, Lcom/casee/adsdk/gifview/a;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/gifview/a;-><init>(Lcom/casee/adsdk/gifview/b;)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/gifview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->d:Z

    iput v2, p0, Lcom/casee/adsdk/gifview/b;->e:I

    iput v2, p0, Lcom/casee/adsdk/gifview/b;->f:I

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    sget-object v0, Lcom/casee/adsdk/gifview/b$a;->b:Lcom/casee/adsdk/gifview/b$a;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->i:Lcom/casee/adsdk/gifview/b$a;

    new-instance v0, Lcom/casee/adsdk/gifview/a;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/gifview/a;-><init>(Lcom/casee/adsdk/gifview/b;)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/gifview/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/gifview/b;)Lcom/casee/adsdk/gifview/d;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    :cond_0
    new-instance v0, Lcom/casee/adsdk/gifview/d;

    invoke-direct {v0, p1, p0}, Lcom/casee/adsdk/gifview/d;-><init>(Ljava/io/InputStream;Lcom/casee/adsdk/gifview/GifAction;)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->start()V

    return-void
.end method

.method static synthetic b(Lcom/casee/adsdk/gifview/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/casee/adsdk/gifview/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/casee/adsdk/gifview/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->c:Z

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->destroyDrawingCache()V

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/casee/adsdk/gifview/b;->e:I

    iput p2, p0, Lcom/casee/adsdk/gifview/b;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/casee/adsdk/gifview/b;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public a(ZI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/casee/adsdk/gifview/b$1;->a:[I

    iget-object v1, p0, Lcom/casee/adsdk/gifview/b;->i:Lcom/casee/adsdk/gifview/b$a;

    invoke-virtual {v1}, Lcom/casee/adsdk/gifview/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->b()I

    move-result v0

    if-le v0, v2, :cond_1

    new-instance v0, Lcom/casee/adsdk/gifview/b$b;

    invoke-direct {v0, p0, v4}, Lcom/casee/adsdk/gifview/b$b;-><init>(Lcom/casee/adsdk/gifview/b;Lcom/casee/adsdk/gifview/a;)V

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/b$b;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/b;->b()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/b;->b()V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->b()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/casee/adsdk/gifview/b$b;

    invoke-direct {v0, p0, v4}, Lcom/casee/adsdk/gifview/b$b;-><init>(Lcom/casee/adsdk/gifview/b;Lcom/casee/adsdk/gifview/a;)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/b$b;->start()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/b;->b()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/b;->b()V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/b;->b()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/casee/adsdk/gifview/b$b;

    invoke-direct {v0, p0, v4}, Lcom/casee/adsdk/gifview/b$b;-><init>(Lcom/casee/adsdk/gifview/b;Lcom/casee/adsdk/gifview/a;)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->h:Lcom/casee/adsdk/gifview/b$b;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/b$b;->start()V

    goto :goto_0

    :cond_6
    const-string v0, "gif"

    const-string v1, "parse error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    invoke-virtual {v0}, Lcom/casee/adsdk/gifview/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/casee/adsdk/gifview/b;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/casee/adsdk/gifview/b;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/casee/adsdk/gifview/b;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v0, v5

    add-int v1, v2, v3

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/casee/adsdk/gifview/b;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Lcom/casee/adsdk/gifview/b;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/casee/adsdk/gifview/b;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/casee/adsdk/gifview/b;->setMeasuredDimension(II)V

    invoke-virtual {p0, v0, v1}, Lcom/casee/adsdk/gifview/b;->a(II)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iget v4, v4, Lcom/casee/adsdk/gifview/d;->a:I

    iget-object v5, p0, Lcom/casee/adsdk/gifview/b;->a:Lcom/casee/adsdk/gifview/d;

    iget v5, v5, Lcom/casee/adsdk/gifview/d;->b:I

    move v6, v5

    move v5, v4

    move v4, v6

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->d:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/b;->d:Z

    goto :goto_0
.end method
