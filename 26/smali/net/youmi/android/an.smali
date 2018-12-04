.class Lnet/youmi/android/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ed;


# direct methods
.method constructor <init>(Lnet/youmi/android/ed;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-static {v1}, Lnet/youmi/android/ed;->a(Lnet/youmi/android/ed;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move v3, v12

    move-wide v4, v13

    :goto_1
    array-length v0, v1

    if-lt v3, v0, :cond_3

    move-wide v3, v4

    :cond_2
    :goto_2
    iget-object v0, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-static {v0}, Lnet/youmi/android/ed;->b(Lnet/youmi/android/ed;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_2
    aget-object v6, v1, v3

    iget-object v0, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-static {v0, v6}, Lnet/youmi/android/ed;->a(Lnet/youmi/android/ed;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-static {v0}, Lnet/youmi/android/ed;->b(Lnet/youmi/android/ed;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/youmi/android/an;->a:Lnet/youmi/android/ed;

    invoke-static {v0}, Lnet/youmi/android/ed;->b(Lnet/youmi/android/ed;)J

    move-result-wide v7

    cmp-long v0, v7, v13

    if-lez v0, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v4, v7

    move v7, v12

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gtz v0, :cond_6

    invoke-interface {v2, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4
.end method
