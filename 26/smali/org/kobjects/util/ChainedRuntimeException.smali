.class public Lorg/kobjects/util/ChainedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "ChainedRuntimeException.java"


# instance fields
.field chain:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string v1, "rethrown"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/kobjects/util/ChainedRuntimeException;->chain:Ljava/lang/Exception;

    .line 53
    return-void

    :cond_0
    move-object v1, p2

    .line 51
    goto :goto_0
.end method

.method public static create(Ljava/lang/Exception;Ljava/lang/String;)Lorg/kobjects/util/ChainedRuntimeException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    const-string v0, "org.kobjects.util.ChainedRuntimeExceptionSE"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kobjects/util/ChainedRuntimeException;

    invoke-virtual {v0, p0, p1}, Lorg/kobjects/util/ChainedRuntimeException;->_create(Ljava/lang/Exception;Ljava/lang/String;)Lorg/kobjects/util/ChainedRuntimeException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    new-instance v0, Lorg/kobjects/util/ChainedRuntimeException;

    invoke-direct {v0, p0, p1}, Lorg/kobjects/util/ChainedRuntimeException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method _create(Ljava/lang/Exception;Ljava/lang/String;)Lorg/kobjects/util/ChainedRuntimeException;
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERR!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChained()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/kobjects/util/ChainedRuntimeException;->chain:Ljava/lang/Exception;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 83
    iget-object v0, p0, Lorg/kobjects/util/ChainedRuntimeException;->chain:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/kobjects/util/ChainedRuntimeException;->chain:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_0
    return-void
.end method
