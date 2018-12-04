.class Lnet/youmi/android/da;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lnet/youmi/android/cx;


# direct methods
.method public constructor <init>(Lnet/youmi/android/cx;Landroid/app/Activity;ILnet/youmi/android/ca;I)V
    .locals 5

    const/16 v4, 0x9

    const/4 v2, 0x1

    iput-object p1, p0, Lnet/youmi/android/da;->c:Lnet/youmi/android/cx;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/16 v1, 0x3fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {p4}, Lnet/youmi/android/ca;->i()Lnet/youmi/android/dj;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/dj;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    invoke-virtual {p4}, Lnet/youmi/android/ca;->i()Lnet/youmi/android/dj;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/dj;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-static {p5}, Lnet/youmi/android/h;->b(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-static {p5}, Lnet/youmi/android/h;->b(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x3

    iget-object v3, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lnet/youmi/android/da;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/da;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Lnet/youmi/android/cu;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/cu;->b()I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Lnet/youmi/android/cu;->b()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/youmi/android/cu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v3

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    move-object v1, v3

    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v2, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    :goto_1
    iget-object v1, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lnet/youmi/android/da;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/youmi/android/da;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method
