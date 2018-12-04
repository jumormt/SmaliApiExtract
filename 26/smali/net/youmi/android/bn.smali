.class Lnet/youmi/android/bn;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lnet/youmi/android/bn;->a:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a()I
    .locals 1

    sget-object v0, Lnet/youmi/android/bn;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method static final a(I)I
    .locals 1

    sget-object v0, Lnet/youmi/android/bn;->a:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method
