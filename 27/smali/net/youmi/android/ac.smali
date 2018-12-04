.class Lnet/youmi/android/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/co;


# direct methods
.method constructor <init>(Lnet/youmi/android/co;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ac;->a:Lnet/youmi/android/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ac;->a:Lnet/youmi/android/co;

    iget-object v0, v0, Lnet/youmi/android/co;->f:Lnet/youmi/android/do;

    invoke-virtual {v0}, Lnet/youmi/android/do;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
