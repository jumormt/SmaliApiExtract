.class Lnet/youmi/android/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/bz;

.field private b:Lnet/youmi/android/bz;

.field private c:Lnet/youmi/android/dt;

.field private d:Lnet/youmi/android/ae;

.field private e:Lnet/youmi/android/ad;


# direct methods
.method public constructor <init>(Lnet/youmi/android/bz;Lnet/youmi/android/bz;)V
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/w;->a:Lnet/youmi/android/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/youmi/android/w;->b:Lnet/youmi/android/bz;

    invoke-virtual {p2}, Lnet/youmi/android/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lnet/youmi/android/bz;->e()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lnet/youmi/android/dt;->a:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/dt;

    iput-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

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

    iget-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    invoke-virtual {v0}, Lnet/youmi/android/dt;->b()I

    move-result v0

    return v0
.end method

.method public b()Lnet/youmi/android/dt;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/w;->c:Lnet/youmi/android/dt;

    return-object v0
.end method

.method c()Lnet/youmi/android/ae;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/w;->d:Lnet/youmi/android/ae;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ae;

    iget-object v1, p0, Lnet/youmi/android/w;->b:Lnet/youmi/android/bz;

    invoke-direct {v0, p0, v1, p0}, Lnet/youmi/android/ae;-><init>(Lnet/youmi/android/w;Lnet/youmi/android/bz;Lnet/youmi/android/w;)V

    iput-object v0, p0, Lnet/youmi/android/w;->d:Lnet/youmi/android/ae;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/w;->d:Lnet/youmi/android/ae;

    return-object v0
.end method

.method d()Lnet/youmi/android/ad;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/w;->e:Lnet/youmi/android/ad;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ad;

    iget-object v1, p0, Lnet/youmi/android/w;->b:Lnet/youmi/android/bz;

    invoke-direct {v0, p0, v1, p0}, Lnet/youmi/android/ad;-><init>(Lnet/youmi/android/w;Lnet/youmi/android/bz;Lnet/youmi/android/w;)V

    iput-object v0, p0, Lnet/youmi/android/w;->e:Lnet/youmi/android/ad;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/w;->e:Lnet/youmi/android/ad;

    return-object v0
.end method
