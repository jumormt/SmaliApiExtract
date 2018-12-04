.class public LAndroid/TxtReader/EncodeOptionActivity;
.super Landroid/app/Activity;
.source "EncodeOptionActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final PREDIFINE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private laseEncode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAndroid/TxtReader/EncodeOptionActivity;->PREDIFINE_MAP:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, LAndroid/TxtReader/EncodeOptionActivity;->laseEncode:Ljava/lang/String;

    .line 38
    sget-object v0, LAndroid/TxtReader/EncodeOptionActivity;->PREDIFINE_MAP:Ljava/util/Map;

    const-string v1, "UNICODE"

    const v2, 0x7f050002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, LAndroid/TxtReader/EncodeOptionActivity;->PREDIFINE_MAP:Ljava/util/Map;

    const-string v1, "UTF-8"

    const v2, 0x7f050003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, LAndroid/TxtReader/EncodeOptionActivity;->PREDIFINE_MAP:Ljava/util/Map;

    const-string v1, "GBK"

    const v2, 0x7f050004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private getPreEncodeId(Ljava/lang/String;)I
    .locals 3
    .param p1, "encode"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v1, LAndroid/TxtReader/EncodeOptionActivity;->PREDIFINE_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 78
    const/4 v1, -0x1

    .line 80
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const v2, 0x7f050007

    invoke-virtual {p0, v2}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 87
    .local v0, "edit":Landroid/widget/EditText;
    const v2, 0x7f050005

    if-ne p2, v2, :cond_0

    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 90
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 95
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, LAndroid/TxtReader/EncodeOptionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 96
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, LAndroid/TxtReader/EncodeOptionActivity;->setContentView(I)V

    .line 53
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v0

    .line 55
    .local v0, "data":LAndroid/TxtReader/data/ConfigData;
    const v5, 0x7f050007

    invoke-virtual {p0, v5}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 56
    .local v1, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, LAndroid/TxtReader/data/ConfigData;->getCustomEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 59
    .local v3, "group":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, LAndroid/TxtReader/data/ConfigData;->getEncode()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "encode":Ljava/lang/String;
    iput-object v2, p0, LAndroid/TxtReader/EncodeOptionActivity;->laseEncode:Ljava/lang/String;

    .line 61
    invoke-direct {p0, v2}, LAndroid/TxtReader/EncodeOptionActivity;->getPreEncodeId(Ljava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "id":I
    if-ltz v4, :cond_0

    .line 63
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 72
    :goto_0
    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 73
    return-void

    .line 65
    :cond_0
    const v5, 0x7f050005

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 66
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 67
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 68
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 69
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 70
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 106
    :pswitch_0
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v0

    .line 107
    .local v0, "data":LAndroid/TxtReader/data/ConfigData;
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 108
    .local v2, "group":Landroid/widget/RadioGroup;
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 109
    .local v3, "id":I
    const v4, 0x7f050005

    if-ne v3, v4, :cond_1

    .line 110
    const v4, 0x7f050007

    invoke-virtual {p0, v4}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 111
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "encode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v4, p0, LAndroid/TxtReader/EncodeOptionActivity;->laseEncode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    invoke-virtual {v0, v1}, LAndroid/TxtReader/data/ConfigData;->setEncode(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, LAndroid/TxtReader/data/ConfigData;->setCustomEncode(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v1    # "encode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, LAndroid/TxtReader/EncodeOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 119
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "encode":Ljava/lang/String;
    iget-object v4, p0, LAndroid/TxtReader/EncodeOptionActivity;->laseEncode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-virtual {v0, v1}, LAndroid/TxtReader/data/ConfigData;->setEncode(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
