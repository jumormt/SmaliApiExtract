.class Lnet/youmi/android/dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/fb;

.field private final synthetic b:Lnet/youmi/android/ct;

.field private final synthetic c:Lnet/youmi/android/i;


# direct methods
.method constructor <init>(Lnet/youmi/android/fb;Lnet/youmi/android/ct;Lnet/youmi/android/i;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/dq;->a:Lnet/youmi/android/fb;

    iput-object p2, p0, Lnet/youmi/android/dq;->b:Lnet/youmi/android/ct;

    iput-object p3, p0, Lnet/youmi/android/dq;->c:Lnet/youmi/android/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/dq;->a:Lnet/youmi/android/fb;

    iget-object v0, v0, Lnet/youmi/android/fb;->g:Landroid/app/Activity;

    iget-object v1, p0, Lnet/youmi/android/dq;->b:Lnet/youmi/android/ct;

    invoke-virtual {v1}, Lnet/youmi/android/ct;->B()J

    move-result-wide v1

    iget-object v3, p0, Lnet/youmi/android/dq;->b:Lnet/youmi/android/ct;

    invoke-virtual {v3}, Lnet/youmi/android/ct;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/youmi/android/dq;->b:Lnet/youmi/android/ct;

    invoke-virtual {v4}, Lnet/youmi/android/ct;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/youmi/android/dq;->c:Lnet/youmi/android/i;

    invoke-virtual {v5}, Lnet/youmi/android/i;->d()J

    move-result-wide v5

    iget-object v7, p0, Lnet/youmi/android/dq;->c:Lnet/youmi/android/i;

    invoke-virtual {v7}, Lnet/youmi/android/i;->e()J

    move-result-wide v7

    iget-object v9, p0, Lnet/youmi/android/dq;->b:Lnet/youmi/android/ct;

    invoke-virtual {v9}, Lnet/youmi/android/ct;->A()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    invoke-static/range {v0 .. v10}, Lnet/youmi/android/au;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
