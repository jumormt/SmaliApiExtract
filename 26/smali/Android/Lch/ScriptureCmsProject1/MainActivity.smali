.class public LAndroid/Lch/ScriptureCmsProject1/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;
    }
.end annotation


# instance fields
.field private FFlayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field adView:Landroid/widget/LinearLayout;

.field private adapter:LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;

.field private currentPage:I

.field private lastItem:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field loadingLayout:Landroid/widget/LinearLayout;

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->FFlayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->lastItem:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->currentPage:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->list:Ljava/util/List;

    .line 24
    return-void
.end method

.method private SplitList(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v5, "\n"

    .line 137
    const-string v2, "\\|\\@\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "strs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->list:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(LAndroid/Lch/ScriptureCmsProject1/MainActivity;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->lastItem:I

    return-void
.end method

.method static synthetic access$1(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->lastItem:I

    return v0
.end method

.method static synthetic access$2(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->adapter:LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;

    return-object v0
.end method

.method static synthetic access$3(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$4(LAndroid/Lch/ScriptureCmsProject1/MainActivity;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->currentPage:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 49
    const/high16 v8, 0x7f040000

    .line 48
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, LAndroid/Lch/ScriptureCmsProject1/FileCommon;->StreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "str":Ljava/lang/String;
    invoke-direct {p0, v5}, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->SplitList(Ljava/lang/String;)V

    .line 52
    const/high16 v7, 0x7f030000

    invoke-virtual {p0, v7}, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->setContentView(I)V

    .line 54
    const v7, 0x7f060003

    invoke-virtual {p0, v7}, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    .local v0, "adLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/adview/AdViewLayout;

    const-string v7, "SDK20111031320817goskybxqxnayg0r"

    invoke-direct {v1, p0, v7}, Lcom/adview/AdViewLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    .line 60
    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v2, "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 65
    const v7, 0x7f060002

    invoke-virtual {p0, v7}, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->listView:Landroid/widget/ListView;

    .line 67
    const-string v7, "test"

    const-string v8, "onCreate(Bundle savedInstanceState)>>>>>>>>>>>>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 75
    .local v4, "progressBar":Landroid/widget/ProgressBar;
    const/16 v7, 0xf

    invoke-virtual {v4, v9, v9, v7, v9}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 77
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v6, "textView":Landroid/widget/TextView;
    const-string v7, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->FFlayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 88
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v8, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 91
    new-instance v7, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;

    invoke-direct {v7, p0}, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;-><init>(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)V

    iput-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->adapter:LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;

    .line 92
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v8, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->adapter:LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v7, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v8, LAndroid/Lch/ScriptureCmsProject1/MainActivity$1;

    invoke-direct {v8, p0}, LAndroid/Lch/ScriptureCmsProject1/MainActivity$1;-><init>(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 134
    return-void
.end method
