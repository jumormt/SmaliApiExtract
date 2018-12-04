.class public LAndroid/TxtReader/Tools/FileLister;
.super Ljava/lang/Object;
.source "FileLister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;
    }
.end annotation


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "/sdcard/"

    iput-object v0, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iput-object p1, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    .line 36
    :cond_0
    return-void
.end method

.method private getFileList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "all"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 99
    invoke-direct {p0, v1}, LAndroid/TxtReader/Tools/FileLister;->sortList(Ljava/util/ArrayList;)V

    .line 100
    return-object v1

    .line 95
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 3

    .prologue
    .line 104
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v2

    invoke-virtual {v2}, LAndroid/TxtReader/data/ConfigData;->getFileFilter()I

    move-result v1

    .line 105
    .local v1, "setting":I
    const/4 v0, 0x0

    .line 106
    .local v0, "filter":Ljava/io/FilenameFilter;
    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    new-instance v0, LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;

    .end local v0    # "filter":Ljava/io/FilenameFilter;
    const-string v2, ".txt"

    invoke-direct {v0, p0, v2}, LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;-><init>(LAndroid/TxtReader/Tools/FileLister;Ljava/lang/String;)V

    .line 109
    .restart local v0    # "filter":Ljava/io/FilenameFilter;
    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getFolderList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "all"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 74
    invoke-direct {p0, v1}, LAndroid/TxtReader/Tools/FileLister;->sortList(Ljava/util/ArrayList;)V

    .line 75
    return-object v1

    .line 70
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sortList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, LAndroid/TxtReader/Tools/FileLister$1;

    invoke-direct {v0, p0}, LAndroid/TxtReader/Tools/FileLister$1;-><init>(LAndroid/TxtReader/Tools/FileLister;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public getFileList()[Ljava/io/File;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 44
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "dir":Ljava/io/File;
    invoke-direct {p0}, LAndroid/TxtReader/Tools/FileLister;->getFilenameFilter()Ljava/io/FilenameFilter;

    move-result-object v4

    .line 46
    .local v4, "filter":Ljava/io/FilenameFilter;
    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 47
    .local v1, "all":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_0
    if-nez v1, :cond_1

    .line 64
    .end local p0    # "this":LAndroid/TxtReader/Tools/FileLister;
    :goto_1
    return-object v8

    .line 50
    .restart local p0    # "this":LAndroid/TxtReader/Tools/FileLister;
    :cond_0
    invoke-virtual {v2, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, LAndroid/TxtReader/Tools/FileLister;->getFolderList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 57
    .local v5, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_2

    .line 60
    invoke-direct {p0, v1}, LAndroid/TxtReader/Tools/FileLister;->getFileList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .end local p0    # "this":LAndroid/TxtReader/Tools/FileLister;
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_3

    move-object v8, v7

    .line 64
    goto :goto_1

    .line 58
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":LAndroid/TxtReader/Tools/FileLister;
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 62
    .end local p0    # "this":LAndroid/TxtReader/Tools/FileLister;
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, LAndroid/TxtReader/Tools/FileLister;->path:Ljava/lang/String;

    return-object v0
.end method
