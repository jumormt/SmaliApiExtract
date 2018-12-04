.class final Lcom/wooboo/adlib_android/ImpressionAdView$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/content/Context;)V

    .line 250
    :cond_0
    return-void
.end method
