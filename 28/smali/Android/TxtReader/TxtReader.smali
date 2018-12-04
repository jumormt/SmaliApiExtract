.class public LAndroid/TxtReader/TxtReader;
.super LAndroid/TxtReader/AbstractActivity;
.source "TxtReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAndroid/TxtReader/TxtReader$SaveBookmarkTask;
    }
.end annotation


# static fields
.field private static final RESULT_FILENAME:I = 0x64

.field private static final RESULT_OPTION:I = 0x65

.field private static final VERSION:D = 1.03


# instance fields
.field private autosave:Z

.field private config:LAndroid/TxtReader/data/ConfigData;

.field private delay:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "b5dd3dd795ae459b"

    const-string v1, "b06af4e725afd5df"

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, LAndroid/TxtReader/AbstractActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, LAndroid/TxtReader/TxtReader;->autosave:Z

    .line 36
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, LAndroid/TxtReader/TxtReader;->delay:J

    .line 27
    return-void
.end method

.method private InitTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v0}, LAndroid/TxtReader/data/ConfigData;->getAutoSaveDelay()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    iput-boolean v1, p0, LAndroid/TxtReader/TxtReader;->autosave:Z

    .line 196
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, LAndroid/TxtReader/TxtReader;->delay:J

    .line 197
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->restartTimer()V

    .line 200
    :goto_0
    return-void

    .line 185
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LAndroid/TxtReader/TxtReader;->autosave:Z

    .line 186
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->stopTimer()V

    goto :goto_0

    .line 189
    :pswitch_2
    iput-boolean v1, p0, LAndroid/TxtReader/TxtReader;->autosave:Z

    .line 190
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, LAndroid/TxtReader/TxtReader;->delay:J

    .line 191
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->restartTimer()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(LAndroid/TxtReader/TxtReader;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->saveBookmark()V

    return-void
.end method

.method private loadBookmark()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, LAndroid/TxtReader/data/BookmarkList;

    invoke-direct {v0}, LAndroid/TxtReader/data/BookmarkList;-><init>()V

    .line 73
    .local v0, "bookmarks":LAndroid/TxtReader/data/BookmarkList;
    iget-object v3, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, LAndroid/TxtReader/data/BookmarkList;->loadBookmark(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "y":I
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 75
    .local v1, "scroll":Landroid/widget/ScrollView;
    new-instance v3, LAndroid/TxtReader/TxtReader$1;

    invoke-direct {v3, p0, v2, v1}, LAndroid/TxtReader/TxtReader$1;-><init>(LAndroid/TxtReader/TxtReader;ILandroid/widget/ScrollView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method private readTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 209
    :cond_0
    const/high16 v7, 0x7f040000

    invoke-virtual {p0, v7}, LAndroid/TxtReader/TxtReader;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    :goto_0
    return-object v7

    .line 211
    :cond_1
    const/4 v1, 0x0

    .line 213
    .local v1, "context":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 215
    .local v5, "fileSize":I
    new-array v0, v5, [B

    .line 216
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 217
    new-instance v2, Ljava/lang/String;

    iget-object v7, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v7}, LAndroid/TxtReader/data/ConfigData;->getEncode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v1    # "context":Ljava/lang/String;
    .local v2, "context":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .end local v0    # "buffer":[B
    .end local v2    # "context":Ljava/lang/String;
    .end local v5    # "fileSize":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "context":Ljava/lang/String;
    :goto_1
    move-object v7, v1

    .line 225
    goto :goto_0

    .line 219
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 220
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const v7, 0x7f040001

    invoke-virtual {p0, v7}, LAndroid/TxtReader/TxtReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 221
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 223
    .local v4, "e2":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v1    # "context":Ljava/lang/String;
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "context":Ljava/lang/String;
    .restart local v5    # "fileSize":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v1, v2

    .end local v2    # "context":Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    goto :goto_3

    .line 219
    .end local v1    # "context":Ljava/lang/String;
    .restart local v2    # "context":Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v3, v7

    move-object v1, v2

    .end local v2    # "context":Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    goto :goto_2
.end method

.method private restartTimer()V
    .locals 4

    .prologue
    .line 269
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->stopTimer()V

    .line 270
    iget-boolean v0, p0, LAndroid/TxtReader/TxtReader;->autosave:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, LAndroid/TxtReader/TxtReader;->timer:Ljava/util/Timer;

    .line 272
    iget-object v0, p0, LAndroid/TxtReader/TxtReader;->timer:Ljava/util/Timer;

    new-instance v1, LAndroid/TxtReader/TxtReader$SaveBookmarkTask;

    invoke-direct {v1, p0}, LAndroid/TxtReader/TxtReader$SaveBookmarkTask;-><init>(LAndroid/TxtReader/TxtReader;)V

    iget-wide v2, p0, LAndroid/TxtReader/TxtReader;->delay:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 274
    :cond_0
    return-void
.end method

.method private saveBookmark()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, LAndroid/TxtReader/data/BookmarkList;

    invoke-direct {v0}, LAndroid/TxtReader/data/BookmarkList;-><init>()V

    .line 230
    .local v0, "bookmarks":LAndroid/TxtReader/data/BookmarkList;
    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 231
    .local v1, "txt":Landroid/widget/ScrollView;
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 232
    .local v2, "y":I
    iget-object v3, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v3}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, LAndroid/TxtReader/data/BookmarkList;->saveBookmark(Ljava/lang/String;I)V

    .line 235
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, LAndroid/TxtReader/TxtReader;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, LAndroid/TxtReader/TxtReader;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, LAndroid/TxtReader/TxtReader;->timer:Ljava/util/Timer;

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const v6, 0x7f050010

    .line 144
    invoke-super {p0, p1, p2, p3}, LAndroid/TxtReader/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 146
    if-ne p2, v7, :cond_0

    .line 147
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "path"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "filename":Ljava/lang/String;
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    invoke-virtual {p0, v6}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 151
    .local v4, "view":Landroid/widget/TextView;
    invoke-direct {p0, v3}, LAndroid/TxtReader/TxtReader;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5, v3}, LAndroid/TxtReader/data/ConfigData;->setLastFile(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->loadBookmark()V

    .line 177
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/16 v5, 0x65

    if-ne p1, v5, :cond_0

    .line 157
    if-ne p2, v7, :cond_0

    .line 158
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->isScreenModeChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {p0}, LAndroid/TxtReader/TxtReader;->refreshOrientation()V

    .line 161
    :cond_2
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->isFontSizeChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    invoke-virtual {p0, v6}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "field":Landroid/widget/TextView;
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->getFontSize()F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    .end local v2    # "field":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->isEncodeChanged()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    invoke-virtual {p0, v6}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 167
    .restart local v4    # "view":Landroid/widget/TextView;
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, LAndroid/TxtReader/TxtReader;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->loadBookmark()V

    .line 171
    .end local v1    # "context":Ljava/lang/String;
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_4
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->isAutoSaveChanged()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->InitTimer()V

    .line 174
    :cond_5
    iget-object v5, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v5}, LAndroid/TxtReader/data/ConfigData;->clearChanged()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->saveConfigFile()V

    .line 241
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->saveBookmark()V

    .line 242
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->stopTimer()V

    .line 243
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 244
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, LAndroid/TxtReader/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v1, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    if-nez v1, :cond_0

    .line 53
    invoke-static {p0}, LAndroid/TxtReader/data/ConfigData;->loadConfigData(Landroid/content/Context;)V

    .line 54
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v1

    iput-object v1, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    .line 57
    :cond_0
    invoke-virtual {p0}, LAndroid/TxtReader/TxtReader;->refreshOrientation()V

    .line 58
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, LAndroid/TxtReader/TxtReader;->setContentView(I)V

    .line 60
    const v1, 0x7f050010

    invoke-virtual {p0, v1}, LAndroid/TxtReader/TxtReader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v1}, LAndroid/TxtReader/data/ConfigData;->getFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    iget-object v1, p0, LAndroid/TxtReader/TxtReader;->config:LAndroid/TxtReader/data/ConfigData;

    invoke-virtual {v1}, LAndroid/TxtReader/data/ConfigData;->getLastFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LAndroid/TxtReader/TxtReader;->readTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->loadBookmark()V

    .line 65
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->InitTimer()V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, LAndroid/TxtReader/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    const v1, 0x7f040003

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 97
    const v1, 0x7f040004

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 98
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 99
    const/4 v1, 0x2

    const v2, 0x7f040005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    const/4 v1, 0x3

    const v2, 0x7f040006

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 251
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->restartTimer()V

    .line 252
    invoke-super {p0, p1, p2}, LAndroid/TxtReader/AbstractActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 108
    invoke-super {p0, p1}, LAndroid/TxtReader/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v2, v3

    .line 133
    :goto_1
    return v2

    .line 112
    :pswitch_0
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->saveBookmark()V

    .line 113
    const-class v2, LAndroid/TxtReader/OpenFileActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, LAndroid/TxtReader/TxtReader;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v5

    .line 115
    goto :goto_1

    .line 117
    :pswitch_1
    const-class v2, LAndroid/TxtReader/OptionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, LAndroid/TxtReader/TxtReader;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v5

    .line 119
    goto :goto_1

    .line 121
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    const v3, 0x7f040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 123
    const v3, 0x7f040007

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 124
    const v3, 0x7f040008

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, "dlg":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v2, v5

    .line 127
    goto :goto_1

    .line 129
    .end local v0    # "dlg":Landroid/app/Dialog;
    :pswitch_3
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->saveConfigFile()V

    .line 130
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->saveBookmark()V

    .line 131
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    invoke-direct {p0}, LAndroid/TxtReader/TxtReader;->restartTimer()V

    .line 282
    invoke-super {p0, p1}, LAndroid/TxtReader/AbstractActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
