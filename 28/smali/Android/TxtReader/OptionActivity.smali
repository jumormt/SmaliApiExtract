.class public LAndroid/TxtReader/OptionActivity;
.super Landroid/app/Activity;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAndroid/TxtReader/OptionActivity$ListItemClickListener;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_CHAR_ENCODING:I = 0x1

.field private static final LIST_ITEM_CLEAR_BOOKMARKS:I = 0x5

.field private static final LIST_ITEM_FILE_FILTER:I = 0x3

.field private static final LIST_ITEM_FONT_OPTION:I = 0x0

.field private static final LIST_ITEM_SAVE_BOOKMARK_AUTO:I = 0x4

.field private static final LIST_ITEM_SCREEN_MODE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(LAndroid/TxtReader/OptionActivity;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, LAndroid/TxtReader/OptionActivity;->showScreenModeSettingDialog()V

    return-void
.end method

.method static synthetic access$1(LAndroid/TxtReader/OptionActivity;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, LAndroid/TxtReader/OptionActivity;->showFileFilterSettingDialog()V

    return-void
.end method

.method static synthetic access$2(LAndroid/TxtReader/OptionActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, LAndroid/TxtReader/OptionActivity;->showAutoSaveBookmark()V

    return-void
.end method

.method private showAutoSaveBookmark()V
    .locals 5

    .prologue
    .line 112
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f04001f

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f040020

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 115
    const v4, 0x7f040021

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 116
    const v4, 0x7f040022

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    .local v2, "items":[Ljava/lang/String;
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getAutoSaveDelay()I

    move-result v3

    new-instance v4, LAndroid/TxtReader/OptionActivity$2;

    invoke-direct {v4, p0}, LAndroid/TxtReader/OptionActivity$2;-><init>(LAndroid/TxtReader/OptionActivity;)V

    .line 117
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method

.method private showFileFilterSettingDialog()V
    .locals 5

    .prologue
    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f04001c

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f04001e

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 97
    const v4, 0x7f04001d

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    .local v2, "items":[Ljava/lang/String;
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getFileFilter()I

    move-result v3

    new-instance v4, LAndroid/TxtReader/OptionActivity$1;

    invoke-direct {v4, p0}, LAndroid/TxtReader/OptionActivity$1;-><init>(LAndroid/TxtReader/OptionActivity;)V

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 108
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    return-void
.end method

.method private showScreenModeSettingDialog()V
    .locals 5

    .prologue
    .line 134
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, "alert":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f040011

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 136
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f040019

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 137
    const v4, 0x7f04001b

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 138
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 139
    .local v2, "items":[Ljava/lang/String;
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getScreenMode()I

    move-result v3

    new-instance v4, LAndroid/TxtReader/OptionActivity$3;

    invoke-direct {v4, p0}, LAndroid/TxtReader/OptionActivity$3;-><init>(LAndroid/TxtReader/OptionActivity;)V

    .line 139
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, LAndroid/TxtReader/OptionActivity;->setContentView(I)V

    .line 40
    const/4 v3, 0x6

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f04000f

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 41
    const v4, 0x7f040010

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 42
    const v4, 0x7f040011

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 43
    const v4, 0x7f040012

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    .line 44
    const v4, 0x7f040013

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 45
    const v4, 0x7f040014

    invoke-virtual {p0, v4}, LAndroid/TxtReader/OptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 46
    .local v1, "list":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 47
    const v3, 0x1090003

    .line 46
    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 48
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, LAndroid/TxtReader/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 49
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    new-instance v3, LAndroid/TxtReader/OptionActivity$ListItemClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LAndroid/TxtReader/OptionActivity$ListItemClickListener;-><init>(LAndroid/TxtReader/OptionActivity;LAndroid/TxtReader/OptionActivity$ListItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 158
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LAndroid/TxtReader/OptionActivity;->setResult(I)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
