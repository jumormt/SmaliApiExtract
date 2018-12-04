.class LAndroid/TxtReader/TxtReader$1;
.super Ljava/lang/Object;
.source "TxtReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAndroid/TxtReader/TxtReader;->loadBookmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/TxtReader/TxtReader;

.field private final synthetic val$scroll:Landroid/widget/ScrollView;

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(LAndroid/TxtReader/TxtReader;ILandroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, LAndroid/TxtReader/TxtReader$1;->this$0:LAndroid/TxtReader/TxtReader;

    iput p2, p0, LAndroid/TxtReader/TxtReader$1;->val$y:I

    iput-object p3, p0, LAndroid/TxtReader/TxtReader$1;->val$scroll:Landroid/widget/ScrollView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v0, p0, LAndroid/TxtReader/TxtReader$1;->val$y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, LAndroid/TxtReader/TxtReader$1;->val$scroll:Landroid/widget/ScrollView;

    iget v1, p0, LAndroid/TxtReader/TxtReader$1;->val$y:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, LAndroid/TxtReader/TxtReader$1;->val$scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method
