.class Lnet/youmi/android/y;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/ca;

.field private b:Lnet/youmi/android/ca;

.field private c:Lnet/youmi/android/dv;

.field private d:Lnet/youmi/android/af;

.field private e:Lnet/youmi/android/ae;


# direct methods
.method public constructor <init>(Lnet/youmi/android/ca;Lnet/youmi/android/ca;)V
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/y;->a:Lnet/youmi/android/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/youmi/android/y;->b:Lnet/youmi/android/ca;

    invoke-virtual {p2}, Lnet/youmi/android/ca;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/dv;->b:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lnet/youmi/android/ca;->e()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lnet/youmi/android/dv;->b:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lnet/youmi/android/dv;->a:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lnet/youmi/android/dv;->b:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lnet/youmi/android/dv;->c:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lnet/youmi/android/dv;->d:Lnet/youmi/android/dv;

    iput-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

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
.method public a()I
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    invoke-virtual {v0}, Lnet/youmi/android/dv;->b()I

    move-result v0

    return v0
.end method

.method public b()Lnet/youmi/android/dv;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->c:Lnet/youmi/android/dv;

    return-object v0
.end method

.method c()Lnet/youmi/android/af;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/af;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/af;

    iget-object v1, p0, Lnet/youmi/android/y;->b:Lnet/youmi/android/ca;

    invoke-direct {v0, p0, v1, p0}, Lnet/youmi/android/af;-><init>(Lnet/youmi/android/y;Lnet/youmi/android/ca;Lnet/youmi/android/y;)V

    iput-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/af;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/af;

    return-object v0
.end method

.method d()Lnet/youmi/android/ae;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/y;->e:Lnet/youmi/android/ae;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ae;

    iget-object v1, p0, Lnet/youmi/android/y;->b:Lnet/youmi/android/ca;

    invoke-direct {v0, p0, v1, p0}, Lnet/youmi/android/ae;-><init>(Lnet/youmi/android/y;Lnet/youmi/android/ca;Lnet/youmi/android/y;)V

    iput-object v0, p0, Lnet/youmi/android/y;->e:Lnet/youmi/android/ae;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/y;->e:Lnet/youmi/android/ae;

    return-object v0
.end method
