.class public Lcom/gfan/sdk/statistics/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gfan/sdk/statistics/Collector$ApkInfo;,
        Lcom/gfan/sdk/statistics/Collector$IResponse;,
        Lcom/gfan/sdk/statistics/Collector$MessageHandler;
    }
.end annotation


# static fields
.field private static final MAC:Ljava/lang/String; = "FF9B8CB4-E13B-44a7-B3C6-B385D8EB8167"

.field private static final SESSION_TIMEOUT:J = 0x3a98L

.field private static final TYPE:Ljava/lang/String; = "tongjisdk"

.field private static final URL:Ljava/lang/String; = "http://data.gfan.com"

.field private static final VERSION:Ljava/lang/String; = "0.3.2"

.field private static activityPauseTime:J

.field private static activityResumeTime:J

.field private static appStarttime:J

.field private static appkey:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static cpid:Ljava/lang/String;

.field private static hander:Landroid/os/Handler;

.field private static opid:Ljava/lang/String;

.field private static rid:Ljava/lang/String;

.field private static telManager:Landroid/telephony/TelephonyManager;

.field private static timesum:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    const-string v1, ""

    sput-object v1, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    .line 46
    const-string v1, ""

    sput-object v1, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    .line 49
    sput-wide v2, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    .line 50
    sput-wide v2, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    .line 51
    sput-wide v2, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    .line 53
    const-string v1, "gfan"

    sput-object v1, Lcom/gfan/sdk/statistics/Collector;->opid:Ljava/lang/String;

    .line 57
    sput-wide v2, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    .line 70
    const-string v1, ""

    sput-object v1, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Statistics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "localHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)Z
    .locals 1

    .prologue
    .line 907
    invoke-static {p0, p1}, Lcom/gfan/sdk/statistics/Collector;->sendMessage(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    sput-object p0, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Landroid/content/Context;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p0, p1, p2}, Lcom/gfan/sdk/statistics/Collector;->sendAppInfo(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$11(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 436
    invoke-static {p0, p1, p2}, Lcom/gfan/sdk/statistics/Collector;->clearAppClickCount(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1065
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getCpID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->sendCpInfo(Landroid/content/Context;)V

    return-void
.end method

.method private static buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/StringBuilder;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v0, ",\"mac\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FF9B8CB4-E13B-44a7-B3C6-B385D8EB8167"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"appkey\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    sget-object v1, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"cpid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string v1, "\",\"cpidmac\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getCpidMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string v1, "\",\"opid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gfan/sdk/statistics/Collector;->opid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    const-string v1, "\",\"sdkversion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    const-string v1, "\",\"type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    return-void
.end method

.method private static clearAppClickCount(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appStarttime"    # J

    .prologue
    .line 437
    invoke-static {p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v0

    .line 438
    .local v0, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-virtual {v0, p1, p2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->AppClear(J)Z

    .line 439
    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 443
    return-void
.end method

.method public static comment(Landroid/content/Context;Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/gfan/sdk/statistics/Collector$IResponse;

    .prologue
    .line 795
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 797
    :try_start_0
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"plinfo\",\"body\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 801
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "rid"

    sget-object v4, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v3, "comment"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v3, "version"

    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 806
    const-string v3, "0.3.2"

    const-string v4, "tongjisdk"

    invoke-static {v2, v3, v4}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v4, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-direct {v4, v5, p2}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 807
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 811
    .local v0, "e":Lorg/json/JSONException;
    invoke-interface {p2, v0}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V

    .line 812
    const-string v3, "SDK"

    const-string v4, "sendPlInfo failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "sdk\u672a\u521d\u59cb\u5316"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V

    .line 816
    const-string v3, "error"

    const-string v4, "the SDK configured failed to initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAppClickCount(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "starttime"    # J

    .prologue
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v1, "clickcountlist":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v4

    .line 406
    .local v4, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-virtual {v4, p1, p2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->AppSelect(J)Landroid/database/Cursor;

    move-result-object v3

    .line 407
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 409
    const-string v5, "[{\"\":\"0\"}]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 431
    invoke-virtual {v4}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 411
    :cond_0
    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    :cond_1
    const-string v5, "clickname"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 414
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "clickname":Ljava/lang/String;
    const-string v5, "clickcount"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 416
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 418
    .local v0, "clickcount":I
    const-string v5, "{\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 419
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"},"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 413
    if-nez v5, :cond_1

    goto :goto_0
.end method

.method private static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1079
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 1078
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1081
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "gfan_statistics_appkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1084
    :goto_0
    return-object v2

    .line 1082
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1083
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SDK"

    const-string v3, "The gfan_statistics_appkey must be set."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCompanyID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    const-string v0, ""

    .line 112
    .local v0, "companyid":Ljava/lang/String;
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "sim":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 114
    const-string v3, "no sim"

    .line 122
    :goto_0
    return-object v3

    .line 117
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 122
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "no sim"

    goto :goto_0
.end method

.method private static getCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "sim":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 167
    const-string v2, "no sim"

    .line 172
    :goto_0
    return-object v2

    .line 170
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "no sim"

    goto :goto_0
.end method

.method private static getCpID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1067
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 1066
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1069
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "gfan_cpid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1072
    :goto_0
    return-object v2

    .line 1070
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1071
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SDK"

    const-string v3, "The cpid must be set."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCpidMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    const-string v0, ""

    return-object v0
.end method

.method private static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/gfan/sdk/statistics/Collector;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method private static getMetricsd(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return-object v1

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProvince()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "sim":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 152
    const-string v2, "no sim"

    .line 157
    :goto_0
    return-object v2

    .line 155
    :cond_0
    const/16 v2, 0x8

    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "no sim"

    goto :goto_0
.end method

.method private static getRid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v1

    .line 216
    .local v1, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-virtual {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->ridSelect()Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 219
    const-string v2, "rid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    .line 221
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    invoke-virtual {v1}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 226
    sget-object v2, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    return-object v2
.end method

.method private static getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/gfan/sdk/statistics/Collector;->telManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    const-string v1, ""

    .line 253
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 253
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 254
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 256
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SDK"

    const-string v3, "not found app version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 960
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 963
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v1, v0, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;

    if-nez v1, :cond_0

    .line 965
    new-instance v1, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;

    invoke-direct {v1, v0, p0}, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 968
    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1176
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1189
    :goto_0
    return-void

    .line 1182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1184
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->setActivityPauseTime()V

    .line 1186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.gfan.sdk.appStarttime"

    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1187
    const-string v2, "com.gfan.sdk.activityPauseTime"

    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1188
    const-string v2, "com.gfan.sdk.timesum"

    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    .line 1095
    instance-of v4, p0, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    sput-object p0, Lcom/gfan/sdk/statistics/Collector;->context:Landroid/content/Context;

    .line 1099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    .line 1101
    sget-object v4, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1103
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    .line 1104
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getCpID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    :cond_3
    sget-object v4, Lcom/gfan/sdk/statistics/Collector;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_4

    .line 1114
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1113
    check-cast v4, Landroid/telephony/TelephonyManager;

    sput-object v4, Lcom/gfan/sdk/statistics/Collector;->telManager:Landroid/telephony/TelephonyManager;

    .line 1119
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1121
    .local v3, "preferences":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 1124
    const-string v4, "com.gfan.sdk.appStarttime"

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1124
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    .line 1127
    const-string v4, "com.gfan.sdk.activityPauseTime"

    .line 1126
    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    .line 1128
    const-string v4, "com.gfan.sdk.timesum"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    .line 1131
    :try_start_1
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getRid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 1133
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    invoke-static {p0, v4, v5}, Lcom/gfan/sdk/statistics/Collector;->sendMoblieInfo(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1106
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1107
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SDK"

    const-string v5, "The did or cpid not set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1136
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_2
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    .line 1137
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    sget-wide v6, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1140
    :cond_6
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    invoke-static {p0, v4, v5}, Lcom/gfan/sdk/statistics/Collector;->sendAppInfo(Landroid/content/Context;J)V

    .line 1143
    const-string v4, "com.gfan.sdk.lastSendAppListTime"

    const-wide/16 v5, 0x0

    .line 1142
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1144
    .local v1, "lastSendAppListTime":J
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    const-wide/32 v6, 0x240c8400

    add-long/2addr v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 1146
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->sendApkListInfo(Landroid/content/Context;)V

    .line 1149
    :cond_7
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 1152
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    sget-wide v6, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    invoke-static {p0, v4, v5, v6, v7}, Lcom/gfan/sdk/statistics/Collector;->sendLeaveInfo(Landroid/content/Context;JJ)V

    .line 1156
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->sendErrorsInfo(Landroid/content/Context;)V

    .line 1158
    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    .line 1161
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/gfan/sdk/statistics/Collector;->timesum:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static postAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "starttime"    # J
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "cpidmac"    # Ljava/lang/String;
    .param p6, "opid"    # Ljava/lang/String;
    .param p7, "sdkVersion"    # Ljava/lang/String;
    .param p8, "sdkType"    # Ljava/lang/String;
    .param p9, "backupId"    # J

    .prologue
    .line 625
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .local v4, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"appinfo\",\"body\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 628
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "rid"

    sget-object v6, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "version"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 629
    const-string v6, "starttime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 630
    const-string v6, "endtime"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "timesum"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 631
    const-string v6, "clickcount"

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    move-object v0, v4

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    sget-object v15, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v16, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 636
    new-instance v3, Lcom/gfan/sdk/statistics/Collector$3;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    move-wide/from16 v4, p9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/gfan/sdk/statistics/Collector$3;-><init>(JLandroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 635
    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "version":Ljava/lang/String;
    :goto_0
    return-void

    .line 665
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "version":Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 666
    .local p0, "e":Lorg/json/JSONException;
    const-string p0, "SDK"

    .end local p0    # "e":Lorg/json/JSONException;
    const-string p1, "JSONException in postappinfo"

    .end local p1    # "version":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static postLeaveInfo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "starttime"    # J
    .param p4, "endtime"    # J
    .param p6, "timesum"    # J
    .param p8, "mac"    # Ljava/lang/String;
    .param p9, "cpidmac"    # Ljava/lang/String;
    .param p10, "opid"    # Ljava/lang/String;
    .param p11, "sdkVersion"    # Ljava/lang/String;
    .param p12, "sdkType"    # Ljava/lang/String;
    .param p13, "backupId"    # J

    .prologue
    .line 564
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v4, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"leaveinfo\",\"body\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 567
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "rid"

    sget-object v6, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "version"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 568
    const-string v6, "starttime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 569
    const-string v6, "endtime"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 570
    const-string v6, "timesum"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 573
    .local v3, "i":I
    move-object v0, v4

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    invoke-static {v0, v1, v2}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ",\"clickcount\":"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/gfan/sdk/statistics/Collector;->getAppClickCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    sget-object v19, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v20, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 578
    new-instance v3, Lcom/gfan/sdk/statistics/Collector$2;

    .end local v3    # "i":I
    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p13

    move-object/from16 v9, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-direct/range {v3 .. v18}, Lcom/gfan/sdk/statistics/Collector$2;-><init>(Landroid/content/Context;JJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 577
    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "version":Ljava/lang/String;
    :goto_0
    return-void

    .line 613
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "version":Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 614
    .local p0, "e":Lorg/json/JSONException;
    const-string p0, "SDK"

    .end local p0    # "e":Lorg/json/JSONException;
    const-string p1, "JSONException in postLeaveInfo"

    .end local p1    # "version":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static searchForStackTraces(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 971
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 975
    new-instance v1, Lcom/gfan/sdk/statistics/Collector$6;

    invoke-direct {v1}, Lcom/gfan/sdk/statistics/Collector$6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendApkListInfo(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"applist\",\"body\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 749
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "rid"

    sget-object v4, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v3, "packagelist"

    const-string v4, "${packagelist}"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 753
    const-string v3, "0.3.2"

    const-string v4, "tongjisdk"

    invoke-static {v2, v3, v4}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v4, Lcom/gfan/sdk/statistics/Collector$ApkInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 756
    new-instance v6, Lcom/gfan/sdk/statistics/Collector$4;

    invoke-direct {v6, p0}, Lcom/gfan/sdk/statistics/Collector$4;-><init>(Landroid/content/Context;)V

    .line 779
    invoke-direct {v4, v5, v6, p0}, Lcom/gfan/sdk/statistics/Collector$ApkInfo;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;Landroid/content/Context;)V

    .line 755
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 780
    .restart local v2    # "str":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 781
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 784
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :cond_0
    const-string v3, "error"

    const-string v4, "the SDK configured failed to initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendAppInfo(Landroid/content/Context;J)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appStarttime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    invoke-static/range {p0 .. p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v12

    .line 451
    .local v12, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-virtual {v12}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupStartInfoSelect()Landroid/database/Cursor;

    move-result-object v11

    .line 452
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 453
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 459
    :cond_0
    const-string v0, "version"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 458
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "version":Ljava/lang/String;
    const-string v0, "starttime"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 460
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 462
    .local v2, "starttime":J
    const-string v0, "mac"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "mac":Ljava/lang/String;
    const-string v0, "cpidmac"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 464
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "cpidmac":Ljava/lang/String;
    const-string v0, "opid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "opid":Ljava/lang/String;
    const-string v0, "sdk_version"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, "sdkVersion":Ljava/lang/String;
    const-string v0, "sdk_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 470
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 475
    .local v8, "sdkType":Ljava/lang/String;
    const-string v0, "id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object/from16 v0, p0

    .line 473
    invoke-static/range {v0 .. v10}, Lcom/gfan/sdk/statistics/Collector;->postAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 476
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 455
    if-nez v0, :cond_0

    .line 478
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "starttime":J
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "cpidmac":Ljava/lang/String;
    .end local v6    # "opid":Ljava/lang/String;
    .end local v7    # "sdkVersion":Ljava/lang/String;
    .end local v8    # "sdkType":Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 479
    invoke-virtual {v12}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 493
    invoke-static/range {p0 .. p0}, Lcom/gfan/sdk/statistics/Collector;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "FF9B8CB4-E13B-44a7-B3C6-B385D8EB8167"

    .line 494
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getCpidMac()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/gfan/sdk/statistics/Collector;->opid:Ljava/lang/String;

    const-string v16, "0.3.2"

    const-string v17, "tongjisdk"

    const-wide/16 v18, -0x1

    move-object/from16 v9, p0

    move-wide/from16 v11, p1

    .line 493
    invoke-static/range {v9 .. v19}, Lcom/gfan/sdk/statistics/Collector;->postAppInfo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 499
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "appStarttime":J
    :goto_0
    return-void

    .line 496
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "appStarttime":J
    :cond_2
    const-string p0, "SDK"

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "the SDK configured failed to initialize"

    .end local p1    # "appStarttime":J
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendCachedLeaveInfo(Landroid/content/Context;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    invoke-static/range {p0 .. p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v30

    .line 523
    .local v30, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    invoke-virtual/range {v30 .. v30}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->BackupAppInfoSelect()Landroid/database/Cursor;

    move-result-object v29

    .line 524
    .local v29, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_1

    .line 525
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 531
    :cond_0
    const-string v15, "version"

    move-object/from16 v0, v29

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 530
    move-object/from16 v0, v29

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 533
    .local v15, "version":Ljava/lang/String;
    const-string v16, "starttime"

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 532
    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 534
    .local v16, "starttime":J
    const-string v18, "endtime"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 536
    .local v18, "endtime":J
    const-string v20, "timesum"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 537
    .local v20, "_timesum":J
    const-string v22, "mac"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 540
    .local v22, "mac":Ljava/lang/String;
    const-string v23, "cpidmac"

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 539
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 541
    .local v23, "cpidmac":Ljava/lang/String;
    const-string v24, "opid"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 543
    .local v24, "opid":Ljava/lang/String;
    const-string v25, "sdk_version"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 542
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 545
    .local v25, "sdkVersion":Ljava/lang/String;
    const-string v26, "sdk_type"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 544
    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 549
    .local v26, "sdkType":Ljava/lang/String;
    const-string v27, "id"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 547
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-wide/from16 v13, v27

    invoke-static/range {v0 .. v14}, Lcom/gfan/sdk/statistics/Collector;->postLeaveInfo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 550
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    .line 527
    .end local v15    # "version":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 552
    .end local v16    # "starttime":J
    .end local v18    # "endtime":J
    .end local v20    # "_timesum":J
    .end local v22    # "mac":Ljava/lang/String;
    .end local v23    # "cpidmac":Ljava/lang/String;
    .end local v24    # "opid":Ljava/lang/String;
    .end local v25    # "sdkVersion":Ljava/lang/String;
    .end local v26    # "sdkType":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 553
    invoke-virtual/range {v30 .. v30}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 554
    return-void
.end method

.method private static sendCpInfo(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 844
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"cpinfo\",\"body\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rid"

    sget-object v5, Lcom/gfan/sdk/statistics/Collector;->rid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 852
    const-string v4, "cpid"

    sget-object v5, Lcom/gfan/sdk/statistics/Collector;->cpid:Ljava/lang/String;

    .line 851
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 853
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 854
    const-string v3, "0.3.2"

    const-string v4, "tongjisdk"

    invoke-static {v2, v3, v4}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v4, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 856
    new-instance v6, Lcom/gfan/sdk/statistics/Collector$5;

    invoke-direct {v6}, Lcom/gfan/sdk/statistics/Collector$5;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 855
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 869
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SDK"

    const-string v4, "sendCpInfo failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v3, "SDK"

    const-string v4, "the SDK configured failed to initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendErrorsInfo(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 983
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 984
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getRid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "rid":Ljava/lang/String;
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->searchForStackTraces(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 988
    .local v9, "traces":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    if-lez v0, :cond_0

    .line 989
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "dir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v7, "str":Ljava/lang/StringBuilder;
    const-string v2, "{\"msgtype\":\"errorinfo\",\"body\":"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 996
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "rid"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 997
    .end local v1    # "rid":Ljava/lang/String;
    const-string v2, "version"

    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 998
    const-string v1, "device"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "os"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1000
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const-string p0, "errors"

    invoke-virtual {v6, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const/4 p0, 0x0

    .local p0, "i":I
    move v3, p0

    .end local p0    # "i":I
    .local v3, "i":I
    :goto_0
    array-length p0, v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v3, p0, :cond_1

    .line 1035
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1036
    const-string p0, "0.3.2"

    const-string v1, "tongjisdk"

    invoke-static {v7, p0, v1}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    sget-object p0, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v1, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    new-instance v3, Lcom/gfan/sdk/statistics/Collector$7;

    invoke-direct {v3, v9, v0}, Lcom/gfan/sdk/statistics/Collector$7;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 1038
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1063
    .end local v0    # "dir":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "str":Ljava/lang/StringBuilder;
    .end local v9    # "traces":[Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1003
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "str":Ljava/lang/StringBuilder;
    .restart local v9    # "traces":[Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1004
    .local v1, "errorObject":Lorg/json/JSONObject;
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object v2, v9, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, "filePath":Ljava/lang/String;
    aget-object p0, v9, v3

    const/4 v4, 0x0

    .line 1007
    aget-object v8, v9, v3

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1006
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1009
    .local v8, "time":Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local p0, "contents":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    .line 1011
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1010
    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1013
    .local v4, "input":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1014
    .local v2, "line":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1019
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1021
    const-string v2, "time"

    .end local v2    # "line":Ljava/lang/String;
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "error"

    .line 1022
    .end local v4    # "input":Ljava/io/BufferedReader;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1021
    .end local p0    # "contents":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 1002
    add-int/lit8 p0, v3, 0x1

    .end local v3    # "i":I
    .local p0, "i":I
    move v3, p0

    .end local p0    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1015
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .local p0, "contents":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1016
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1025
    .end local v1    # "errorObject":Lorg/json/JSONObject;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "time":Ljava/lang/String;
    .end local p0    # "contents":Ljava/lang/StringBuilder;
    :catch_0
    move-exception p0

    goto/16 :goto_1

    .line 1060
    .end local v0    # "dir":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "str":Ljava/lang/StringBuilder;
    .end local v9    # "traces":[Ljava/lang/String;
    .local p0, "context":Landroid/content/Context;
    :cond_3
    const-string p0, "SDK"

    .end local p0    # "context":Landroid/content/Context;
    const-string v0, "the SDK configured failed to initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1031
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "str":Ljava/lang/StringBuilder;
    .restart local v9    # "traces":[Ljava/lang/String;
    :catch_1
    move-exception p0

    goto/16 :goto_1

    .line 1029
    :catch_2
    move-exception p0

    goto/16 :goto_1

    .line 1027
    :catch_3
    move-exception p0

    goto/16 :goto_1
.end method

.method private static sendLeaveInfo(Landroid/content/Context;JJ)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appStarttime"    # J
    .param p3, "timesum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->sendCachedLeaveInfo(Landroid/content/Context;)V

    .line 512
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v8, "FF9B8CB4-E13B-44a7-B3C6-B385D8EB8167"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getCpidMac()Ljava/lang/String;

    move-result-object v9

    .line 514
    sget-object v10, Lcom/gfan/sdk/statistics/Collector;->opid:Ljava/lang/String;

    const-string v11, "0.3.2"

    const-string v12, "tongjisdk"

    const-wide/16 v13, -0x1

    move-object v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    .line 512
    invoke-static/range {v0 .. v14}, Lcom/gfan/sdk/statistics/Collector;->postLeaveInfo(Landroid/content/Context;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 519
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "appStarttime":J
    :goto_0
    return-void

    .line 516
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "appStarttime":J
    :cond_0
    const-string p0, "SDK"

    .end local p0    # "context":Landroid/content/Context;
    const-string p1, "the SDK configured failed to initialize"

    .end local p1    # "appStarttime":J
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendMessage(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)Z
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "iResponse"    # Lcom/gfan/sdk/statistics/Collector$IResponse;

    .prologue
    const v7, 0xea60

    const/4 v9, 0x0

    .line 908
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "http://data.gfan.com"

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 909
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 910
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 911
    invoke-static {v4, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 912
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 913
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p0, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 920
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 921
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 922
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v6, v0, :cond_1

    .line 923
    if-eqz p1, :cond_0

    .line 924
    invoke-interface {p1, v5}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onSuccess(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 927
    const/4 v6, 0x1

    .line 948
    .end local v0    # "code":I
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return v6

    .line 929
    .restart local v0    # "code":I
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    if-eqz p1, :cond_2

    .line 930
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v6, v9

    .line 932
    goto :goto_0

    .line 934
    .end local v0    # "code":I
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 935
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    if-eqz p1, :cond_3

    .line 936
    :try_start_2
    invoke-interface {p1, v1}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v6, v9

    .line 937
    goto :goto_0

    .line 938
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 939
    .local v1, "e":Ljava/io/IOException;
    if-eqz p1, :cond_4

    .line 940
    :try_start_3
    invoke-interface {p1, v1}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 945
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move v6, v9

    .line 948
    goto :goto_0

    .line 941
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 942
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_5

    .line 943
    :try_start_4
    invoke-interface {p1, v1}, Lcom/gfan/sdk/statistics/Collector$IResponse;->onFailed(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 945
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 945
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 946
    throw v6
.end method

.method private static sendMoblieInfo(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appStarttime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v3, "{\"msgtype\":\"baseinfo\",\"body\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 290
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "country"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 291
    const-string v4, "companyid"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getCompanyID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 292
    const-string v4, "device"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "imei"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 293
    const-string v4, "metricsd"

    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->getMetricsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 294
    const-string v4, "os"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "province"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getProvince()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 295
    const-string v4, "sim"

    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    const-string v3, "0.3.2"

    const-string v4, "tongjisdk"

    invoke-static {v2, v3, v4}, Lcom/gfan/sdk/statistics/Collector;->buildTail(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->hander:Landroid/os/Handler;

    new-instance v4, Lcom/gfan/sdk/statistics/Collector$MessageHandler;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    new-instance v6, Lcom/gfan/sdk/statistics/Collector$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/gfan/sdk/statistics/Collector$1;-><init>(Landroid/content/Context;J)V

    invoke-direct {v4, v5, v6}, Lcom/gfan/sdk/statistics/Collector$MessageHandler;-><init>(Ljava/lang/String;Lcom/gfan/sdk/statistics/Collector$IResponse;)V

    .line 303
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 297
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "str":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SDK"

    const-string v4, "e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 362
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :cond_0
    const-string v3, "SDK"

    const-string v4, "the SDK configured failed to initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setActivityPauseTime()V
    .locals 6

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    .line 264
    sget-wide v0, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    sget-wide v2, Lcom/gfan/sdk/statistics/Collector;->activityPauseTime:J

    sget-wide v4, Lcom/gfan/sdk/statistics/Collector;->activityResumeTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/gfan/sdk/statistics/Collector;->timesum:J

    .line 265
    return-void
.end method

.method public static setAppClickCount(Ljava/lang/String;)V
    .locals 6
    .param p0, "clickname"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {}, Lcom/gfan/sdk/statistics/Collector;->validate()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 378
    sget-object v3, Lcom/gfan/sdk/statistics/Collector;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;

    move-result-object v2

    .line 379
    .local v2, "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    invoke-virtual {v2, p0, v3, v4}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->AppSelectClickname(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 380
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 381
    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    const/4 v5, 0x1

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->AppInsert(Ljava/lang/String;JI)J

    .line 392
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 393
    invoke-virtual {v2}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->close()V

    .line 398
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :goto_1
    return-void

    .line 385
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    const-string v3, "clickcount"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 386
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 388
    .local v0, "clickcount":I
    sget-wide v3, Lcom/gfan/sdk/statistics/Collector;->appStarttime:J

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/gfan/sdk/statistics/ConnectDBUtil;->AppUpdate(Ljava/lang/String;JI)J

    goto :goto_0

    .line 395
    .end local v0    # "clickcount":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    :cond_1
    const-string v3, "SDK"

    const-string v4, "the SDK configured failed to initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static validate()Z
    .locals 2

    .prologue
    .line 952
    const-string v0, ""

    sget-object v1, Lcom/gfan/sdk/statistics/Collector;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
