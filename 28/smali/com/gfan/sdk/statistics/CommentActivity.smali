.class public Lcom/gfan/sdk/statistics/CommentActivity;
.super Landroid/app/Activity;
.source "CommentActivity.java"


# static fields
.field private static final COMMENT:I = 0x1

.field private static final LOGIN_OVER:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Lcom/gfan/sdk/statistics/CommentActivity$1;

    invoke-direct {v0, p0}, Lcom/gfan/sdk/statistics/CommentActivity$1;-><init>(Lcom/gfan/sdk/statistics/CommentActivity;)V

    iput-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity;->mHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/gfan/sdk/statistics/CommentActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/gfan/sdk/statistics/CommentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gfan/sdk/statistics/CommentActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/gfan/sdk/statistics/CommentActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private newContentView()Landroid/view/View;
    .locals 14

    .prologue
    .line 35
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v8, "rootLayout":Landroid/widget/RelativeLayout;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    .line 37
    const/4 v11, -0x1

    .line 36
    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v9, "rootParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 41
    .local v7, "inputComment":Landroid/widget/EditText;
    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setId(I)V

    .line 42
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    const/4 v10, -0x1

    const/4 v11, -0x2

    .line 42
    invoke-direct {v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v6, "commentParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xa

    const/4 v11, 0x5

    const/16 v12, 0xa

    const/4 v13, 0x5

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 48
    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "buttonArea":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    .line 51
    const/4 v11, -0x2

    .line 50
    invoke-direct {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "areaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xa

    const/4 v11, 0x5

    const/16 v12, 0xa

    const/4 v13, 0x5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    const/4 v10, 0x3

    const/4 v11, 0x6

    invoke-virtual {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 57
    .local v4, "comfirmButton":Landroid/widget/Button;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    const/4 v10, -0x2

    const/4 v11, -0x2

    .line 57
    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v5, "comfirmParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 60
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v10, 0x7

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setId(I)V

    .line 62
    const-string v10, "\u786e\u5b9a"

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v10, Lcom/gfan/sdk/statistics/CommentActivity$2;

    invoke-direct {v10, p0, v7}, Lcom/gfan/sdk/statistics/CommentActivity$2;-><init>(Lcom/gfan/sdk/statistics/CommentActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, "cancelButton":Landroid/widget/Button;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    const/4 v10, -0x2

    const/4 v11, -0x2

    .line 97
    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v3, "cancelParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setId(I)V

    .line 102
    const-string v10, "\u53d6\u6d88"

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v10, Lcom/gfan/sdk/statistics/CommentActivity$3;

    invoke-direct {v10, p0}, Lcom/gfan/sdk/statistics/CommentActivity$3;-><init>(Lcom/gfan/sdk/statistics/CommentActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 115
    return-object v8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/gfan/sdk/statistics/CommentActivity;->newContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gfan/sdk/statistics/CommentActivity;->setContentView(Landroid/view/View;)V

    .line 31
    const-string v0, "\u7559\u8a00"

    invoke-virtual {p0, v0}, Lcom/gfan/sdk/statistics/CommentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->onPause(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    invoke-static {p0}, Lcom/gfan/sdk/statistics/Collector;->onResume(Landroid/content/Context;)V

    .line 149
    return-void
.end method
