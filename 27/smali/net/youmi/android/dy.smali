.class Lnet/youmi/android/dy;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Landroid/content/Context;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnet/youmi/android/dy;->c:J

    iput-wide v0, p0, Lnet/youmi/android/dy;->f:J

    iput-wide v0, p0, Lnet/youmi/android/dy;->g:J

    iput-wide v0, p0, Lnet/youmi/android/dy;->h:J

    iput-wide v0, p0, Lnet/youmi/android/dy;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/dy;->a:Z

    if-nez p2, :cond_0

    iput-boolean v2, p0, Lnet/youmi/android/dy;->a:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lnet/youmi/android/cu;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnet/youmi/android/dy;->a:Z

    :cond_1
    iput-object p1, p0, Lnet/youmi/android/dy;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dy;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/youmi/android/cu;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/dy;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/youmi/android/cu;->B()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dy;->c:J

    iput-wide p3, p0, Lnet/youmi/android/dy;->f:J

    iput-wide p5, p0, Lnet/youmi/android/dy;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/dy;->i:J

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/dy;)J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/dy;->c:J

    return-wide v0
.end method

.method static synthetic b(Lnet/youmi/android/dy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dy;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lnet/youmi/android/dy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/dy;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lnet/youmi/android/dy;)J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/dy;->g:J

    return-wide v0
.end method

.method static synthetic e(Lnet/youmi/android/dy;)J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/dy;->f:J

    return-wide v0
.end method

.method static synthetic f(Lnet/youmi/android/dy;)J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/dy;->h:J

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 4

    iget-boolean v0, p0, Lnet/youmi/android/dy;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/dy;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/youmi/android/dy;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/youmi/android/dy;->h:J

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/bu;

    invoke-direct {v1, p0}, Lnet/youmi/android/bu;-><init>(Lnet/youmi/android/dy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
