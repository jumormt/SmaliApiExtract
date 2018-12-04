.class Lnet/youmi/android/fa;
.super Ljava/lang/Object;


# static fields
.field private static g:I


# instance fields
.field a:Ljava/lang/Thread;

.field b:Lnet/youmi/android/aa;

.field c:Lnet/youmi/android/dx;

.field final d:I

.field e:I

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/fa;->g:I

    return-void
.end method

.method constructor <init>(Lnet/youmi/android/aa;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lnet/youmi/android/fa;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/youmi/android/fa;->g:I

    iput v0, p0, Lnet/youmi/android/fa;->d:I

    iput v1, p0, Lnet/youmi/android/fa;->e:I

    iput v1, p0, Lnet/youmi/android/fa;->f:I

    :try_start_0
    iput-object p1, p0, Lnet/youmi/android/fa;->b:Lnet/youmi/android/aa;

    new-instance v0, Lnet/youmi/android/dx;

    iget-object v1, p0, Lnet/youmi/android/fa;->b:Lnet/youmi/android/aa;

    invoke-direct {v0, p0, v1, p2}, Lnet/youmi/android/dx;-><init>(Lnet/youmi/android/fa;Lnet/youmi/android/aa;I)V

    iput-object v0, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/youmi/android/fa;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Lnet/youmi/android/fa;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnet/youmi/android/fa;->b:Lnet/youmi/android/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/fa;->b:Lnet/youmi/android/aa;

    invoke-interface {v0, p0}, Lnet/youmi/android/aa;->c(Lnet/youmi/android/fa;)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    invoke-virtual {v0}, Lnet/youmi/android/dx;->c()V

    iget-object v0, p0, Lnet/youmi/android/fa;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    invoke-virtual {v0}, Lnet/youmi/android/dx;->a()V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    invoke-virtual {v0}, Lnet/youmi/android/dx;->d()V

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/fa;->c:Lnet/youmi/android/dx;

    invoke-virtual {v0}, Lnet/youmi/android/dx;->b()V

    return-void
.end method
