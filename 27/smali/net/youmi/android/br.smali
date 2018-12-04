.class Lnet/youmi/android/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/fe;

.field private final synthetic b:Lnet/youmi/android/dw;


# direct methods
.method constructor <init>(Lnet/youmi/android/fe;Lnet/youmi/android/dw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/br;->a:Lnet/youmi/android/fe;

    iput-object p2, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v0}, Lnet/youmi/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/br;->a:Lnet/youmi/android/fe;

    iget-object v0, v0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    iget-object v1, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v1}, Lnet/youmi/android/dw;->c()J

    move-result-wide v1

    iget-object v3, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v3}, Lnet/youmi/android/dw;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v4}, Lnet/youmi/android/dw;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v5}, Lnet/youmi/android/dw;->a()J

    move-result-wide v5

    iget-object v7, p0, Lnet/youmi/android/br;->b:Lnet/youmi/android/dw;

    invoke-virtual {v7}, Lnet/youmi/android/dw;->d()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    invoke-static/range {v0 .. v10}, Lnet/youmi/android/av;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
