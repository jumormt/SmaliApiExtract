.class Lnet/youmi/android/c;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/youmi/android/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lnet/youmi/android/dm;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lnet/youmi/android/av;->a(Landroid/content/Context;)Lnet/youmi/android/dm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lnet/youmi/android/dm;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Lnet/youmi/android/dm;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lnet/youmi/android/dm;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "\u662f\u5426\u66f4\u65b0\u5230\u6700\u65b0\u7248\u672c?"

    iput-object v0, p1, Lnet/youmi/android/dm;->e:Ljava/lang/String;

    :cond_1
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/youmi/android/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5e94\u7528\u7a0b\u5e8f\u6709\u65b0\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lnet/youmi/android/dm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    new-instance v2, Lnet/youmi/android/db;

    invoke-direct {v2, p0}, Lnet/youmi/android/db;-><init>(Lnet/youmi/android/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    new-instance v2, Lnet/youmi/android/dc;

    invoke-direct {v2, p0, p1}, Lnet/youmi/android/dc;-><init>(Lnet/youmi/android/c;Lnet/youmi/android/dm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u662f\u5426\u5c06\u7248\u672c\u66f4\u65b0\u5230\u6700\u65b0\u7684"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lnet/youmi/android/dm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lnet/youmi/android/dm;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/youmi/android/c;->a([Ljava/lang/String;)Lnet/youmi/android/dm;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/youmi/android/dm;

    invoke-virtual {p0, p1}, Lnet/youmi/android/c;->a(Lnet/youmi/android/dm;)V

    return-void
.end method
