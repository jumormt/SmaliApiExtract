.class Lnet/youmi/android/a;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field private d:Z

.field private e:J


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnet/youmi/android/a;->a:Z

    iput-boolean v0, p0, Lnet/youmi/android/a;->b:Z

    iput-boolean v0, p0, Lnet/youmi/android/a;->c:Z

    iput-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/youmi/android/a;->e:J

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    return v0
.end method

.method a(Lnet/youmi/android/AdView;)Z
    .locals 4

    iget-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/youmi/android/a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/a;->c()V

    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/AdView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/youmi/android/a;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/youmi/android/a;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/youmi/android/a;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/youmi/android/a;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/a;->d:Z

    return-void
.end method
