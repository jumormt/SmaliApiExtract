.class Lnet/youmi/android/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lnet/youmi/android/bv;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/youmi/android/bv;I)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ep;->a:Landroid/content/Context;

    iput-object p2, p0, Lnet/youmi/android/ep;->b:Lnet/youmi/android/bv;

    iput p3, p0, Lnet/youmi/android/ep;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ep;->a:Landroid/content/Context;

    iget-object v1, p0, Lnet/youmi/android/ep;->b:Lnet/youmi/android/bv;

    iget v2, p0, Lnet/youmi/android/ep;->c:I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/k;->b(Landroid/content/Context;Lnet/youmi/android/bv;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
