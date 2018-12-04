.class Lnet/youmi/android/dx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ev;


# direct methods
.method constructor <init>(Lnet/youmi/android/ev;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/dx;->a:Lnet/youmi/android/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dx;->a:Lnet/youmi/android/ev;

    invoke-static {v0}, Lnet/youmi/android/ev;->a(Lnet/youmi/android/ev;)Lnet/youmi/android/AdActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/dx;->a:Lnet/youmi/android/ev;

    invoke-static {v1}, Lnet/youmi/android/ev;->b(Lnet/youmi/android/ev;)Lnet/youmi/android/av;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/az;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method
