.class public final enum Lcom/casee/adsdk/gifview/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/gifview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/casee/adsdk/gifview/b$a;

.field public static final enum b:Lcom/casee/adsdk/gifview/b$a;

.field public static final enum c:Lcom/casee/adsdk/gifview/b$a;

.field private static final synthetic e:[Lcom/casee/adsdk/gifview/b$a;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/casee/adsdk/gifview/b$a;

    const-string v1, "WAIT_FINISH"

    invoke-direct {v0, v1, v2, v2}, Lcom/casee/adsdk/gifview/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/casee/adsdk/gifview/b$a;->a:Lcom/casee/adsdk/gifview/b$a;

    new-instance v0, Lcom/casee/adsdk/gifview/b$a;

    const-string v1, "SYNC_DECODER"

    invoke-direct {v0, v1, v3, v3}, Lcom/casee/adsdk/gifview/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/casee/adsdk/gifview/b$a;->b:Lcom/casee/adsdk/gifview/b$a;

    new-instance v0, Lcom/casee/adsdk/gifview/b$a;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/casee/adsdk/gifview/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/casee/adsdk/gifview/b$a;->c:Lcom/casee/adsdk/gifview/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/casee/adsdk/gifview/b$a;

    sget-object v1, Lcom/casee/adsdk/gifview/b$a;->a:Lcom/casee/adsdk/gifview/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/casee/adsdk/gifview/b$a;->b:Lcom/casee/adsdk/gifview/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/casee/adsdk/gifview/b$a;->c:Lcom/casee/adsdk/gifview/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/casee/adsdk/gifview/b$a;->e:[Lcom/casee/adsdk/gifview/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/casee/adsdk/gifview/b$a;->d:I

    return-void
.end method

.method public static a()[Lcom/casee/adsdk/gifview/b$a;
    .locals 1

    sget-object v0, Lcom/casee/adsdk/gifview/b$a;->e:[Lcom/casee/adsdk/gifview/b$a;

    invoke-virtual {v0}, [Lcom/casee/adsdk/gifview/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/casee/adsdk/gifview/b$a;

    return-object v0
.end method
