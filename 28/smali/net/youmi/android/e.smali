.class Lnet/youmi/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/cw;


# direct methods
.method constructor <init>(Lnet/youmi/android/cw;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/cw;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ct;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->i(Lnet/youmi/android/cw;)Lnet/youmi/android/fb;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/fb;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->i(Lnet/youmi/android/cw;)Lnet/youmi/android/fb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/fb;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v1

    if-eq v0, v1, :cond_5

    invoke-interface {v0}, Lnet/youmi/android/ba;->b()V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ct;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/ba;->a()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->k(Lnet/youmi/android/cw;)Lnet/youmi/android/bz;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ai;->a(Lnet/youmi/android/bz;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0}, Lnet/youmi/android/ba;->c()V

    invoke-interface {v0, v1}, Lnet/youmi/android/ba;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1, v0}, Lnet/youmi/android/cw;->a(Lnet/youmi/android/cw;Lnet/youmi/android/ba;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->d(Lnet/youmi/android/cw;)Lnet/youmi/android/as;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/as;->a(Lnet/youmi/android/ct;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->d(Lnet/youmi/android/cw;)Lnet/youmi/android/as;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->e(Lnet/youmi/android/cw;)Lnet/youmi/android/dy;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/dy;->a(Lnet/youmi/android/ct;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->e(Lnet/youmi/android/cw;)Lnet/youmi/android/dy;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->f(Lnet/youmi/android/cw;)Lnet/youmi/android/af;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/af;->a(Lnet/youmi/android/ct;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->f(Lnet/youmi/android/cw;)Lnet/youmi/android/af;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->g(Lnet/youmi/android/cw;)Lnet/youmi/android/l;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/l;->a(Lnet/youmi/android/ct;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->g(Lnet/youmi/android/cw;)Lnet/youmi/android/l;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->h(Lnet/youmi/android/cw;)Lnet/youmi/android/bl;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->c(Lnet/youmi/android/cw;)Lnet/youmi/android/ct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/bl;->a(Lnet/youmi/android/ct;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->h(Lnet/youmi/android/cw;)Lnet/youmi/android/bl;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->k(Lnet/youmi/android/cw;)Lnet/youmi/android/bz;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ai;->b(Lnet/youmi/android/bz;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v2}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/youmi/android/ba;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v1}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/ba;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cw;

    invoke-static {v0}, Lnet/youmi/android/cw;->j(Lnet/youmi/android/cw;)Lnet/youmi/android/ba;

    move-result-object v0

    invoke-interface {v0}, Lnet/youmi/android/ba;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
