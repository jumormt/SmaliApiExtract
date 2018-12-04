.class public Lcom/casee/apptrack/FirstUsageTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/casee/apptrack/NotifyUtil;

.field private c:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/casee/apptrack/FirstUsageTracker;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->c:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/casee/apptrack/FirstUsageTracker;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/casee/apptrack/FirstUsageTracker;->c:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    return-void
.end method

.method static synthetic a(Lcom/casee/apptrack/FirstUsageTracker;)Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;
    .locals 1

    iget-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->c:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    return-object v0
.end method

.method private a(Ljava/util/Properties;)Ljava/util/Map;
    .locals 8

    const-string v7, "cid"

    const-string v5, "aid"

    const-string v6, "-"

    const-string v0, "aid"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/apptrack/FirstUsageTracker;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/casee/adsdk/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/casee/apptrack/FirstUsageTracker;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/casee/apptrack/FirstUsageTracker;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/casee/apptrack/FirstUsageTracker;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "aid"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cid"

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "did"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doTrack(Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V
    .locals 7

    const/4 v3, 0x0

    const-string v0, "pt.log"

    const-string v6, "fu"

    const-string v5, "1"

    const-string v4, "CASEE-TA"

    :try_start_0
    iget-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    const-string v1, "casee_pt.txt"

    invoke-virtual {v0, v1}, Lcom/casee/apptrack/NotifyUtil;->b(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onFailed()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CASEE-TA"

    const-string v0, "casee_pt.txt not found"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    const-string v2, "pt.log"

    invoke-virtual {v1, v2}, Lcom/casee/apptrack/NotifyUtil;->a(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :cond_2
    const-string v2, "1"

    const-string v2, "fu"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://wap.casee.cn/mo/fee.jsp"

    invoke-direct {p0, v0}, Lcom/casee/apptrack/FirstUsageTracker;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    invoke-virtual {v3, v2, v0}, Lcom/casee/apptrack/NotifyUtil;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "fu"

    const-string v0, "1"

    invoke-virtual {v1, v6, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_2
    iget-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    const-string v2, "pt.log"

    invoke-virtual {v0, v2, v1}, Lcom/casee/apptrack/NotifyUtil;->a(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onSuccess()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CASEE-TA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "CASEE-TA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onFailed()V

    goto :goto_1
.end method

.method public doTrackASync()V
    .locals 1

    new-instance v0, Lcom/casee/apptrack/a;

    invoke-direct {v0, p0}, Lcom/casee/apptrack/a;-><init>(Lcom/casee/apptrack/FirstUsageTracker;)V

    invoke-virtual {v0}, Lcom/casee/apptrack/a;->start()V

    return-void
.end method
