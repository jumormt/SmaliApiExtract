.class public final Lcom/wooboo/adlib_android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static volatile a:I

.field protected static b:J

.field private static c:Landroid/telephony/TelephonyManager;

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/wooboo/adlib_android/c;->a:I

    .line 59
    sput-object v1, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    .line 62
    sput-object v1, Lcom/wooboo/adlib_android/c;->k:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/wooboo/adlib_android/c;->l:Ljava/lang/String;

    .line 394
    const/4 v0, -0x2

    sput v0, Lcom/wooboo/adlib_android/c;->m:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "Wooboo SDK 1.2"

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "Market_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    const-string v1, "Wooboo SDK 1.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Market_ID is set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    const-string v0, "Wooboo SDK 1.2"

    .line 89
    const-string v0, "Could not read Market_ID meta-data from AndroidManifest.xml."

    .line 88
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-string v0, "Wooboo SDK 1.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use the default Market_ID is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 92
    goto :goto_0
.end method

.method protected static a(I)V
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/wooboo/adlib_android/c;->a:I

    .line 46
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 385
    if-eqz p0, :cond_0

    .line 387
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string v1, "Wooboo SDK 1.2"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    sput-object p0, Lcom/wooboo/adlib_android/c;->l:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v0, "UTF-8"

    .line 506
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    const-string v1, "Wooboo SDK 1.2"

    .line 512
    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    .line 511
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static a(Z)V
    .locals 0

    .prologue
    .line 238
    sput-boolean p0, Lcom/wooboo/adlib_android/c;->d:Z

    .line 239
    return-void
.end method

.method protected static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Wooboo_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    const-string v1, "Wooboo SDK 1.2"

    .line 113
    const-string v2, "Could not read Wooboo_PID meta-data from AndroidManifest.xml."

    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(I)V
    .locals 0

    .prologue
    .line 55
    sput p0, Lcom/wooboo/adlib_android/c;->h:I

    .line 56
    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    sput-object p0, Lcom/wooboo/adlib_android/c;->k:Ljava/lang/String;

    .line 132
    return-void
.end method

.method protected static c(I)V
    .locals 0

    .prologue
    .line 139
    sput p0, Lcom/wooboo/adlib_android/c;->g:I

    .line 140
    return-void
.end method

.method protected static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 147
    .line 149
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 148
    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    .line 150
    sget-object v0, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    .line 152
    :cond_0
    sget-object v0, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 153
    sget-object v0, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    .line 155
    :cond_1
    return-void

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    const-string v0, "Wooboo SDK 1.2"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "2"

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 197
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v0, "2"

    move-object v0, v2

    .line 217
    :goto_0
    return-object v0

    .line 200
    :cond_0
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string v0, "0"

    goto :goto_0

    .line 202
    :cond_1
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    const-string v0, "5"

    goto :goto_0

    .line 204
    :cond_2
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    const-string v0, "3"

    goto :goto_0

    .line 206
    :cond_3
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    const-string v0, "8"

    goto :goto_0

    .line 208
    :cond_4
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    const-string v0, "6"

    goto :goto_0

    .line 210
    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    const-string v0, "7"

    goto :goto_0

    .line 212
    :cond_6
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 213
    const-string v0, "4"

    goto :goto_0

    .line 214
    :cond_7
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    const-string v0, "9"

    goto :goto_0

    .line 217
    :cond_8
    const-string v0, "2"

    move-object v0, v2

    goto :goto_0
.end method

.method protected static d(I)V
    .locals 0

    .prologue
    .line 401
    sput p0, Lcom/wooboo/adlib_android/c;->m:I

    .line 402
    return-void
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIGURATION ERROR:  Incorrect Telead_PID.  Should 32 [a-z,0-9] characters:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->c(Ljava/lang/String;)V

    .line 225
    :cond_1
    const-string v0, "Wooboo SDK 1.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your Telead_PID is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sput-object p0, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    .line 227
    return-void
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    const-string v1, "android_id"

    .line 256
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    sget-object v1, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 260
    sget-object v0, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    if-nez v0, :cond_1

    .line 263
    const-string v0, "00000000"

    .line 265
    :cond_1
    return-object v0
.end method

.method protected static e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    sput-object p0, Lcom/wooboo/adlib_android/c;->f:Ljava/lang/String;

    .line 247
    return-void
.end method

.method protected static f(Landroid/content/Context;)Lcom/wooboo/adlib_android/b;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const-string v10, "Could not close stream"

    const-string v9, "Wooboo SDK 1.2"

    .line 269
    .line 270
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 269
    if-ne v0, v6, :cond_0

    .line 272
    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->c(Ljava/lang/String;)V

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/wooboo/adlib_android/c;->h:I

    const-string v2, "pit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "4"

    const-string v2, "ifm"

    invoke-static {v0, v2, v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/c;->m:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_1
    const-string v1, "mt"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/c;->m:I

    if-eq v1, v6, :cond_2

    const-string v1, "mi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/wooboo/adlib_android/c;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "bs"

    const-string v2, "7"

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pid"

    sget-object v2, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "csdk"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "1.2"

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    sget-object v2, Lcom/wooboo/adlib_android/c;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    sget-object v1, Lcom/wooboo/adlib_android/c;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/wooboo/adlib_android/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wooboo/adlib_android/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "ml"

    sget-object v2, Lcom/wooboo/adlib_android/c;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pn"

    sget-object v2, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/wooboo/adlib_android/c;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    sget-object v2, Lcom/wooboo/adlib_android/c;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sw"

    invoke-static {v0, v1, v8}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/c;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid"

    invoke-static {v0, v2, v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/wooboo/adlib_android/c;->b:J

    .line 285
    const-string v2, "pit=1&pf=android"

    .line 286
    sget v0, Lcom/wooboo/adlib_android/c;->a:I

    .line 287
    if-ne v0, v4, :cond_8

    .line 288
    sget-boolean v0, Lcom/wooboo/adlib_android/c;->d:Z

    if-eqz v0, :cond_7

    .line 289
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wooboo/adlib_android/e;->b:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const/16 v3, 0x1770

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 295
    const/16 v3, 0x1770

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :goto_2
    if-nez v0, :cond_b

    .line 361
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 362
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 363
    if-eqz v0, :cond_5

    .line 367
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_3
    move-object v0, v8

    .line 375
    :goto_4
    return-object v0

    :cond_6
    move-object v2, v8

    .line 277
    goto :goto_0

    .line 291
    :cond_7
    :try_start_3
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wooboo/adlib_android/e;->a:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 354
    :goto_5
    :try_start_4
    const-string v3, "Wooboo SDK 1.2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const-string v0, "Wooboo SDK 1.2"

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get ad from Wooboo servers ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/wooboo/adlib_android/c;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    const-string v4, " ms);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 361
    :try_start_5
    invoke-static {v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 362
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 363
    if-eqz v1, :cond_11

    .line 367
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v8

    .line 368
    goto :goto_4

    .line 296
    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    .line 297
    :try_start_6
    sget-boolean v0, Lcom/wooboo/adlib_android/c;->d:Z

    if-eqz v0, :cond_9

    .line 298
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wooboo/adlib_android/e;->c:[B

    .line 299
    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 298
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 303
    :goto_6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 304
    :try_start_7
    const-string v3, "X-Online-Host"

    .line 305
    const-string v4, "ade.wooboo.com.cn"

    .line 304
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/16 v3, 0x2ee0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 307
    const/16 v3, 0x2ee0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 349
    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_5

    .line 301
    :cond_9
    :try_start_8
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wooboo/adlib_android/e;->d:[B

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 359
    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 361
    :goto_7
    :try_start_9
    invoke-static {v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 362
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 363
    if-eqz v1, :cond_a

    .line 367
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 374
    :cond_a
    :goto_8
    throw v0

    .line 370
    :catch_2
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string v1, "Wooboo SDK 1.2"

    const-string v1, "Could not close stream"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 312
    :cond_b
    :try_start_a
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 313
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 315
    const-string v3, "Content-Type"

    .line 316
    const-string v4, "application/x-www-form-urlencoded"

    .line 315
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-boolean v3, Lcom/wooboo/adlib_android/c;->d:Z

    if-eqz v3, :cond_c

    .line 318
    const-string v3, "Content-Length"

    .line 319
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 325
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 326
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 327
    sget-boolean v3, Lcom/wooboo/adlib_android/c;->d:Z

    if-eqz v3, :cond_d

    .line 328
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 332
    :goto_a
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 333
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v1

    .line 334
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    :goto_b
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v6, :cond_e

    .line 339
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 341
    array-length v3, v2

    if-lez v3, :cond_f

    .line 342
    invoke-static {p0, v2}, Lcom/wooboo/adlib_android/b;->a(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/b;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v2

    .line 361
    :goto_c
    :try_start_c
    invoke-static {v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 362
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wooboo/adlib_android/c;->a(Ljava/io/Closeable;)V

    .line 363
    if-eqz v0, :cond_10

    .line 367
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-object v0, v2

    .line 368
    goto/16 :goto_4

    .line 321
    :cond_c
    :try_start_d
    const-string v3, "Content-Length"

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 359
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_7

    .line 330
    :cond_d
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_a

    .line 337
    :cond_e
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_b

    .line 349
    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_5

    .line 344
    :cond_f
    const-string v2, "Wooboo SDK 1.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get ad from Wooboo servers ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/wooboo/adlib_android/c;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    const-string v4, " ms);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object v2, v8

    goto :goto_c

    .line 370
    :catch_4
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string v1, "Wooboo SDK 1.2"

    const-string v1, "Could not close stream"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    goto/16 :goto_4

    .line 370
    :catch_5
    move-exception v1

    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string v2, "Wooboo SDK 1.2"

    const-string v2, "Could not close stream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 370
    :catch_6
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const-string v1, "Wooboo SDK 1.2"

    const-string v1, "Could not close stream"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    move-object v0, v2

    goto/16 :goto_4

    .line 359
    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :cond_11
    move-object v0, v8

    goto/16 :goto_4

    :cond_12
    move-object v0, v8

    goto/16 :goto_2
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "11"

    const-string v7, "10"

    const-string v6, "31"

    const-string v5, "so"

    const-string v4, "ac"

    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    .line 528
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 530
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 531
    :cond_0
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    .line 533
    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 534
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    const-string v2, "so"

    const-string v2, "0"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_1
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 566
    const/16 v0, 0x8

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 567
    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 568
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_3
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 537
    const-string v2, "so"

    const-string v2, "1"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_4
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    const-string v2, "so"

    const-string v2, "2"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_5
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 541
    const-string v2, "so"

    const-string v2, "3"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_6
    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 543
    const-string v2, "so"

    const-string v2, "4"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_7
    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 545
    const-string v2, "so"

    const-string v2, "5"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_8
    const-string v3, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 547
    const-string v2, "so"

    const-string v2, "6"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_9
    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 549
    const-string v2, "so"

    const-string v2, "7"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_a
    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 551
    const-string v2, "so"

    const-string v2, "8"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :cond_b
    const-string v3, "9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 553
    const-string v2, "so"

    const-string v2, "9"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    :cond_c
    const-string v3, "A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 555
    const-string v2, "so"

    const-string v2, "10"

    invoke-static {v1, v5, v7}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 556
    :cond_d
    const-string v3, "B"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 557
    const-string v2, "so"

    const-string v2, "11"

    invoke-static {v1, v5, v8}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_e
    const-string v3, "C"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 559
    const-string v2, "so"

    const-string v2, "12"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :cond_f
    const-string v3, "D"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 561
    const-string v2, "so"

    const-string v2, "13"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_10
    const-string v3, "E"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    const-string v2, "so"

    const-string v2, "14"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_11
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 570
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    :cond_12
    const-string v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 572
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 573
    :cond_13
    const-string v2, "04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 574
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    :cond_14
    const-string v2, "05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 576
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    :cond_15
    const-string v2, "06"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 578
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :cond_16
    const-string v2, "07"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 580
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_17
    const-string v2, "08"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 582
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 583
    :cond_18
    const-string v2, "09"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 584
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :cond_19
    const-string v2, "10"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 586
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    :cond_1a
    const-string v2, "11"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 588
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 589
    :cond_1b
    const-string v2, "12"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 590
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_1c
    const-string v2, "13"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 592
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :cond_1d
    const-string v2, "14"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 594
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 595
    :cond_1e
    const-string v2, "15"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 596
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    :cond_1f
    const-string v2, "16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 598
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 599
    :cond_20
    const-string v2, "17"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 600
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :cond_21
    const-string v2, "18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 602
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    :cond_22
    const-string v2, "19"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 604
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 605
    :cond_23
    const-string v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 606
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 607
    :cond_24
    const-string v2, "21"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 608
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 609
    :cond_25
    const-string v2, "22"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 610
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 611
    :cond_26
    const-string v2, "23"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 612
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 613
    :cond_27
    const-string v2, "24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 614
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 615
    :cond_28
    const-string v2, "25"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 616
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 617
    :cond_29
    const-string v2, "26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 618
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 619
    :cond_2a
    const-string v2, "27"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 620
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 621
    :cond_2b
    const-string v2, "28"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 622
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 623
    :cond_2c
    const-string v2, "29"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 624
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 625
    :cond_2d
    const-string v2, "30"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 626
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 627
    :cond_2e
    const-string v2, "31"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 632
    :cond_2f
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 633
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 635
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 636
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 637
    const-string v2, "so"

    const-string v2, "24"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_30
    :goto_2
    const/16 v2, 0xd

    if-lt v0, v2, :cond_2

    .line 648
    const/16 v0, 0xa

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string v2, "010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 650
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 638
    :cond_31
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 639
    const-string v2, "so"

    const-string v2, "15"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 640
    :cond_32
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 641
    const-string v2, "so"

    const-string v2, "16"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 642
    :cond_33
    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 643
    const-string v2, "so"

    const-string v2, "19"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 644
    :cond_34
    const-string v3, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 645
    const-string v2, "so"

    const-string v2, "20"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 651
    :cond_35
    const-string v2, "022"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 652
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 653
    :cond_36
    const-string v2, "31"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 654
    :cond_37
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 655
    :cond_38
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 656
    :cond_39
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 657
    :cond_3a
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 658
    :cond_3b
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 659
    :cond_3c
    const-string v2, "024"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 660
    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 661
    :cond_3d
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    :cond_3e
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 663
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 664
    :cond_3f
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 665
    :cond_40
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 666
    :cond_41
    const-string v2, "021"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 667
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    :cond_42
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 669
    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 670
    :cond_43
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 671
    :cond_44
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 672
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 673
    :cond_45
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 674
    :cond_46
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    :cond_47
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 676
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_48
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 678
    :cond_49
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 679
    :cond_4a
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 680
    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 681
    :cond_4b
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 682
    :cond_4c
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 683
    :cond_4d
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 684
    :cond_4e
    const-string v2, "027"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 685
    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 686
    :cond_4f
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 687
    :cond_50
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 688
    :cond_51
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    :cond_52
    const-string v2, "020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 690
    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 691
    :cond_53
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    :cond_54
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 693
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 694
    :cond_55
    const-string v2, "898"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 695
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 696
    :cond_56
    const-string v2, "028"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 697
    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 698
    :cond_57
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 699
    :cond_58
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 700
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 701
    :cond_59
    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 702
    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 703
    :cond_5a
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 704
    :cond_5b
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 705
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    :cond_5c
    const-string v2, "029"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 707
    :cond_5d
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 708
    :cond_5e
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 709
    :cond_5f
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    :cond_60
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 711
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    :cond_61
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 713
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 714
    :cond_62
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 715
    :cond_63
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 716
    :cond_64
    const-string v2, "023"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 721
    :cond_65
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 724
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 725
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 726
    const-string v2, "so"

    const-string v2, "17"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_66
    :goto_3
    const/16 v2, 0xd

    if-lt v0, v2, :cond_2

    .line 737
    const/16 v0, 0xa

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 738
    const-string v2, "010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 739
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 727
    :cond_67
    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 728
    const-string v2, "so"

    const-string v2, "18"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 729
    :cond_68
    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 730
    const-string v2, "so"

    const-string v2, "21"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 731
    :cond_69
    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 732
    const-string v2, "so"

    const-string v2, "22"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 733
    :cond_6a
    const-string v3, "9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 734
    const-string v2, "so"

    const-string v2, "23"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 740
    :cond_6b
    const-string v2, "022"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 741
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 742
    :cond_6c
    const-string v2, "31"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 743
    :cond_6d
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 744
    :cond_6e
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 745
    :cond_6f
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 746
    :cond_70
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 747
    :cond_71
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 748
    :cond_72
    const-string v2, "024"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 749
    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 750
    :cond_73
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 751
    :cond_74
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 752
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 753
    :cond_75
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 754
    :cond_76
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 755
    :cond_77
    const-string v2, "021"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 756
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 757
    :cond_78
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 758
    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 759
    :cond_79
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 760
    :cond_7a
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "58"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 761
    :cond_7b
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 762
    :cond_7c
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 763
    :cond_7d
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    :cond_7e
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 765
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    :cond_7f
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 767
    :cond_80
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 768
    :cond_81
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 769
    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 770
    :cond_82
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :cond_83
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 772
    :cond_84
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_85
    const-string v2, "027"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 774
    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 775
    :cond_86
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    :cond_87
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 777
    :cond_88
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    :cond_89
    const-string v2, "020"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 779
    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 780
    :cond_8a
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 781
    :cond_8b
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 782
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 783
    :cond_8c
    const-string v2, "898"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 784
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 785
    :cond_8d
    const-string v2, "028"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 786
    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 787
    :cond_8e
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    :cond_8f
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 789
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    :cond_90
    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 791
    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 792
    :cond_91
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 793
    :cond_92
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 794
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 795
    :cond_93
    const-string v2, "029"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 796
    :cond_94
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 797
    :cond_95
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 798
    :cond_96
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 799
    :cond_97
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 800
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    :cond_98
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 802
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 803
    :cond_99
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 804
    :cond_9a
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    :cond_9b
    const-string v2, "023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static g(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 458
    .line 459
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 458
    if-ne v0, v1, :cond_0

    move v0, v3

    .line 502
    :goto_0
    return v0

    .line 463
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 462
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 464
    if-eqz p0, :cond_c

    .line 465
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_c

    .line 471
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 472
    goto :goto_0

    .line 473
    :cond_3
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 474
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_c

    .line 476
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    .line 477
    goto :goto_0

    .line 478
    :cond_4
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 479
    const/4 v0, 0x2

    goto :goto_0

    .line 480
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v2, "CDMA"

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v3

    .line 482
    goto :goto_0

    .line 483
    :cond_6
    const-string v1, "777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 484
    goto :goto_0

    .line 485
    :cond_7
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v3

    .line 486
    goto :goto_0

    .line 487
    :cond_8
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 488
    const/4 v0, 0x3

    goto :goto_0

    .line 489
    :cond_9
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 490
    const/4 v0, 0x4

    goto :goto_0

    .line 491
    :cond_a
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v3

    .line 492
    goto/16 :goto_0

    .line 493
    :cond_b
    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 494
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 502
    goto/16 :goto_0
.end method
