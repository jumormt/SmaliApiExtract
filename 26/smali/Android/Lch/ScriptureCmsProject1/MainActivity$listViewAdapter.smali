.class LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/Lch/ScriptureCmsProject1/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "listViewAdapter"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:LAndroid/Lch/ScriptureCmsProject1/MainActivity;


# direct methods
.method constructor <init>(LAndroid/Lch/ScriptureCmsProject1/MainActivity;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;->this$0:LAndroid/Lch/ScriptureCmsProject1/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView>>>pos:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;->this$0:LAndroid/Lch/ScriptureCmsProject1/MainActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "view":Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;->this$0:LAndroid/Lch/ScriptureCmsProject1/MainActivity;

    iget-object v2, v2, LAndroid/Lch/ScriptureCmsProject1/MainActivity;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    const v2, -0x6bbefb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    return-object v1

    .line 165
    .end local v1    # "view":Landroid/widget/TextView;
    .restart local p0    # "this":LAndroid/Lch/ScriptureCmsProject1/MainActivity$listViewAdapter;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .restart local v1    # "view":Landroid/widget/TextView;
    goto :goto_0
.end method
