.class Lnet/youmi/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/cn;


# direct methods
.method constructor <init>(Lnet/youmi/android/cn;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ab;->a:Lnet/youmi/android/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ab;->a:Lnet/youmi/android/cn;

    iget-object v0, v0, Lnet/youmi/android/cn;->f:Lnet/youmi/android/dn;

    invoke-virtual {v0}, Lnet/youmi/android/dn;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
