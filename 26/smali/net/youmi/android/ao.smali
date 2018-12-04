.class Lnet/youmi/android/ao;
.super Ljava/lang/Object;


# static fields
.field static a:Lnet/youmi/android/du;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/youmi/android/ao;->a:Lnet/youmi/android/du;

    const-string v0, "E2FDAA28C7344D2F9FAA4A0FEC1296AA"

    sput-object v0, Lnet/youmi/android/ao;->b:Ljava/lang/String;

    const-string v0, "DCDAE4873D1F4c64BB121FDE4131DDFF"

    sput-object v0, Lnet/youmi/android/ao;->c:Ljava/lang/String;

    const-string v0, "E91A62B2CF0744bd9CA37BA14615050F"

    sput-object v0, Lnet/youmi/android/ao;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lnet/youmi/android/ao;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/youmi/android/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/ao;->c(Landroid/app/Activity;)Lnet/youmi/android/du;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/ao;->a:Lnet/youmi/android/du;

    invoke-static {p0}, Lnet/youmi/android/ao;->d(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/ao;->e(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;)Lnet/youmi/android/du;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/ao;->a(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/youmi/android/du;

    invoke-direct {v1}, Lnet/youmi/android/du;-><init>()V

    sget-object v2, Lnet/youmi/android/ao;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/ax;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lnet/youmi/android/du;->a:I

    sget-object v2, Lnet/youmi/android/ao;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/ax;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lnet/youmi/android/du;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lnet/youmi/android/du;

    invoke-direct {v0}, Lnet/youmi/android/du;-><init>()V

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;)Z
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sget-object v2, Lnet/youmi/android/ao;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lnet/youmi/android/ao;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/ao;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lnet/youmi/android/ax;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 6

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/ao;->c(Landroid/app/Activity;)Lnet/youmi/android/du;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0}, Lnet/youmi/android/du;->c()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lnet/youmi/android/ao;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/youmi/android/du;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/ao;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lnet/youmi/android/ao;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lnet/youmi/android/ax;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lnet/youmi/android/ao;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/ao;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
