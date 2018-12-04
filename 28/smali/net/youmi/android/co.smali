.class Lnet/youmi/android/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/aq;


# direct methods
.method constructor <init>(Lnet/youmi/android/aq;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/aq;

    iget-object v0, v0, Lnet/youmi/android/aq;->b:Lnet/youmi/android/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/co;->a:Lnet/youmi/android/aq;

    iget-object v0, v0, Lnet/youmi/android/aq;->b:Lnet/youmi/android/ah;

    invoke-interface {v0}, Lnet/youmi/android/ah;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
