.class Lnet/youmi/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/ce;


# direct methods
.method constructor <init>(Lnet/youmi/android/ce;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-static {v0}, Lnet/youmi/android/ce;->a(Lnet/youmi/android/ce;)Lnet/youmi/android/cr;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/youmi/android/cr;->a(I)Lnet/youmi/android/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-static {v1}, Lnet/youmi/android/ce;->b(Lnet/youmi/android/ce;)Lnet/youmi/android/ar;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-static {v1}, Lnet/youmi/android/ce;->c(Lnet/youmi/android/ce;)V

    iget-object v1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-static {v1}, Lnet/youmi/android/ce;->d(Lnet/youmi/android/ce;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    iget-object v2, v0, Lnet/youmi/android/ar;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lnet/youmi/android/ag;->a:Lnet/youmi/android/ce;

    invoke-static {v1, v0}, Lnet/youmi/android/ce;->a(Lnet/youmi/android/ce;Lnet/youmi/android/ar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
