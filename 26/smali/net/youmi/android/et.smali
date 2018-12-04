.class Lnet/youmi/android/et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/au;


# direct methods
.method constructor <init>(Lnet/youmi/android/au;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    invoke-static {v0}, Lnet/youmi/android/au;->a(Lnet/youmi/android/au;)Lnet/youmi/android/cu;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/cu;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    iget-object v0, v0, Lnet/youmi/android/au;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    iget-object v1, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    iget-object v1, v1, Lnet/youmi/android/au;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lnet/youmi/android/au;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/et;->a:Lnet/youmi/android/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/youmi/android/au;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
