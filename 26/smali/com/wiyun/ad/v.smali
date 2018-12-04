.class public abstract Lcom/wiyun/ad/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/wiyun/ad/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wiyun/ad/r;

    invoke-direct {v0}, Lcom/wiyun/ad/r;-><init>()V

    sput-object v0, Lcom/wiyun/ad/v;->a:Lcom/wiyun/ad/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/wiyun/ad/e;

    sget-object v1, Lcom/wiyun/ad/v;->a:Lcom/wiyun/ad/r;

    invoke-direct {v0, v1, p0}, Lcom/wiyun/ad/e;-><init>(Lcom/wiyun/ad/r;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wiyun/ad/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
