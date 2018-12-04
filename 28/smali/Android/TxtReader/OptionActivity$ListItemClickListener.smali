.class LAndroid/TxtReader/OptionActivity$ListItemClickListener;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/TxtReader/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/TxtReader/OptionActivity;


# direct methods
.method private constructor <init>(LAndroid/TxtReader/OptionActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LAndroid/TxtReader/OptionActivity;LAndroid/TxtReader/OptionActivity$ListItemClickListener;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, LAndroid/TxtReader/OptionActivity$ListItemClickListener;-><init>(LAndroid/TxtReader/OptionActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    const-class v3, LAndroid/TxtReader/FontOptionActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-virtual {v2, v1}, LAndroid/TxtReader/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    const-class v3, LAndroid/TxtReader/EncodeOptionActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-virtual {v2, v1}, LAndroid/TxtReader/OptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-static {v2}, LAndroid/TxtReader/OptionActivity;->access$0(LAndroid/TxtReader/OptionActivity;)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-static {v2}, LAndroid/TxtReader/OptionActivity;->access$1(LAndroid/TxtReader/OptionActivity;)V

    goto :goto_0

    .line 78
    :pswitch_4
    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-static {v2}, LAndroid/TxtReader/OptionActivity;->access$2(LAndroid/TxtReader/OptionActivity;)V

    goto :goto_0

    .line 81
    :pswitch_5
    invoke-static {}, LAndroid/TxtReader/data/BookmarkList;->clearBookmarks()V

    .line 82
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, LAndroid/TxtReader/OptionActivity$ListItemClickListener;->this$0:LAndroid/TxtReader/OptionActivity;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "dialog":Landroid/app/Dialog;
    const v2, 0x7f040015

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
