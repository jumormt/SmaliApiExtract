.class Lnet/youmi/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cf;


# direct methods
.method constructor <init>(Lnet/youmi/android/cf;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/u;->a:Lnet/youmi/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/u;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->e(Lnet/youmi/android/cf;)Landroid/widget/Gallery;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/u;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->e(Lnet/youmi/android/cf;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/u;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->e(Lnet/youmi/android/cf;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/u;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->e(Lnet/youmi/android/cf;)Landroid/widget/Gallery;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
