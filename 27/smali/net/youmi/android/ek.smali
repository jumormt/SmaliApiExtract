.class Lnet/youmi/android/ek;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Z

.field private b:Lnet/youmi/android/bx;


# direct methods
.method constructor <init>(Lnet/youmi/android/bx;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ek;->a:Z

    iput-object p1, p0, Lnet/youmi/android/ek;->b:Lnet/youmi/android/bx;

    return-void
.end method


# virtual methods
.method protected varargs a([Lnet/youmi/android/cr;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ek;->b:Lnet/youmi/android/bx;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/youmi/android/ek;->a:Z

    :goto_1
    iget-boolean v1, p0, Lnet/youmi/android/ek;->a:Z

    if-nez v1, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lnet/youmi/android/ek;->b:Lnet/youmi/android/bx;

    if-nez v1, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lnet/youmi/android/cr;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lnet/youmi/android/ek;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lnet/youmi/android/cr;->f()I

    move-result v1

    const/16 v2, 0x96

    if-ge v1, v2, :cond_6

    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :cond_6
    int-to-long v1, v1

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ek;->a:Z

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ek;->b:Lnet/youmi/android/bx;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ek;->b:Lnet/youmi/android/bx;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/bx;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lnet/youmi/android/cr;

    invoke-virtual {p0, p1}, Lnet/youmi/android/ek;->a([Lnet/youmi/android/cr;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/youmi/android/ek;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/youmi/android/ek;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
