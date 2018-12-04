.class Lnet/youmi/android/k;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Hashtable;

.field static b:Lnet/youmi/android/eo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lnet/youmi/android/bw;

    invoke-direct {v1}, Lnet/youmi/android/bw;-><init>()V

    iput-object p5, v1, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    iput-object p2, v1, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    iput-object p4, v1, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    iput-object p3, v1, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    new-instance v2, Lnet/youmi/android/ct;

    invoke-direct {v2}, Lnet/youmi/android/ct;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v2, Lnet/youmi/android/ct;->c:I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    iput-object v2, v1, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lnet/youmi/android/ct;

    invoke-direct {v3}, Lnet/youmi/android/ct;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v3, Lnet/youmi/android/ct;->c:I

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v3, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    iput-object v3, v1, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v2, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    :cond_1
    sget-object v2, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lnet/youmi/android/k;->b:Lnet/youmi/android/eo;

    if-nez v1, :cond_0

    new-instance v1, Lnet/youmi/android/eo;

    invoke-direct {v1}, Lnet/youmi/android/eo;-><init>()V

    sput-object v1, Lnet/youmi/android/k;->b:Lnet/youmi/android/eo;

    :cond_0
    sget-object v1, Lnet/youmi/android/k;->b:Lnet/youmi/android/eo;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lnet/youmi/android/k;

    monitor-enter v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/bw;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lnet/youmi/android/ct;

    invoke-direct {v3}, Lnet/youmi/android/ct;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v3, Lnet/youmi/android/ct;->c:I

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v3, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    iput-object v3, v0, Lnet/youmi/android/bw;->g:Lnet/youmi/android/ct;

    const/4 v2, 0x4

    invoke-static {p0, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :cond_3
    :try_start_6
    sget-object v0, Lnet/youmi/android/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/es;

    invoke-direct {v1, p0, p1, p2}, Lnet/youmi/android/es;-><init>(Landroid/content/Context;Lnet/youmi/android/bw;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    .locals 16

    const/4 v1, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;

    move-object v2, v0

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;

    move-object v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;

    move-object v1, v0

    iget v1, v1, Lnet/youmi/android/ct;->c:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;

    move-object v2, v0

    iget-object v2, v2, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->e:Lnet/youmi/android/ct;

    move-object v4, v0

    iget-object v4, v4, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    move-object v9, v2

    move v15, v1

    move-object v1, v4

    move v4, v15

    :goto_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;

    move-object v6, v0

    if-eqz v6, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;

    move-object v1, v0

    iget v1, v1, Lnet/youmi/android/ct;->c:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;

    move-object v2, v0

    iget-object v2, v2, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->f:Lnet/youmi/android/ct;

    move-object v5, v0

    iget-object v5, v5, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    move-object v10, v2

    move v15, v1

    move-object v1, v5

    move v5, v15

    :goto_3
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->g:Lnet/youmi/android/ct;

    move-object v7, v0

    if-eqz v7, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->g:Lnet/youmi/android/ct;

    move-object v1, v0

    iget v1, v1, Lnet/youmi/android/ct;->c:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->g:Lnet/youmi/android/ct;

    move-object v2, v0

    iget-object v2, v2, Lnet/youmi/android/ct;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->g:Lnet/youmi/android/ct;

    move-object v6, v0

    iget-object v6, v6, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    move-object v11, v2

    move-object v8, v6

    move v6, v1

    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/bw;->b:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-static/range {v1 .. v14}, Lnet/youmi/android/av;->a(Landroid/content/Context;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_1

    :cond_2
    move-object v11, v6

    move-object v8, v1

    move v6, v2

    goto :goto_4

    :cond_3
    move-object v10, v5

    move v5, v2

    goto :goto_3

    :cond_4
    move-object v9, v4

    move v4, v2

    goto :goto_2

    :cond_5
    move v3, v1

    goto/16 :goto_1
.end method
