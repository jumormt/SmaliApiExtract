.class Lnet/youmi/android/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cd;


# direct methods
.method constructor <init>(Lnet/youmi/android/cd;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bg;->a:Lnet/youmi/android/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bg;->a:Lnet/youmi/android/cd;

    iget-object v0, v0, Lnet/youmi/android/cd;->g:Lnet/youmi/android/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bg;->a:Lnet/youmi/android/cd;

    iget-object v0, v0, Lnet/youmi/android/cd;->g:Lnet/youmi/android/bp;

    invoke-interface {v0}, Lnet/youmi/android/bp;->a_()V

    :cond_0
    return-void
.end method
