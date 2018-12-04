.class final Lnet/youmi/android/cc;
.super Landroid/widget/TableLayout;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Lnet/youmi/android/bo;

.field h:Lnet/youmi/android/bz;

.field i:Lnet/youmi/android/dp;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/bz;Lnet/youmi/android/bo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/youmi/android/dp;

    invoke-direct {v0, p0}, Lnet/youmi/android/dp;-><init>(Lnet/youmi/android/cc;)V

    iput-object v0, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    iput-object p1, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/youmi/android/cc;->g:Lnet/youmi/android/bo;

    iput-object p2, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    invoke-direct {p0}, Lnet/youmi/android/cc;->e()V

    invoke-direct {p0}, Lnet/youmi/android/cc;->d()V

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    invoke-static {v0}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/bz;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/cc;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lnet/youmi/android/cc;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method private d()V
    .locals 13

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/4 v11, -0x2

    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    invoke-virtual {v1}, Lnet/youmi/android/bz;->b()Lnet/youmi/android/bn;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/bn;->a()I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    invoke-virtual {v2}, Lnet/youmi/android/bz;->b()Lnet/youmi/android/bn;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/bn;->a()I

    move-result v2

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v6, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v7, Landroid/widget/TableRow$LayoutParams;->column:I

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lnet/youmi/android/cc;->setStretchAllColumns(Z)V

    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v10, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    invoke-virtual {v8, v10, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v3, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Lnet/youmi/android/cc;->d:Landroid/view/View;

    invoke-virtual {v3, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lnet/youmi/android/cc;->e:Landroid/view/View;

    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lnet/youmi/android/cc;->b:Landroid/view/View;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lnet/youmi/android/cc;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lnet/youmi/android/h;->a(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lnet/youmi/android/cc;->f:Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v11}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/TableLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Lnet/youmi/android/cc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Lnet/youmi/android/bc;

    invoke-direct {v0, p0}, Lnet/youmi/android/bc;-><init>(Lnet/youmi/android/cc;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/cc;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/cc;->ENABLED_STATE_SET:[I

    sget-object v3, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/bz;[I[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    invoke-virtual {v1}, Lnet/youmi/android/dp;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lnet/youmi/android/bf;

    invoke-direct {v0, p0}, Lnet/youmi/android/bf;-><init>(Lnet/youmi/android/cc;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/cc;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cc;->d:Landroid/view/View;

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/cc;->ENABLED_STATE_SET:[I

    sget-object v3, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/bx;->b(Lnet/youmi/android/bz;[I[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/cc;->d:Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    invoke-virtual {v1}, Lnet/youmi/android/dp;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v0, Lnet/youmi/android/be;

    invoke-direct {v0, p0}, Lnet/youmi/android/be;-><init>(Lnet/youmi/android/cc;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/cc;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cc;->e:Landroid/view/View;

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/cc;->ENABLED_STATE_SET:[I

    sget-object v3, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/bx;->c(Lnet/youmi/android/bz;[I[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/youmi/android/cc;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    new-instance v0, Lnet/youmi/android/bh;

    invoke-direct {v0, p0}, Lnet/youmi/android/bh;-><init>(Lnet/youmi/android/cc;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/cc;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cc;->b:Landroid/view/View;

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bx;->b(Lnet/youmi/android/bz;[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/youmi/android/cc;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    new-instance v0, Lnet/youmi/android/bg;

    invoke-direct {v0, p0}, Lnet/youmi/android/bg;-><init>(Lnet/youmi/android/cc;)V

    invoke-direct {p0, v0}, Lnet/youmi/android/cc;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cc;->f:Landroid/view/View;

    iget-object v0, p0, Lnet/youmi/android/cc;->h:Lnet/youmi/android/bz;

    sget-object v1, Lnet/youmi/android/cc;->EMPTY_STATE_SET:[I

    sget-object v2, Lnet/youmi/android/cc;->PRESSED_ENABLED_STATE_SET:[I

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bx;->a(Lnet/youmi/android/bz;[I[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lnet/youmi/android/cc;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/cc;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/cc;->e:Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    invoke-virtual {v1}, Lnet/youmi/android/dp;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/cc;->b:Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    invoke-virtual {v1}, Lnet/youmi/android/dp;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lnet/youmi/android/cc;->f:Landroid/view/View;

    iget-object v1, p0, Lnet/youmi/android/cc;->i:Lnet/youmi/android/dp;

    invoke-virtual {v1}, Lnet/youmi/android/dp;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method


# virtual methods
.method a(Lnet/youmi/android/d;)V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/cc;->c:Landroid/view/View;

    invoke-virtual {p1}, Lnet/youmi/android/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lnet/youmi/android/cc;->d:Landroid/view/View;

    invoke-virtual {p1}, Lnet/youmi/android/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lnet/youmi/android/cc;->e:Landroid/view/View;

    invoke-virtual {p1}, Lnet/youmi/android/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
