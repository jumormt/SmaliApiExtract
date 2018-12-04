.class LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;
.super Ljava/lang/Object;
.source "FileLister.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/TxtReader/Tools/FileLister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtNameFilter"
.end annotation


# instance fields
.field private extName:Ljava/lang/String;

.field final synthetic this$0:LAndroid/TxtReader/Tools/FileLister;


# direct methods
.method public constructor <init>(LAndroid/TxtReader/Tools/FileLister;Ljava/lang/String;)V
    .locals 0
    .param p2, "extName"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;->this$0:LAndroid/TxtReader/Tools/FileLister;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;->extName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const/4 v3, 0x1

    .line 140
    :goto_0
    return v3

    .line 135
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 136
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 137
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ext":Ljava/lang/String;
    iget-object v3, p0, LAndroid/TxtReader/Tools/FileLister$ExtNameFilter;->extName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
