.class Lcom/casee/adsdk/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/graphics/Point;

.field final synthetic f:Lcom/casee/adsdk/i;


# direct methods
.method public constructor <init>(Lcom/casee/adsdk/i;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/casee/adsdk/i$b;->f:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/casee/adsdk/i$b;->a:I

    iput p3, p0, Lcom/casee/adsdk/i$b;->b:I

    iput p4, p0, Lcom/casee/adsdk/i$b;->c:I

    iput p5, p0, Lcom/casee/adsdk/i$b;->d:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/casee/adsdk/i$b;->e:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;)Z
    .locals 3

    iget v0, p0, Lcom/casee/adsdk/i$b;->a:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/casee/adsdk/i$b;->b:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/casee/adsdk/i$b;->a:I

    iget v2, p0, Lcom/casee/adsdk/i$b;->c:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/casee/adsdk/i$b;->b:I

    iget v2, p0, Lcom/casee/adsdk/i$b;->d:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
