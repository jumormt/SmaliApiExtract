.class Lnet/youmi/android/ey;
.super Ljava/lang/Object;


# static fields
.field private static g:I


# instance fields
.field a:Ljava/lang/Thread;

.field b:Lnet/youmi/android/z;

.field c:Lnet/youmi/android/dv;

.field final d:I

.field e:I

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/ey;->g:I

    return-void
.end method

.method constructor <init>(Lnet/youmi/android/z;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lnet/youmi/android/ey;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/youmi/android/ey;->g:I

    iput v0, p0, Lnet/youmi/android/ey;->d:I

    iput v1, p0, Lnet/youmi/android/ey;->e:I

    iput v1, p0, Lnet/youmi/android/ey;->f:I

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/ey;->b:Lnet/youmi/android/z;

    new-instance v0, Lnet/youmi/android/dv;

    iget-object v1, p0, Lnet/youmi/android/ey;->b:Lnet/youmi/android/z;

    invoke-direct {v0, p0, v1, p2}, Lnet/youmi/android/dv;-><init>(Lnet/youmi/android/ey;Lnet/youmi/android/z;I)V

    iput-object v0, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/youmi/android/ey;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Lnet/youmi/android/ey;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnet/youmi/android/ey;->b:Lnet/youmi/android/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ey;->b:Lnet/youmi/android/z;

    invoke-interface {v0, p0}, Lnet/youmi/android/z;->c(Lnet/youmi/android/ey;)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    invoke-virtual {v0}, Lnet/youmi/android/dv;->c()V

    iget-object v0, p0, Lnet/youmi/android/ey;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    invoke-virtual {v0}, Lnet/youmi/android/dv;->a()V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    invoke-virtual {v0}, Lnet/youmi/android/dv;->d()V

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ey;->c:Lnet/youmi/android/dv;

    invoke-virtual {v0}, Lnet/youmi/android/dv;->b()V

    return-void
.end method
