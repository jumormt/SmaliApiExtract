.class Lnet/youmi/android/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/ar;


# direct methods
.method constructor <init>(Lnet/youmi/android/ar;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/cp;->a:Lnet/youmi/android/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cp;->a:Lnet/youmi/android/ar;

    iget-object v0, v0, Lnet/youmi/android/ar;->b:Lnet/youmi/android/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cp;->a:Lnet/youmi/android/ar;

    iget-object v0, v0, Lnet/youmi/android/ar;->b:Lnet/youmi/android/ai;

    invoke-interface {v0}, Lnet/youmi/android/ai;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
