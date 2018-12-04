.class Lnet/youmi/android/ef;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Lnet/youmi/android/ej;

.field private static m:I

.field private static n:J

.field private static o:J

.field private static p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/ef;->a:I

    sput v0, Lnet/youmi/android/ef;->b:I

    sput v0, Lnet/youmi/android/ef;->c:I

    sput v0, Lnet/youmi/android/ef;->d:I

    sput v0, Lnet/youmi/android/ef;->e:I

    sput v0, Lnet/youmi/android/ef;->h:I

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/ef;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lnet/youmi/android/ef;->l:Lnet/youmi/android/ej;

    sput v1, Lnet/youmi/android/ef;->m:I

    sput-wide v2, Lnet/youmi/android/ef;->n:J

    sput-wide v2, Lnet/youmi/android/ef;->o:J

    sput-boolean v1, Lnet/youmi/android/ef;->p:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 5

    sget-object v0, Lnet/youmi/android/ef;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/ef;->g:Ljava/lang/String;

    :cond_0
    sget-object v0, Lnet/youmi/android/ef;->g:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lnet/youmi/android/ej;
    .locals 1

    sget-object v0, Lnet/youmi/android/ef;->l:Lnet/youmi/android/ej;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ej;

    invoke-direct {v0, p0}, Lnet/youmi/android/ej;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/youmi/android/ef;->l:Lnet/youmi/android/ej;

    :cond_0
    sget-object v0, Lnet/youmi/android/ef;->l:Lnet/youmi/android/ej;

    return-object v0
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lnet/youmi/android/ef;->p:Z

    return-void
.end method

.method static a(I)Z
    .locals 1

    sget v0, Lnet/youmi/android/ef;->h:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(J)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lnet/youmi/android/ef;->g()J

    move-result-wide v0

    sget-wide v2, Lnet/youmi/android/ef;->o:J

    sub-long v2, p0, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    sget-boolean v0, Lnet/youmi/android/ef;->p:Z

    if-eqz v0, :cond_1

    sget-wide v0, Lnet/youmi/android/ef;->n:J

    sub-long v0, p0, v0

    const-wide/32 v2, 0x88b8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sput-boolean v4, Lnet/youmi/android/ef;->p:Z

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static b(I)V
    .locals 1

    sput p0, Lnet/youmi/android/ef;->h:I

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/ef;->m:I

    return-void
.end method

.method static synthetic b(J)V
    .locals 0

    sput-wide p0, Lnet/youmi/android/ef;->n:J

    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0xb

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/ef;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    sput-object v0, Lnet/youmi/android/ef;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, ""

    sput-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/ef;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnet/youmi/android/ef;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(J)V
    .locals 0

    sput-wide p0, Lnet/youmi/android/ef;->o:J

    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/ef;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/ef;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lnet/youmi/android/ef;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lnet/youmi/android/ef;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method static e()V
    .locals 1

    sget v0, Lnet/youmi/android/ef;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/youmi/android/ef;->m:I

    return-void
.end method

.method static e(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lnet/youmi/android/eo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lnet/youmi/android/ef;->a(Landroid/content/Context;)Lnet/youmi/android/ej;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ej;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f()I
    .locals 1

    sget v0, Lnet/youmi/android/ef;->m:I

    return v0
.end method

.method static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v9, -0x1

    const-class v0, Lnet/youmi/android/ef;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_b

    const-string v1, ""

    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    sget v3, Lnet/youmi/android/ef;->a:I

    if-le v3, v9, :cond_3

    sget v3, Lnet/youmi/android/ef;->b:I

    if-le v3, v9, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    invoke-static {v2}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    sput v3, Lnet/youmi/android/ef;->a:I

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    sput v3, Lnet/youmi/android/ef;->b:I

    :cond_4
    sget v3, Lnet/youmi/android/ef;->a:I

    if-le v3, v9, :cond_b

    sget v3, Lnet/youmi/android/ef;->b:I

    if-le v3, v9, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    sget v3, Lnet/youmi/android/ef;->c:I

    if-le v3, v9, :cond_6

    sget v3, Lnet/youmi/android/ef;->e:I

    if-le v3, v9, :cond_6

    sget v3, Lnet/youmi/android/ef;->d:I

    if-le v3, v9, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_7

    move v5, v6

    :goto_3
    array-length v6, v4

    if-lt v5, v6, :cond_8

    :cond_7
    sget v3, Lnet/youmi/android/ef;->c:I

    if-le v3, v9, :cond_b

    sget v3, Lnet/youmi/android/ef;->e:I

    if-le v3, v9, :cond_b

    sget v3, Lnet/youmi/android/ef;->d:I

    if-le v3, v9, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/youmi/android/ef;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    aget-object v6, v4, v5

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getBaseStationId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lnet/youmi/android/ef;->c:I

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getNetworkId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lnet/youmi/android/ef;->e:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    :cond_b
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getSystemId"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lnet/youmi/android/ef;->d:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_d
    :try_start_8
    const-string v1, ""

    sput-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/ef;->f:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_e
    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto/16 :goto_1
.end method

.method static g()J
    .locals 4

    invoke-static {}, Lnet/youmi/android/bp;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lnet/youmi/android/eo;->g()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {}, Lnet/youmi/android/eo;->g()J

    move-result-wide v0

    :cond_0
    invoke-static {}, Lnet/youmi/android/bj;->a()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {}, Lnet/youmi/android/bj;->a()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method
