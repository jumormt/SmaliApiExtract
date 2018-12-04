.class public Lcom/gfan/sdk/statistics/DefaultExceptionHandler;
.super Ljava/lang/Object;
.source "DefaultExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private context:Landroid/content/Context;

.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 0
    .param p1, "pDefaultExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    iput-object p2, p0, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 31
    .local v4, "result":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 34
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 40
    const-string v7, ".stacktrace"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    .local v0, "bos":Ljava/io/BufferedWriter;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 44
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "bos":Ljava/io/BufferedWriter;
    .end local v2    # "filename":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/gfan/sdk/statistics/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v5, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 53
    return-void

    .line 45
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 47
    .local v1, "ebos":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
