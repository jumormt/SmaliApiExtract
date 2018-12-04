.class Lnet/youmi/android/b;
.super Ljava/lang/Object;


# instance fields
.field a:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/b;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/b;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/b;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
