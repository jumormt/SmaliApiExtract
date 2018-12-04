.class Lcom/casee/adsdk/CaseeAdView$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/CaseeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "CASEE-AD"

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v1}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1, v2}, Lcom/casee/adsdk/b;->a(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/o;)Lcom/casee/adsdk/o;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0, v3}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Z)Z

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V

    :cond_0
    :goto_0
    const-string v0, "CASEE-AD"

    const-string v0, "cannot fetch ad."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V

    :cond_4
    :goto_2
    const-string v0, "CASEE-AD"

    const-string v0, "fetch an ad successfully."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->a()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->g(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->a()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/casee/adsdk/o;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;I)I

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->h(Lcom/casee/adsdk/CaseeAdView;)V

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->e()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/CaseeAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/casee/adsdk/u;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/u;-><init>(Lcom/casee/adsdk/CaseeAdView$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->g(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1}, Lcom/casee/adsdk/CaseeAdView;->i(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1}, Lcom/casee/adsdk/CaseeAdView;->i(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;I)I

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->h(Lcom/casee/adsdk/CaseeAdView;)V

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$a;->a:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/CaseeAdView;)V

    goto :goto_3
.end method
