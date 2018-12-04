.class public LAndroid/TxtReader/AbstractActivity;
.super Landroid/app/Activity;
.source "AbstractActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v1

    invoke-virtual {v1}, LAndroid/TxtReader/data/ConfigData;->getScreenMode()I

    move-result v0

    .line 21
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 29
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LAndroid/TxtReader/AbstractActivity;->setRequestedOrientation(I)V

    .line 32
    :goto_0
    return-void

    .line 23
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LAndroid/TxtReader/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 26
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LAndroid/TxtReader/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
