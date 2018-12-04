.class public LAndroid/TxtReader/FontOptionActivity;
.super Landroid/app/Activity;
.source "FontOptionActivity.java"


# instance fields
.field private lastFontSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, LAndroid/TxtReader/FontOptionActivity;->setContentView(I)V

    .line 27
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, LAndroid/TxtReader/FontOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 28
    .local v0, "edit":Landroid/widget/EditText;
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v1

    invoke-virtual {v1}, LAndroid/TxtReader/data/ConfigData;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, LAndroid/TxtReader/FontOptionActivity;->lastFontSize:I

    .line 29
    iget v1, p0, LAndroid/TxtReader/FontOptionActivity;->lastFontSize:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 38
    :pswitch_0
    const v3, 0x7f05000c

    invoke-virtual {p0, v3}, LAndroid/TxtReader/FontOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 39
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "newSize":Ljava/lang/String;
    iget v3, p0, LAndroid/TxtReader/FontOptionActivity;->lastFontSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 42
    .local v2, "size":F
    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 43
    const/high16 v2, 0x42480000    # 50.0f

    .line 47
    :cond_1
    :goto_1
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v3

    invoke-virtual {v3, v2}, LAndroid/TxtReader/data/ConfigData;->setFontSize(F)V

    goto :goto_0

    .line 44
    :cond_2
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 45
    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
