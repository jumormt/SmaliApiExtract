.class Lnet/youmi/android/el;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yuJtmxbnRzbmWJnK"

    sput-object v0, Lnet/youmi/android/el;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v3, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    iput-boolean v5, p0, Lnet/youmi/android/el;->g:Z

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    :cond_3
    const-string v0, "MEID:"

    iget-object v1, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_4

    iget-object v2, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    move v0, v6

    :goto_2
    iget-object v1, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v0, ""

    iput-object v3, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    move v0, v6

    :cond_6
    :goto_3
    if-eqz v0, :cond_d

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-lez v1, :cond_d

    move v1, v5

    :goto_4
    if-eqz v1, :cond_c

    :try_start_4
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    iget-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-lez v0, :cond_c

    move v0, v5

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lnet/youmi/android/el;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->f:Ljava/lang/String;

    :goto_6
    invoke-direct {p0}, Lnet/youmi/android/el;->g()Z

    move-result v0

    iput-boolean v0, p0, Lnet/youmi/android/el;->g:Z

    return-void

    :cond_7
    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    move v0, v6

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    move v0, v6

    goto :goto_3

    :cond_9
    :try_start_5
    const-string v1, ""

    iput-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v1, v0

    goto :goto_4

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_4

    :cond_a
    :try_start_6
    const-string v0, ""

    iput-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v0, v1

    goto :goto_5

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/youmi/android/el;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/el;->f:Ljava/lang/String;

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_5

    :cond_d
    move v1, v0

    goto/16 :goto_4

    :cond_e
    move v0, v5

    goto/16 :goto_2
.end method

.method private g()Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/el;->f:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DD5E8CD46CF94B22BAAD68AB06710752"

    invoke-static {p1, v1}, Lnet/youmi/android/ax;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    const-string v3, "46C02DF8DF4C4C18A578C63449C7F64D"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/eh;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/eh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7fffffff

    invoke-static {v4}, Lnet/youmi/android/bn;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/youmi/android/eh;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lnet/youmi/android/el;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lnet/youmi/android/ax;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    :try_start_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/el;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/el;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/el;->b:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/el;->a:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/el;->g:Z

    return v0
.end method
