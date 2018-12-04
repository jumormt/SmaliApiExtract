.class Lnet/youmi/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/cf;


# direct methods
.method constructor <init>(Lnet/youmi/android/cf;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "android.intent.extra.TEXT"

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v1}, Lnet/youmi/android/cf;->b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;

    move-result-object v1

    iget-object v1, v1, Lnet/youmi/android/as;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;

    move-result-object v0

    iget-object v0, v0, Lnet/youmi/android/as;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->b(Lnet/youmi/android/cf;)Lnet/youmi/android/as;

    move-result-object v0

    iget-object v0, v0, Lnet/youmi/android/as;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->f(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v2}, Lnet/youmi/android/cf;->f(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v0}, Lnet/youmi/android/cf;->g(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v3}, Lnet/youmi/android/cf;->f(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v3}, Lnet/youmi/android/cf;->g(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_2
    iget-object v0, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    iget-object v0, v0, Lnet/youmi/android/cf;->a:Lnet/youmi/android/AdActivity;

    const-string v2, "\u5206\u4eab\u56fe\u7247"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/AdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "image/jpeg"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.extra.TEXT"

    iget-object v2, p0, Lnet/youmi/android/t;->a:Lnet/youmi/android/cf;

    invoke-static {v2}, Lnet/youmi/android/cf;->f(Lnet/youmi/android/cf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
