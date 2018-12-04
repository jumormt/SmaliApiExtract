.class Lnet/youmi/android/cb;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/app/Activity;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/youmi/android/cb;->b:Landroid/app/Activity;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/cb;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Landroid/widget/TextView;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3f9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v1, Lnet/youmi/android/eg;

    invoke-direct {v1, p0}, Lnet/youmi/android/eg;-><init>(Lnet/youmi/android/cb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lnet/youmi/android/h;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lnet/youmi/android/h;->c()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lnet/youmi/android/cb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Lnet/youmi/android/m;)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cb;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lnet/youmi/android/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lnet/youmi/android/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lnet/youmi/android/cb;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/cb;->setVisibility(I)V

    return-void
.end method
