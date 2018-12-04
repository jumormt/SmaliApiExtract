.class Lnet/youmi/android/af;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/y;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lnet/youmi/android/y;Lnet/youmi/android/ca;Lnet/youmi/android/y;)V
    .locals 3

    const/16 v1, 0x24

    const/4 v2, 0x0

    iput-object p1, p0, Lnet/youmi/android/af;->a:Lnet/youmi/android/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lnet/youmi/android/af;->b:I

    iput v2, p0, Lnet/youmi/android/af;->c:I

    invoke-virtual {p2}, Lnet/youmi/android/ca;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lnet/youmi/android/af;->c:I

    :goto_0
    invoke-virtual {p3}, Lnet/youmi/android/y;->a()I

    move-result v0

    iget v1, p0, Lnet/youmi/android/af;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/youmi/android/af;->b:I

    iget v0, p0, Lnet/youmi/android/af;->b:I

    if-gez v0, :cond_0

    iput v2, p0, Lnet/youmi/android/af;->b:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lnet/youmi/android/ca;->e()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput v1, p0, Lnet/youmi/android/af;->c:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x1b

    iput v0, p0, Lnet/youmi/android/af;->c:I

    goto :goto_0

    :sswitch_1
    iput v1, p0, Lnet/youmi/android/af;->c:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x36

    iput v0, p0, Lnet/youmi/android/af;->c:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x48

    iput v0, p0, Lnet/youmi/android/af;->c:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/af;->b:I

    return v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/af;->c:I

    return v0
.end method
