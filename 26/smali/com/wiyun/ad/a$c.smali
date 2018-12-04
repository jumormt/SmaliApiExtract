.class final Lcom/wiyun/ad/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wiyun/ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wiyun/ad/a$c;->a:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/wiyun/ad/a$c;->a:F

    div-float v0, p1, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/wiyun/ad/a$c;->a:F

    mul-float/2addr v0, v1

    return v0
.end method
