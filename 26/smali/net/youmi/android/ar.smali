.class Lnet/youmi/android/ar;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/widget/Button;

.field b:Lnet/youmi/android/ai;

.field c:Lnet/youmi/android/ca;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ai;Lnet/youmi/android/ca;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/youmi/android/ar;->b:Lnet/youmi/android/ai;

    iput-object p3, p0, Lnet/youmi/android/ar;->c:Lnet/youmi/android/ca;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ar;->a:Landroid/widget/Button;

    iget-object v0, p0, Lnet/youmi/android/ar;->c:Lnet/youmi/android/ca;

    sget-object v1, Lnet/youmi/android/ar;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/ar;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/by;->a(Lnet/youmi/android/ca;[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/ar;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/ar;->a:Landroid/widget/Button;

    new-instance v1, Lnet/youmi/android/cp;

    invoke-direct {v1, p0}, Lnet/youmi/android/cp;-><init>(Lnet/youmi/android/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/ar;->c:Lnet/youmi/android/ca;

    invoke-virtual {v0}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bo;->a()I

    move-result v0

    iget-object v1, p0, Lnet/youmi/android/ar;->c:Lnet/youmi/android/ca;

    invoke-virtual {v1}, Lnet/youmi/android/ca;->b()Lnet/youmi/android/bo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bo;->a()I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/ar;->a:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/ar;->c:Lnet/youmi/android/ca;

    invoke-static {v0}, Lnet/youmi/android/by;->a(Lnet/youmi/android/ca;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/ar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ar;->a:Landroid/widget/Button;

    const-string v1, "\u8fd4\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
