.class public LAndroid/TxtReader/data/BookmarkList;
.super Ljava/lang/Object;
.source "BookmarkList.java"


# static fields
.field private static final BOOKMARKS_FILE:Ljava/lang/String; = "bookmarks"

.field public static final BOOKMARK_NOT_EXIST:I = -0x1

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBookmarks()V
    .locals 5

    .prologue
    .line 46
    sget-object v2, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    .line 48
    const-string v3, "bookmarks"

    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "config":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    .end local v0    # "config":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public loadBookmark(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p1, "ct"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v3, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    sget-object v3, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 31
    :cond_0
    sput-object p1, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    .line 33
    :cond_1
    sget-object v3, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    const-string v4, "bookmarks"

    .line 34
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "config":Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    .line 37
    .local v2, "yPos":I
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 42
    :goto_0
    return v2

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveBookmark(Ljava/lang/String;I)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 22
    sget-object v2, LAndroid/TxtReader/data/BookmarkList;->context:Landroid/content/Context;

    const-string v3, "bookmarks"

    .line 23
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "config":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 25
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method
