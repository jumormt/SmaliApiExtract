.class Lnet/youmi/android/aj;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/ct;

.field private static b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lnet/youmi/android/ct;
    .locals 1

    sget-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    return-object v0
.end method

.method static a(Landroid/app/Activity;Lnet/youmi/android/AdView;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/youmi/android/ef;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-virtual {p1, v2}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/ct;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Lnet/youmi/android/ef;->b(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/youmi/android/ef;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {p0, p1}, Lnet/youmi/android/au;->a(Landroid/content/Context;Lnet/youmi/android/AdView;)Lnet/youmi/android/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/youmi/android/ef;->c(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Lnet/youmi/android/ef;->a(Z)V

    sget-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-virtual {p1, v0}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/ct;)V

    sget-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-static {p0, v0}, Lnet/youmi/android/au;->a(Landroid/app/Activity;Lnet/youmi/android/ct;)V

    sget-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-static {p0, p1, v0}, Lnet/youmi/android/au;->a(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/ct;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    invoke-static {p0, p1}, Lnet/youmi/android/es;->a(Landroid/app/Activity;Lnet/youmi/android/AdView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    return-void

    :cond_1
    :try_start_6
    sget-object v0, Lnet/youmi/android/aj;->a:Lnet/youmi/android/ct;

    invoke-virtual {p1, v0}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/ct;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/ct;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/ct;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/ct;->v()V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/aa;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/aa;-><init>(Landroid/content/Context;Lnet/youmi/android/ct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lnet/youmi/android/aj;->b:Ljava/lang/String;

    return-void
.end method
