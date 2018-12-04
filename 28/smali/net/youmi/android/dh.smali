.class Lnet/youmi/android/dh;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/bz;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method constructor <init>(Lnet/youmi/android/bz;Lnet/youmi/android/bz;)V
    .locals 4

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v1, 0x41300000    # 11.0f

    iput-object p1, p0, Lnet/youmi/android/dh;->a:Lnet/youmi/android/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    invoke-virtual {p2}, Lnet/youmi/android/bz;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lnet/youmi/android/bz;->e()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput v3, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    goto :goto_0

    :sswitch_1
    iput v3, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    goto :goto_0

    :sswitch_3
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lnet/youmi/android/dh;->b:F

    iput v2, p0, Lnet/youmi/android/dh;->c:F

    iput v1, p0, Lnet/youmi/android/dh;->d:F

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Lnet/youmi/android/dh;->b:F

    return v0
.end method

.method b()F
    .locals 1

    iget v0, p0, Lnet/youmi/android/dh;->c:F

    return v0
.end method

.method c()F
    .locals 1

    iget v0, p0, Lnet/youmi/android/dh;->d:F

    return v0
.end method
