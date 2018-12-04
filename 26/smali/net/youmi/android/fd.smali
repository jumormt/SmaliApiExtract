.class Lnet/youmi/android/fd;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/dm;)V
    .locals 4

    :try_start_0
    new-instance v0, Lnet/youmi/android/bs;

    invoke-direct {v0, p0, p1}, Lnet/youmi/android/bs;-><init>(Landroid/content/Context;Lnet/youmi/android/dm;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lnet/youmi/android/dm;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/youmi/android/bs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Lnet/youmi/android/AdView;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/az;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/youmi/android/eq;

    invoke-direct {v0, p0}, Lnet/youmi/android/eq;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lnet/youmi/android/AdView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Lnet/youmi/android/dm;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/ef;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/be;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "\u5b89\u88c5\u8fc7\u7a0b\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lnet/youmi/android/ay;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
