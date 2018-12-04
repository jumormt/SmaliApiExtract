.class Lnet/youmi/android/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/youmi/android/aa;


# instance fields
.field final synthetic a:Lnet/youmi/android/co;


# direct methods
.method constructor <init>(Lnet/youmi/android/co;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/youmi/android/fa;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/co;

    invoke-virtual {v0}, Lnet/youmi/android/co;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/ad;->a:Lnet/youmi/android/co;

    iget-object v1, v1, Lnet/youmi/android/co;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lnet/youmi/android/fa;)J
    .locals 2

    const-wide/16 v0, 0x9c4

    return-wide v0
.end method

.method public c(Lnet/youmi/android/fa;)V
    .locals 0

    return-void
.end method
