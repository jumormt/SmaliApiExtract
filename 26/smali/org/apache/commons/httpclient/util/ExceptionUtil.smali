.class public Lorg/apache/commons/httpclient/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

.field static class$java$lang$Throwable:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.util.ExceptionUtil"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    .line 52
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 55
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void

    .line 49
    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 83
    :try_start_0
    const-string v1, "java.net.SocketTimeoutException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    const-string v2, "java.lang.Throwable"

    .line 68
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Throwable"

    invoke-static {v3}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    aput-object v3, v1, v2

    .line 69
    .local v1, "paramsClasses":[Ljava/lang/Class;
    sget-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    const-string v3, "initCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 71
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :goto_2
    return-object v2

    .line 68
    :cond_0
    sget-object v3, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    .line 69
    .restart local v1    # "paramsClasses":[Ljava/lang/Class;
    :cond_1
    sget-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 71
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Exception invoking Throwable.initCause"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .locals 1
    .param p0, "e"    # Ljava/io/InterruptedIOException;

    .prologue
    .line 116
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
