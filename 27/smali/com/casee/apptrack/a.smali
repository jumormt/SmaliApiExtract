.class Lcom/casee/apptrack/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/casee/apptrack/FirstUsageTracker;


# direct methods
.method constructor <init>(Lcom/casee/apptrack/FirstUsageTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/apptrack/a;->a:Lcom/casee/apptrack/FirstUsageTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/casee/apptrack/a;->a:Lcom/casee/apptrack/FirstUsageTracker;

    iget-object v1, p0, Lcom/casee/apptrack/a;->a:Lcom/casee/apptrack/FirstUsageTracker;

    invoke-static {v1}, Lcom/casee/apptrack/FirstUsageTracker;->a(Lcom/casee/apptrack/FirstUsageTracker;)Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/casee/apptrack/FirstUsageTracker;->doTrack(Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V

    return-void
.end method
