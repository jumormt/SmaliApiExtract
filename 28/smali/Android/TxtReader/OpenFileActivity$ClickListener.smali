.class LAndroid/TxtReader/OpenFileActivity$ClickListener;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/TxtReader/OpenFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/TxtReader/OpenFileActivity;


# direct methods
.method private constructor <init>(LAndroid/TxtReader/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LAndroid/TxtReader/OpenFileActivity;LAndroid/TxtReader/OpenFileActivity$ClickListener;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, LAndroid/TxtReader/OpenFileActivity$ClickListener;-><init>(LAndroid/TxtReader/OpenFileActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    const-string v2, ""

    .line 116
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3}, LAndroid/TxtReader/OpenFileActivity;->access$0(LAndroid/TxtReader/OpenFileActivity;)I

    move-result v3

    if-lez v3, :cond_0

    if-nez p3, :cond_0

    .line 117
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3}, LAndroid/TxtReader/OpenFileActivity;->access$0(LAndroid/TxtReader/OpenFileActivity;)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, LAndroid/TxtReader/OpenFileActivity;->access$1(LAndroid/TxtReader/OpenFileActivity;I)V

    .line 118
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3}, LAndroid/TxtReader/OpenFileActivity;->access$2(LAndroid/TxtReader/OpenFileActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v4}, LAndroid/TxtReader/OpenFileActivity;->access$2(LAndroid/TxtReader/OpenFileActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3, v2}, LAndroid/TxtReader/OpenFileActivity;->access$3(LAndroid/TxtReader/OpenFileActivity;Ljava/lang/String;)V

    .line 137
    :goto_1
    return-void

    .line 121
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3}, LAndroid/TxtReader/OpenFileActivity;->access$0(LAndroid/TxtReader/OpenFileActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, LAndroid/TxtReader/OpenFileActivity;->access$1(LAndroid/TxtReader/OpenFileActivity;I)V

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-static {v3}, LAndroid/TxtReader/OpenFileActivity;->access$2(LAndroid/TxtReader/OpenFileActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    check-cast p2, Landroid/widget/LinearLayout;

    .line 124
    .end local p2    # "view":Landroid/view/View;
    const v3, 0x7f050009

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 123
    check-cast v3, Landroid/widget/TextView;

    .line 124
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "path"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, LAndroid/TxtReader/OpenFileActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v3, p0, LAndroid/TxtReader/OpenFileActivity$ClickListener;->this$0:LAndroid/TxtReader/OpenFileActivity;

    invoke-virtual {v3}, LAndroid/TxtReader/OpenFileActivity;->finish()V

    goto :goto_1
.end method
