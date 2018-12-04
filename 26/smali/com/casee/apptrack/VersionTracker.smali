.class public Lcom/casee/apptrack/VersionTracker;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/casee/apptrack/NotifyUtil;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/casee/apptrack/VersionTracker;->a:Landroid/content/Context;

    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/VersionTracker;->b:Lcom/casee/apptrack/NotifyUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/apptrack/VersionTracker;->c:Ljava/lang/String;

    return-void
.end method
