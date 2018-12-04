.class Lnet/youmi/android/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cc;


# direct methods
.method constructor <init>(Lnet/youmi/android/cc;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bf;->a:Lnet/youmi/android/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/bf;->a:Lnet/youmi/android/cc;

    iget-object v0, v0, Lnet/youmi/android/cc;->g:Lnet/youmi/android/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bf;->a:Lnet/youmi/android/cc;

    iget-object v0, v0, Lnet/youmi/android/cc;->g:Lnet/youmi/android/bo;

    invoke-interface {v0}, Lnet/youmi/android/bo;->a_()V

    :cond_0
    return-void
.end method
