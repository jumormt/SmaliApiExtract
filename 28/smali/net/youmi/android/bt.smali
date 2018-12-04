.class Lnet/youmi/android/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/dw;


# direct methods
.method constructor <init>(Lnet/youmi/android/dw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    iget-object v0, v0, Lnet/youmi/android/dw;->b:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v1}, Lnet/youmi/android/dw;->a(Lnet/youmi/android/dw;)J

    move-result-wide v1

    iget-object v3, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v3}, Lnet/youmi/android/dw;->b(Lnet/youmi/android/dw;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v4}, Lnet/youmi/android/dw;->c(Lnet/youmi/android/dw;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v5}, Lnet/youmi/android/dw;->d(Lnet/youmi/android/dw;)J

    move-result-wide v5

    iget-object v7, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v7}, Lnet/youmi/android/dw;->e(Lnet/youmi/android/dw;)J

    move-result-wide v7

    iget-object v9, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/dw;

    invoke-static {v9}, Lnet/youmi/android/dw;->f(Lnet/youmi/android/dw;)J

    move-result-wide v9

    invoke-static/range {v0 .. v10}, Lnet/youmi/android/au;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
