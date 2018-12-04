.class Lnet/youmi/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/cx;


# direct methods
.method constructor <init>(Lnet/youmi/android/cx;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/cx;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/cu;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->d(Lnet/youmi/android/cx;)Lnet/youmi/android/fe;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/fe;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->d(Lnet/youmi/android/cx;)Lnet/youmi/android/fe;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/fe;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v1

    if-eq v0, v1, :cond_5

    invoke-interface {v0}, Lnet/youmi/android/bb;->b()V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/cu;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/bb;->a()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->f(Lnet/youmi/android/cx;)Lnet/youmi/android/ca;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/aj;->a(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0}, Lnet/youmi/android/bb;->c()V

    invoke-interface {v0, v1}, Lnet/youmi/android/bb;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1, v0}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bb;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->c()Lnet/youmi/android/at;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/at;->a(Lnet/youmi/android/cu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->b()Lnet/youmi/android/ea;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/ea;->a(Lnet/youmi/android/cu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->a()Lnet/youmi/android/ag;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/ag;->a(Lnet/youmi/android/cu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->d()Lnet/youmi/android/l;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/l;->a(Lnet/youmi/android/cu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->e()Lnet/youmi/android/bm;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->c(Lnet/youmi/android/cx;)Lnet/youmi/android/cu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/bm;->a(Lnet/youmi/android/cu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->f(Lnet/youmi/android/cx;)Lnet/youmi/android/ca;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/aj;->b(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v2}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/youmi/android/bb;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v1}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/bb;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Lnet/youmi/android/e;->a:Lnet/youmi/android/cx;

    invoke-static {v0}, Lnet/youmi/android/cx;->e(Lnet/youmi/android/cx;)Lnet/youmi/android/bb;

    move-result-object v0

    invoke-interface {v0}, Lnet/youmi/android/bb;->d()V
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
