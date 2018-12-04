.class public final Lnet/youmi/android/AdActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lnet/youmi/android/cu;

.field private b:Lnet/youmi/android/ff;

.field private c:Lnet/youmi/android/ca;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/youmi/android/AdActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "D780FBF4215247bcBB1AC0AD33C474FE"

    const-string v2, "FEDC335110C04414AF100EA25C26A70D"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/youmi/android/AdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "D780FBF4215247bcBB1AC0AD33C474FE"

    const-string v2, "FD7C4B12A60F415dBE8C580A137F5F1C"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/youmi/android/AdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "D780FBF4215247bcBB1AC0AD33C474FE"

    const-string v2, "DB9C288EF60A40d4897665843327626E"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EB80F3291A8E469c962CA133BDC549D7"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "172C94EDC717477aBF600D7898A64A8E"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "D50EF1926ADD471892E72BCE6D7E032C"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    const/16 v6, 0x400

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "D780FBF4215247bcBB1AC0AD33C474FE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A821718FB7F248b590F3721F6576D289"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lnet/youmi/android/ex;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->c:Lnet/youmi/android/ca;

    invoke-direct {v0, p0, v1}, Lnet/youmi/android/ex;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-virtual {p0, v5}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v4}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminate(Z)V

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-interface {v0}, Lnet/youmi/android/ff;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "FD7C4B12A60F415dBE8C580A137F5F1C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/youmi/android/dp;->a:Lnet/youmi/android/cu;

    if-eqz v2, :cond_1

    iput-object v2, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/cu;

    invoke-virtual {v2}, Lnet/youmi/android/cu;->a()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    const-string v2, "FEDC335110C04414AF100EA25C26A70D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lnet/youmi/android/fg;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->c:Lnet/youmi/android/ca;

    invoke-direct {v0, p0, v1}, Lnet/youmi/android/fg;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-interface {v0}, Lnet/youmi/android/ff;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->a()V

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/youmi/android/ex;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->c:Lnet/youmi/android/ca;

    invoke-direct {v0, p0, v1}, Lnet/youmi/android/ex;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;)V

    invoke-virtual {p0, v5}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v4}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminate(Z)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-interface {v1}, Lnet/youmi/android/ff;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Lnet/youmi/android/cu;->i()Lnet/youmi/android/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ex;->a(Lnet/youmi/android/em;)V

    goto :goto_0

    :cond_3
    const-string v2, "DB9C288EF60A40d4897665843327626E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "EB80F3291A8E469c962CA133BDC549D7"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const-string v1, "172C94EDC717477aBF600D7898A64A8E"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "D50EF1926ADD471892E72BCE6D7E032C"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lnet/youmi/android/cf;

    iget-object v2, p0, Lnet/youmi/android/AdActivity;->c:Lnet/youmi/android/ca;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/cf;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ca;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-interface {v0}, Lnet/youmi/android/ff;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->a()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method static b(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/youmi/android/AdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "D780FBF4215247bcBB1AC0AD33C474FE"

    const-string v2, "FEDC335110C04414AF100EA25C26A70D"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lnet/youmi/android/ca;->a(Landroid/app/Activity;)Lnet/youmi/android/ca;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->c:Lnet/youmi/android/ca;

    invoke-direct {p0}, Lnet/youmi/android/AdActivity;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/ff;

    invoke-interface {v0}, Lnet/youmi/android/ff;->b_()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
