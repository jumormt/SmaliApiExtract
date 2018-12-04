.class Lnet/youmi/android/aq;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/widget/Button;

.field b:Lnet/youmi/android/ah;

.field c:Lnet/youmi/android/bz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ah;Lnet/youmi/android/bz;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lnet/youmi/android/aq;->b:Lnet/youmi/android/ah;

    iput-object p3, p0, Lnet/youmi/android/aq;->c:Lnet/youmi/android/bz;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/aq;->a:Landroid/widget/Button;

    iget-object v0, p0, Lnet/youmi/android/aq;->c:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/aq;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/aq;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/bz;[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/aq;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/aq;->a:Landroid/widget/Button;

    new-instance v1, Lnet/youmi/android/co;

    invoke-direct {v1, p0}, Lnet/youmi/android/co;-><init>(Lnet/youmi/android/aq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/aq;->c:Lnet/youmi/android/bz;

    invoke-virtual {v0}, Lnet/youmi/android/bz;->b()Lnet/youmi/android/bn;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/bn;->a()I

    move-result v0

    iget-object v1, p0, Lnet/youmi/android/aq;->c:Lnet/youmi/android/bz;

    invoke-virtual {v1}, Lnet/youmi/android/bz;->b()Lnet/youmi/android/bn;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bn;->a()I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lnet/youmi/android/aq;->a:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/aq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/aq;->c:Lnet/youmi/android/bz;

    invoke-static {v0}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/bz;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/aq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/aq;->a:Landroid/widget/Button;

    const-string v1, "\u8fd4\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
