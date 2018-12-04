.class Lnet/youmi/android/du;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lnet/youmi/android/du;->a:I

    iput v0, p0, Lnet/youmi/android/du;->b:I

    iput-boolean v0, p0, Lnet/youmi/android/du;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/du;->c:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/du;->c:Z

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/du;->a:I

    return v0
.end method
