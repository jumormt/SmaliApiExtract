.class final Lcom/wooboo/adlib_android/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/a$1;->a:Lcom/wooboo/adlib_android/a;

    .line 591
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/a$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-static {v0}, Lcom/wooboo/adlib_android/a;->a(Lcom/wooboo/adlib_android/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/wooboo/adlib_android/a$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-static {v0}, Lcom/wooboo/adlib_android/a;->b(Lcom/wooboo/adlib_android/a;)Lcom/wooboo/adlib_android/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/f;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/wooboo/adlib_android/a$1;->a:Lcom/wooboo/adlib_android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/a;->a(Lcom/wooboo/adlib_android/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
