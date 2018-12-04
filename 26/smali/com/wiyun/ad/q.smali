.class Lcom/wiyun/ad/q;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/wiyun/ad/q;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/wiyun/ad/q;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/wiyun/ad/q;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wiyun/ad/q;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v0, v0, 0xe

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/wiyun/ad/q;->setMeasuredDimension(II)V

    return-void
.end method
