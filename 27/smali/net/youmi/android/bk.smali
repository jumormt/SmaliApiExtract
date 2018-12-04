.class Lnet/youmi/android/bk;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lnet/youmi/android/bk;->a:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()J
    .locals 2

    sget-wide v0, Lnet/youmi/android/bk;->a:J

    return-wide v0
.end method

.method static a(I)V
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lnet/youmi/android/bk;->a:J

    return-void
.end method
