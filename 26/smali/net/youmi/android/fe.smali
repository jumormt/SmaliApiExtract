.class Lnet/youmi/android/fe;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lnet/youmi/android/dl;
.implements Lnet/youmi/android/eb;


# instance fields
.field a:Lnet/youmi/android/cx;

.field b:Lnet/youmi/android/au;

.field c:Z

.field d:Lnet/youmi/android/df;

.field e:Lnet/youmi/android/AdView;

.field f:I

.field g:Landroid/app/Activity;

.field h:Lnet/youmi/android/dy;

.field i:Landroid/view/animation/Animation;

.field j:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/ca;III)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/youmi/android/fe;->c:Z

    const/16 v2, 0xff

    iput v2, p0, Lnet/youmi/android/fe;->f:I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lnet/youmi/android/fe;->i:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lnet/youmi/android/fe;->j:Landroid/view/animation/Animation;

    iput-object p1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lnet/youmi/android/fe;->f:I

    iget-object v2, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v10

    iget-object v2, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v11

    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lnet/youmi/android/fe;->c(I)V

    new-instance v9, Lnet/youmi/android/en;

    invoke-direct {v9, v10, v11, p3}, Lnet/youmi/android/en;-><init>(IILnet/youmi/android/ca;)V

    new-instance v2, Lnet/youmi/android/au;

    invoke-virtual {p2}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v6

    invoke-virtual {p2}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lnet/youmi/android/au;-><init>(Landroid/content/Context;Lnet/youmi/android/AdView;Lnet/youmi/android/fe;IILnet/youmi/android/ca;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lnet/youmi/android/fe;->b:Lnet/youmi/android/au;

    iget-object v2, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v2}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v2

    invoke-virtual {v9}, Lnet/youmi/android/en;->a()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ae;->b()I

    move-result v3

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v4

    invoke-virtual {v4}, Lnet/youmi/android/ae;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    iget-object v3, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v3}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/af;->b()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->c()Lnet/youmi/android/af;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/af;->a()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v8, v2, v3

    new-instance v2, Lnet/youmi/android/cx;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/fe;Lnet/youmi/android/ca;II)V

    iput-object v2, p0, Lnet/youmi/android/fe;->a:Lnet/youmi/android/cx;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lnet/youmi/android/fe;->a:Lnet/youmi/android/cx;

    invoke-virtual {p0, v3, v2}, Lnet/youmi/android/fe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v3}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v3

    iget-object v4, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v4}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lnet/youmi/android/fe;->b:Lnet/youmi/android/au;

    invoke-virtual {p0, v3, v2}, Lnet/youmi/android/fe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lnet/youmi/android/fe;->b:Lnet/youmi/android/au;

    invoke-virtual {v2}, Lnet/youmi/android/au;->bringToFront()V

    new-instance v2, Lnet/youmi/android/df;

    invoke-direct {v2, p1, v10, v11, p3}, Lnet/youmi/android/df;-><init>(Landroid/content/Context;IILnet/youmi/android/ca;)V

    iput-object v2, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {p0, v3, v2}, Lnet/youmi/android/fe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v2}, Lnet/youmi/android/df;->bringToFront()V

    iget-object v2, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lnet/youmi/android/df;->setVisibility(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ae;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Lnet/youmi/android/ca;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p3}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/y;->d()Lnet/youmi/android/ae;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ae;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Lnet/youmi/android/ca;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lnet/youmi/android/fe;->i:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lnet/youmi/android/fe;->j:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/youmi/android/fe;->setFocusable(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/youmi/android/fe;->setClickable(Z)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lnet/youmi/android/fe;->setVisibility(I)V

    invoke-virtual {p0}, Lnet/youmi/android/fe;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668,\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0, p1}, Lnet/youmi/android/df;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/cu;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object p1, Lnet/youmi/android/dp;->a:Lnet/youmi/android/cu;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/AdActivity;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Lnet/youmi/android/dw;[Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/fe;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/br;

    invoke-direct {v1, p0, p1}, Lnet/youmi/android/br;-><init>(Lnet/youmi/android/fe;Lnet/youmi/android/dw;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Lnet/youmi/android/dw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/dw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v1, v2}, Lnet/youmi/android/AdActivity;->a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public a(Lnet/youmi/android/i;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lnet/youmi/android/bw;

    invoke-direct {v0}, Lnet/youmi/android/bw;-><init>()V

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/bw;->d:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->d(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/i;Lnet/youmi/android/em;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/fe;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->c()Lnet/youmi/android/cu;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/fe;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p2}, Lnet/youmi/android/em;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/youmi/android/cu;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/youmi/android/cu;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lnet/youmi/android/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/youmi/android/em;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/youmi/android/cu;->a(Lnet/youmi/android/em;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnet/youmi/android/ds;

    invoke-direct {v2, p0, v0, p1}, Lnet/youmi/android/ds;-><init>(Lnet/youmi/android/fe;Lnet/youmi/android/cu;Lnet/youmi/android/i;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    :try_start_5
    invoke-virtual {p0, v0}, Lnet/youmi/android/fe;->a(Lnet/youmi/android/cu;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0, p1}, Lnet/youmi/android/df;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Lnet/youmi/android/cu;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->a:Lnet/youmi/android/cx;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cu;)V

    iget-object v0, p0, Lnet/youmi/android/fe;->b:Lnet/youmi/android/au;

    invoke-virtual {v0, p1}, Lnet/youmi/android/au;->a(Lnet/youmi/android/cu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lnet/youmi/android/i;Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/youmi/android/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/youmi/android/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/youmi/android/i;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/youmi/android/bw;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lnet/youmi/android/k;->a(Landroid/content/Context;Lnet/youmi/android/bw;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->c()Lnet/youmi/android/cu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/youmi/android/cu;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {v2}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/em;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6709\u7c73\u5e7f\u544aSDK\u914d\u7f6e\u7b80\u6613\u6559\u7a0b"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {v2}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lnet/youmi/android/fe;->a(Lnet/youmi/android/cu;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    new-instance v0, Lnet/youmi/android/i;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lnet/youmi/android/i;-><init>(Landroid/content/Context;Lnet/youmi/android/eb;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lnet/youmi/android/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :sswitch_3
    :try_start_3
    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/youmi/android/cu;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/dy;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V

    iput-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->c(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :sswitch_4
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    new-instance v0, Lnet/youmi/android/i;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p0, v3}, Lnet/youmi/android/i;-><init>(Landroid/content/Context;Lnet/youmi/android/eb;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lnet/youmi/android/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :goto_1
    :try_start_5
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {v0, v2}, Lnet/youmi/android/ak;->a(Landroid/content/Context;Lnet/youmi/android/cu;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :sswitch_5
    :try_start_6
    invoke-virtual {v2}, Lnet/youmi/android/cu;->x()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v1}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/youmi/android/a;->c:Z

    new-instance v1, Lnet/youmi/android/dw;

    iget-object v3, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-direct {v1, v3, p0, v2}, Lnet/youmi/android/dw;-><init>(Landroid/content/Context;Lnet/youmi/android/dl;Lnet/youmi/android/cu;)V

    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lnet/youmi/android/dw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :sswitch_6
    :try_start_7
    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/youmi/android/cu;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/dy;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V

    iput-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/be;->a(Landroid/app/Activity;Landroid/net/Uri;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :sswitch_7
    :try_start_8
    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/youmi/android/cu;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/dy;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V

    iput-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/z;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :sswitch_8
    :try_start_9
    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/youmi/android/cu;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/dy;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V

    iput-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/z;->c(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_0

    :sswitch_9
    :try_start_a
    new-instance v0, Lnet/youmi/android/dy;

    iget-object v1, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/youmi/android/cu;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/youmi/android/dy;-><init>(Landroid/content/Context;Lnet/youmi/android/cu;JJ)V

    iput-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/z;->b(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1f -> :sswitch_5
        0x20 -> :sswitch_0
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x2b -> :sswitch_8
        0x2c -> :sswitch_9
    .end sparse-switch
.end method

.method c(I)V
    .locals 11

    const/4 v10, 0x0

    const/16 v8, 0xff

    iget v0, p0, Lnet/youmi/android/fe;->f:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v4, 0x3c

    add-int v5, v1, v4

    if-ge v5, v8, :cond_0

    add-int v5, v1, v4

    :goto_0
    add-int v6, v2, v4

    if-ge v6, v8, :cond_1

    add-int v6, v2, v4

    :goto_1
    add-int v7, v3, v4

    if-ge v7, v8, :cond_2

    add-int v7, v3, v4

    :goto_2
    sub-int v8, v1, v4

    if-lez v8, :cond_3

    sub-int/2addr v1, v4

    :goto_3
    sub-int v8, v2, v4

    if-lez v8, :cond_4

    sub-int/2addr v2, v4

    :goto_4
    sub-int v8, v3, v4

    if-lez v8, :cond_5

    sub-int/2addr v3, v4

    :goto_5
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v9, v10

    const/4 v5, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v9, v5

    invoke-direct {v4, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v4}, Lnet/youmi/android/fe;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move v5, v8

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    :cond_3
    move v1, v10

    goto :goto_3

    :cond_4
    move v2, v10

    goto :goto_4

    :cond_5
    move v3, v10

    goto :goto_5
.end method

.method public e()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668,\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/fe;->e:Lnet/youmi/android/AdView;

    invoke-virtual {v0}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/youmi/android/a;->c:Z

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u5b58\u50a8\u5361\u4e0d\u53ef\u7528,\u8bf7\u542f\u7528\u5b58\u50a8\u5361"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/df;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/fe;->d:Lnet/youmi/android/df;

    invoke-virtual {v0}, Lnet/youmi/android/df;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/youmi/android/fe;->g:Landroid/app/Activity;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lnet/youmi/android/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/fe;->h:Lnet/youmi/android/dy;

    invoke-virtual {v0}, Lnet/youmi/android/dy;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
