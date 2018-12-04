.class public LAndroid/TxtReader/OpenFileActivity;
.super Landroid/app/Activity;
.source "OpenFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAndroid/TxtReader/OpenFileActivity$ClickListener;
    }
.end annotation


# instance fields
.field private parentPath:Ljava/lang/String;

.field private recursion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    .line 29
    return-void
.end method

.method static synthetic access$0(LAndroid/TxtReader/OpenFileActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    return v0
.end method

.method static synthetic access$1(LAndroid/TxtReader/OpenFileActivity;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    return-void
.end method

.method static synthetic access$2(LAndroid/TxtReader/OpenFileActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(LAndroid/TxtReader/OpenFileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, LAndroid/TxtReader/OpenFileActivity;->viewFileList(Ljava/lang/String;)V

    return-void
.end method

.method private getItemList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 79
    .local v3, "start":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget v5, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    if-eqz v5, :cond_0

    .line 81
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v4, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "image"

    const v6, 0x7f020002

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v5, "filename"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 88
    .end local v4    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move v1, v3

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 104
    return-object v0

    .line 89
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 90
    .restart local v4    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    const-string v5, "image"

    const v6, 0x7f020001

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_1
    const-string v5, "filename"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    const-string v5, "image"

    const/high16 v6, 0x7f020000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_3
    const-string v5, "image"

    const v6, 0x7f020004

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private viewFileList(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    .line 144
    iput-object p1, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, "err":Z
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 147
    .local v10, "txtView":Landroid/widget/TextView;
    new-instance v9, LAndroid/TxtReader/Tools/FileLister;

    invoke-direct {v9, p1}, LAndroid/TxtReader/Tools/FileLister;-><init>(Ljava/lang/String;)V

    .line 148
    .local v9, "lister":LAndroid/TxtReader/Tools/FileLister;
    invoke-virtual {v9}, LAndroid/TxtReader/Tools/FileLister;->getList()Ljava/util/ArrayList;

    move-result-object v7

    .line 149
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 150
    const/4 v6, 0x1

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget v1, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    if-lez v1, :cond_1

    .line 154
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    :cond_1
    invoke-direct {p0, v7}, LAndroid/TxtReader/OpenFileActivity;->getItemList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 158
    const v3, 0x7f030001

    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "filename"

    aput-object v5, v4, v1

    .line 159
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 157
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 160
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 161
    .local v8, "listView":Landroid/widget/ListView;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    new-instance v1, LAndroid/TxtReader/OpenFileActivity$ClickListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, LAndroid/TxtReader/OpenFileActivity$ClickListener;-><init>(LAndroid/TxtReader/OpenFileActivity;LAndroid/TxtReader/OpenFileActivity$ClickListener;)V

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    if-eqz v6, :cond_2

    .line 164
    const v1, 0x7f04000c

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_2
    const v1, 0x7f04000a

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 159
    nop

    :array_0
    .array-data 4
        0x7f050008
        0x7f050009
    .end array-data
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 180
    if-ne v1, p2, :cond_0

    .line 181
    invoke-virtual {p0, v1, p3}, LAndroid/TxtReader/OpenFileActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, LAndroid/TxtReader/OpenFileActivity;->finish()V

    .line 185
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget v1, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    if-lez v1, :cond_0

    .line 191
    iget v1, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    sub-int/2addr v1, v4

    iput v1, p0, LAndroid/TxtReader/OpenFileActivity;->recursion:I

    .line 192
    iget-object v1, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    iget-object v2, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-direct {p0, v0}, LAndroid/TxtReader/OpenFileActivity;->viewFileList(Ljava/lang/String;)V

    .line 198
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, LAndroid/TxtReader/OpenFileActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 41
    .local v13, "txtView":Landroid/widget/TextView;
    invoke-virtual {p0}, LAndroid/TxtReader/OpenFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 42
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 43
    .local v6, "bundle":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 45
    .local v12, "parent":Ljava/lang/String;
    :try_start_0
    const-string v1, "path"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 49
    :goto_0
    if-eqz v12, :cond_0

    .line 50
    iput-object v12, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    .line 53
    :cond_0
    new-instance v8, LAndroid/TxtReader/Tools/FileLister;

    iget-object v1, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    invoke-direct {v8, v1}, LAndroid/TxtReader/Tools/FileLister;-><init>(Ljava/lang/String;)V

    .line 54
    .local v8, "fileList":LAndroid/TxtReader/Tools/FileLister;
    invoke-virtual {v8}, LAndroid/TxtReader/Tools/FileLister;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LAndroid/TxtReader/OpenFileActivity;->parentPath:Ljava/lang/String;

    .line 55
    invoke-virtual {v8}, LAndroid/TxtReader/Tools/FileLister;->getList()Ljava/util/ArrayList;

    move-result-object v10

    .line 57
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v10, :cond_1

    .line 58
    const v1, 0x7f04000c

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_1
    return-void

    .line 46
    .end local v8    # "fileList":LAndroid/TxtReader/Tools/FileLister;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 47
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "OpenFileActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "fileList":LAndroid/TxtReader/Tools/FileLister;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-direct {p0, v10}, LAndroid/TxtReader/OpenFileActivity;->getItemList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 61
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 62
    const v3, 0x7f030001

    .line 63
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "filename"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 61
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 65
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, LAndroid/TxtReader/OpenFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 66
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v1, LAndroid/TxtReader/OpenFileActivity$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LAndroid/TxtReader/OpenFileActivity$ClickListener;-><init>(LAndroid/TxtReader/OpenFileActivity;LAndroid/TxtReader/OpenFileActivity$ClickListener;)V

    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    const v1, 0x7f04000a

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 70
    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v11    # "listView":Landroid/widget/ListView;
    :cond_2
    const v1, 0x7f04000b

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 63
    :array_0
    .array-data 4
        0x7f050008
        0x7f050009
    .end array-data
.end method
