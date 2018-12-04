.class Lnet/youmi/android/dv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lnet/youmi/android/z;

.field private h:Lnet/youmi/android/ey;


# direct methods
.method constructor <init>(Lnet/youmi/android/ey;Lnet/youmi/android/z;I)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lnet/youmi/android/dv;->a:Z

    iput-boolean v0, p0, Lnet/youmi/android/dv;->b:Z

    iput v1, p0, Lnet/youmi/android/dv;->c:I

    iput v1, p0, Lnet/youmi/android/dv;->d:I

    iput v0, p0, Lnet/youmi/android/dv;->e:I

    iput v0, p0, Lnet/youmi/android/dv;->f:I

    iput-object p1, p0, Lnet/youmi/android/dv;->h:Lnet/youmi/android/ey;

    iput-object p2, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    iput p3, p0, Lnet/youmi/android/dv;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/dv;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/dv;->d:I

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/dv;->a:Z

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/dv;->a:Z

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/dv;->b:Z

    return-void
.end method

.method public run()V
    .locals 4

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/dv;->a:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lnet/youmi/android/dv;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/youmi/android/dv;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/youmi/android/dv;->e:I

    iget v0, p0, Lnet/youmi/android/dv;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/dv;->e:I

    iget v1, p0, Lnet/youmi/android/dv;->d:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    iget-object v1, p0, Lnet/youmi/android/dv;->h:Lnet/youmi/android/ey;

    invoke-interface {v0, v1}, Lnet/youmi/android/z;->c(Lnet/youmi/android/ey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    iget-object v1, p0, Lnet/youmi/android/dv;->h:Lnet/youmi/android/ey;

    invoke-interface {v0, v1}, Lnet/youmi/android/z;->a(Lnet/youmi/android/ey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    const-wide/16 v0, 0x3e8

    :try_start_3
    iget-object v2, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_4

    :try_start_4
    iget-object v2, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    iget-object v3, p0, Lnet/youmi/android/dv;->h:Lnet/youmi/android/ey;

    invoke-interface {v2, v3}, Lnet/youmi/android/z;->b(Lnet/youmi/android/ey;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v0

    :cond_4
    :goto_2
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    :try_start_6
    iget v0, p0, Lnet/youmi/android/dv;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/youmi/android/dv;->f:I

    iget v0, p0, Lnet/youmi/android/dv;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/dv;->f:I

    iget v1, p0, Lnet/youmi/android/dv;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/dv;->g:Lnet/youmi/android/z;

    iget-object v1, p0, Lnet/youmi/android/dv;->h:Lnet/youmi/android/ey;

    invoke-interface {v0, v1}, Lnet/youmi/android/z;->c(Lnet/youmi/android/ey;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method
