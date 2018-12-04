.class final Lcom/wooboo/adlib_android/WoobooAdView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/WoobooAdView$3;

.field private final synthetic b:Lcom/wooboo/adlib_android/a;

.field private final synthetic c:I

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView$3;Lcom/wooboo/adlib_android/a;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    iput p3, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->c:I

    iput-boolean p4, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->d:Z

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->addView(Landroid/view/View;)V

    .line 206
    iget v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->c:I

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    .line 208
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->d()V

    .line 209
    iget-boolean v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->d:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->b(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-boolean v2, v0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 222
    :goto_1
    return-void

    .line 212
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->c(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    :try_start_2
    const-string v1, "Wooboo SDK 1.2"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-boolean v2, v0, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    goto :goto_1

    .line 215
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v0, v0, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->b:Lcom/wooboo/adlib_android/a;

    invoke-static {v0, v1}, Lcom/wooboo/adlib_android/WoobooAdView;->a(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$3$1;->a:Lcom/wooboo/adlib_android/WoobooAdView$3;

    iget-object v1, v1, Lcom/wooboo/adlib_android/WoobooAdView$3;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    iput-boolean v2, v1, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 221
    throw v0
.end method
