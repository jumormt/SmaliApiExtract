.class LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAndroid/Lch/ScriptureCmsProject2/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;


# direct methods
.method constructor <init>(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const-string v3, "test"

    .line 100
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scroll>>>first: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string v1, ", visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    add-int v1, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$0(LAndroid/Lch/ScriptureCmsProject2/MainActivity;I)V

    .line 106
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scroll>>>lastItem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$1(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$2(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;

    move-result-object v0

    iget v0, v0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;->count:I

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    iget-object v1, v1, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 110
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 111
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$2(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;

    move-result-object v0

    iget v1, v0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;->count:I

    .line 112
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$2(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity$listViewAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    iget-object v0, v0, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$1(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$1(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$3(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 121
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$1(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$4(LAndroid/Lch/ScriptureCmsProject2/MainActivity;I)V

    .line 122
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$3(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    iget-object v0, v0, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    iget-object v1, v1, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-virtual {v0}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7b2c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LAndroid/Lch/ScriptureCmsProject2/MainActivity$1;->this$0:LAndroid/Lch/ScriptureCmsProject2/MainActivity;

    invoke-static {v2}, LAndroid/Lch/ScriptureCmsProject2/MainActivity;->access$3(LAndroid/Lch/ScriptureCmsProject2/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9875"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 124
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 132
    return-void
.end method
