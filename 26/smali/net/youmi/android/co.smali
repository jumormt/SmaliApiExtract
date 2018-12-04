.class Lnet/youmi/android/co;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lnet/youmi/android/ca;

.field c:Z

.field d:Z

.field e:Lnet/youmi/android/fa;

.field f:Lnet/youmi/android/do;

.field g:Ljava/util/ArrayList;

.field h:Ljava/util/ArrayList;

.field i:Landroid/widget/ExpandableListView;

.field j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ca;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lnet/youmi/android/co;->c:Z

    iput-boolean v0, p0, Lnet/youmi/android/co;->d:Z

    new-instance v0, Lnet/youmi/android/ac;

    invoke-direct {v0, p0}, Lnet/youmi/android/ac;-><init>(Lnet/youmi/android/co;)V

    iput-object v0, p0, Lnet/youmi/android/co;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lnet/youmi/android/co;->a:Landroid/app/Activity;

    iput-object p2, p0, Lnet/youmi/android/co;->b:Lnet/youmi/android/ca;

    invoke-static {}, Lnet/youmi/android/r;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/co;->h:Ljava/util/ArrayList;

    invoke-static {}, Lnet/youmi/android/r;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/co;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/youmi/android/co;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-static {}, Lnet/youmi/android/r;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/co;->h:Ljava/util/ArrayList;

    invoke-static {}, Lnet/youmi/android/r;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/co;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lnet/youmi/android/co;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/co;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->e(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/co;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/co;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/youmi/android/r;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 9

    const/4 v8, -0x1

    new-instance v0, Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lnet/youmi/android/co;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/co;->i:Landroid/widget/ExpandableListView;

    new-instance v0, Lnet/youmi/android/do;

    iget-object v2, p0, Lnet/youmi/android/co;->a:Landroid/app/Activity;

    iget-object v4, p0, Lnet/youmi/android/co;->b:Lnet/youmi/android/ca;

    iget-object v5, p0, Lnet/youmi/android/co;->i:Landroid/widget/ExpandableListView;

    iget-object v6, p0, Lnet/youmi/android/co;->h:Ljava/util/ArrayList;

    iget-object v7, p0, Lnet/youmi/android/co;->g:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lnet/youmi/android/do;-><init>(Lnet/youmi/android/co;Landroid/app/Activity;Lnet/youmi/android/co;Lnet/youmi/android/ca;Landroid/widget/ExpandableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lnet/youmi/android/co;->f:Lnet/youmi/android/do;

    iget-object v0, p0, Lnet/youmi/android/co;->i:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lnet/youmi/android/co;->f:Lnet/youmi/android/do;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lnet/youmi/android/co;->i:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/co;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Lnet/youmi/android/fa;

    new-instance v1, Lnet/youmi/android/ad;

    invoke-direct {v1, p0}, Lnet/youmi/android/ad;-><init>(Lnet/youmi/android/co;)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/fa;-><init>(Lnet/youmi/android/aa;I)V

    iput-object v0, p0, Lnet/youmi/android/co;->e:Lnet/youmi/android/fa;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/co;->e:Lnet/youmi/android/fa;

    invoke-virtual {v0}, Lnet/youmi/android/fa;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/co;->e:Lnet/youmi/android/fa;

    invoke-virtual {v0}, Lnet/youmi/android/fa;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/co;->e:Lnet/youmi/android/fa;

    invoke-virtual {v0}, Lnet/youmi/android/fa;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
