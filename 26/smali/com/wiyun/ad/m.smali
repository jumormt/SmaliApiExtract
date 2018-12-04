.class Lcom/wiyun/ad/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/wiyun/ad/m;->d:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 5

    const-string v4, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const-string v3, "; "

    sget-object v0, Lcom/wiyun/ad/m;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/m;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/wiyun/ad/m;->a:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "000000000000000"

    sget-object v0, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/wiyun/ad/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "000000000000000"

    sput-object v2, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "Context is not set"

    invoke-static {v0}, Lcom/wiyun/ad/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "Cannot get a device ID.  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v0}, Lcom/wiyun/ad/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    sget-object v0, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000000000000000"

    sput-object v2, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "000000000000000"

    sput-object v2, Lcom/wiyun/ad/m;->c:Ljava/lang/String;

    const-string v0, "WiYun"

    const-string v1, "No device ID available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WiYun"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/wiyun/ad/m;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lcom/wiyun/ad/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "sdk"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0}, Lcom/wiyun/ad/m;->g(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/wiyun/ad/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    add-int/lit8 v0, v5, 0x1e

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1e

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x14

    :cond_2
    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x32

    :cond_3
    const/16 v1, 0x32

    if-lt v0, v1, :cond_5

    move v0, v6

    :goto_1
    sput v0, Lcom/wiyun/ad/m;->d:I

    :cond_4
    sget v0, Lcom/wiyun/ad/m;->d:I

    if-eqz v0, :cond_6

    move v0, v6

    :goto_2
    return v0

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v4

    :goto_1
    if-lt v1, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/wiyun/ad/m;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/wiyun/ad/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    mul-int/lit8 v1, v1, 0x64

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wiyun/ad/m;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/wiyun/ad/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v0, "Context is not set"

    invoke-static {v0}, Lcom/wiyun/ad/m;->a(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Cannot get a device ID.  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v0}, Lcom/wiyun/ad/m;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    if-nez p0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
