.class public Lorg/apache/commons/httpclient/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# static fields
.field static class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private reason:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 231
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const-string v2, "java.lang.Throwable"

    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    const/16 v2, 0xc8

    iput v2, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 76
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 80
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Throwable"

    invoke-static {v3}, Lorg/apache/commons/httpclient/HttpException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    aput-object v3, v1, v2

    .line 81
    .local v1, "paramsClasses":[Ljava/lang/Class;
    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    const-string v3, "initCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    .local v0, "initCause":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "initCause":Ljava/lang/reflect/Method;
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :goto_2
    return-void

    .line 80
    :cond_0
    sget-object v3, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    .line 81
    .restart local v1    # "paramsClasses":[Ljava/lang/Class;
    :cond_1
    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 80
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


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    return v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 108
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 123
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 124
    .local v1, "paramsClasses":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 130
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 152
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 153
    .local v1, "paramsClasses":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 159
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpException;->reason:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setReasonCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 203
    iput p1, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 204
    return-void
.end method
