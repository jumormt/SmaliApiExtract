.class Lnet/youmi/android/ak;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/cu;

.field private static b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lnet/youmi/android/cu;
    .locals 1

    sget-object v0, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    return-object v0
.end method

.method static declared-synchronized a(Landroid/app/Activity;Lnet/youmi/android/AdView;)V
    .locals 4

    const-class v0, Lnet/youmi/android/ak;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/youmi/android/eh;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    sget-object v3, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-virtual {p1, v3}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/cu;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Lnet/youmi/android/eh;->b(J)V

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/youmi/android/eh;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0, p1}, Lnet/youmi/android/av;->a(Landroid/content/Context;Lnet/youmi/android/AdView;)Lnet/youmi/android/cu;

    move-result-object v1

    if-eqz v1, :cond_0

    sput-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/youmi/android/eh;->c(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v1}, Lnet/youmi/android/eh;->a(Z)V

    sget-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    if-eqz v1, :cond_1

    sget-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-virtual {p1, v1}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/cu;)V

    sget-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-static {p0, v1}, Lnet/youmi/android/av;->a(Landroid/app/Activity;Lnet/youmi/android/cu;)V

    sget-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-static {p0, p1, v1}, Lnet/youmi/android/av;->a(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/cu;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    :try_start_5
    invoke-static {p0, p1}, Lnet/youmi/android/eu;->a(Landroid/app/Activity;Lnet/youmi/android/AdView;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit v0

    return-void

    :cond_2
    :try_start_6
    sget-object v1, Lnet/youmi/android/ak;->a:Lnet/youmi/android/cu;

    invoke-virtual {p1, v1}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/cu;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/cu;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/cu;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->v()V

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/ab;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/ab;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;)V

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

    sput-object p0, Lnet/youmi/android/ak;->b:Ljava/lang/String;

    return-void
.end method
