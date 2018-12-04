.class Lnet/youmi/android/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ex;


# direct methods
.method constructor <init>(Lnet/youmi/android/ex;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/dz;->a:Lnet/youmi/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/dz;->a:Lnet/youmi/android/ex;

    invoke-static {v0}, Lnet/youmi/android/ex;->a(Lnet/youmi/android/ex;)Lnet/youmi/android/AdActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/dz;->a:Lnet/youmi/android/ex;

    invoke-static {v1}, Lnet/youmi/android/ex;->b(Lnet/youmi/android/ex;)Lnet/youmi/android/aw;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/ba;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method
