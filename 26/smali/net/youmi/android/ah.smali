.class Lnet/youmi/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cf;


# direct methods
.method constructor <init>(Lnet/youmi/android/cf;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->a(Lnet/youmi/android/cf;)Lnet/youmi/android/cs;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/youmi/android/cs;->a(I)Lnet/youmi/android/as;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-static {v1}, Lnet/youmi/android/cf;->b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-static {v1}, Lnet/youmi/android/cf;->c(Lnet/youmi/android/cf;)V

    iget-object v1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-static {v1}, Lnet/youmi/android/cf;->d(Lnet/youmi/android/cf;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    iget-object v2, v0, Lnet/youmi/android/as;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lnet/youmi/android/ah;->a:Lnet/youmi/android/cf;

    invoke-static {v1, v0}, Lnet/youmi/android/cf;->a(Lnet/youmi/android/cf;Lnet/youmi/android/as;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
