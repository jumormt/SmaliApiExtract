.class Lcom/casee/adsdk/s;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/casee/adsdk/i;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    const-string v5, "CASEE-AD"

    :try_start_0
    iget-object v0, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v0}, Lcom/casee/adsdk/i;->e(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v2}, Lcom/casee/adsdk/i;->g(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/CaseeAdView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/casee/adsdk/b;->b(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/casee/adsdk/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v1}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/casee/adsdk/b;->b(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    const/4 v3, 0x0

    move v6, v3

    move-object v3, v0

    move v0, v6

    :goto_0
    const/16 v4, 0x12e

    if-ne v1, v4, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    :try_start_3
    const-string v1, "Location"

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v4, p0, Lcom/casee/adsdk/s;->a:Lcom/casee/adsdk/i;

    invoke-static {v4}, Lcom/casee/adsdk/i;->f(Lcom/casee/adsdk/i;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/casee/adsdk/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v6, v3

    move-object v3, v1

    move v1, v6

    goto :goto_0

    :cond_0
    :try_start_5
    const-string v0, "result"

    const-string v1, "===============ok"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    const-string v0, "CASEE-AD"

    const-string v1, "notify platform successfully: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    :try_start_8
    const-string v3, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_3
    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_4
.end method
