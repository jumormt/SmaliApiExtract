.class LAndroid/TxtReader/OptionActivity$2;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAndroid/TxtReader/OptionActivity;->showAutoSaveBookmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/TxtReader/OptionActivity;


# direct methods
.method constructor <init>(LAndroid/TxtReader/OptionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, LAndroid/TxtReader/OptionActivity$2;->this$0:LAndroid/TxtReader/OptionActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 121
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->getInstance()LAndroid/TxtReader/data/ConfigData;

    move-result-object v0

    invoke-virtual {v0, p2}, LAndroid/TxtReader/data/ConfigData;->setAutoSaveDelay(I)V

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    return-void
.end method
