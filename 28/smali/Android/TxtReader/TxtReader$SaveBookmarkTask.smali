.class LAndroid/TxtReader/TxtReader$SaveBookmarkTask;
.super Ljava/util/TimerTask;
.source "TxtReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/TxtReader/TxtReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveBookmarkTask"
.end annotation


# instance fields
.field final synthetic this$0:LAndroid/TxtReader/TxtReader;


# direct methods
.method constructor <init>(LAndroid/TxtReader/TxtReader;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, LAndroid/TxtReader/TxtReader$SaveBookmarkTask;->this$0:LAndroid/TxtReader/TxtReader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    invoke-static {}, LAndroid/TxtReader/data/ConfigData;->saveConfigFile()V

    .line 293
    iget-object v0, p0, LAndroid/TxtReader/TxtReader$SaveBookmarkTask;->this$0:LAndroid/TxtReader/TxtReader;

    invoke-static {v0}, LAndroid/TxtReader/TxtReader;->access$0(LAndroid/TxtReader/TxtReader;)V

    .line 294
    return-void
.end method
