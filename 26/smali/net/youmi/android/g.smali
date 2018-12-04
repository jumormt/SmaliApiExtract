.class Lnet/youmi/android/g;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lnet/youmi/android/ca;

.field c:Lnet/youmi/android/co;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lnet/youmi/android/dk;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/co;Lnet/youmi/android/ca;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/youmi/android/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/g;->c:Lnet/youmi/android/co;

    iput-object p3, p0, Lnet/youmi/android/g;->b:Lnet/youmi/android/ca;

    invoke-virtual {p0}, Lnet/youmi/android/g;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    const/16 v3, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/16 v4, 0xa

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/youmi/android/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/g;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/g;->d:Landroid/widget/TextView;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/youmi/android/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Lnet/youmi/android/dk;

    iget-object v1, p0, Lnet/youmi/android/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/g;->b:Lnet/youmi/android/ca;

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/dk;-><init>(Landroid/content/Context;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/g;->f:Lnet/youmi/android/dk;

    iget-object v0, p0, Lnet/youmi/android/g;->f:Lnet/youmi/android/dk;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Lnet/youmi/android/dk;->setId(I)V

    invoke-static {}, Lnet/youmi/android/h;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {}, Lnet/youmi/android/h;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/g;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lnet/youmi/android/g;->b:Lnet/youmi/android/ca;

    invoke-virtual {v2}, Lnet/youmi/android/ca;->d()I

    move-result v2

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Lnet/youmi/android/h;->b(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lnet/youmi/android/g;->f:Lnet/youmi/android/dk;

    invoke-virtual {p0, v3, v2}, Lnet/youmi/android/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lnet/youmi/android/g;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lnet/youmi/android/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Lnet/youmi/android/ci;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p1, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/g;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lnet/youmi/android/ci;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lnet/youmi/android/ci;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, p1, Lnet/youmi/android/ci;->d:J

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lnet/youmi/android/g;->f:Lnet/youmi/android/dk;

    invoke-virtual {v1, v0}, Lnet/youmi/android/dk;->a(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/g;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lnet/youmi/android/g;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnet/youmi/android/g;->f:Lnet/youmi/android/dk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/youmi/android/dk;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/g;->c:Lnet/youmi/android/co;

    invoke-virtual {v0}, Lnet/youmi/android/co;->a()V

    goto :goto_0
.end method
