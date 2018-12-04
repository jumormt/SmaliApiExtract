.class public Lorg/apache/commons/httpclient/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"


# static fields
.field public static final PREEMPTIVE_AUTH_SCHEME:Ljava/lang/String; = "basic"


# instance fields
.field private authAttempted:Z

.field private authRequested:Z

.field private authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

.field private preemptive:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    .line 48
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    .line 51
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    .line 54
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    .line 62
    return-void
.end method


# virtual methods
.method public getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    .line 69
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    .line 70
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    .line 71
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    .line 72
    return-void
.end method

.method public isAuthAttempted()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    return v0
.end method

.method public isAuthRequested()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    return v0
.end method

.method public isPreemptive()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    return v0
.end method

.method public setAuthAttempted(Z)V
    .locals 0
    .param p1, "challengeResponded"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    .line 112
    return-void
.end method

.method public setAuthRequested(Z)V
    .locals 0
    .param p1, "challengeReceived"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    .line 92
    return-void
.end method

.method public setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V
    .locals 2
    .param p1, "authScheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    .line 149
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    .line 151
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    goto :goto_0
.end method

.method public setPreemptive()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Authentication state already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "basic"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    .line 125
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Auth state: auth requested ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, "]; auth attempted ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authAttempted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 182
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    if-eqz v1, :cond_0

    .line 183
    const-string v1, "]; auth scheme ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "]; realm ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->authScheme:Lorg/apache/commons/httpclient/auth/AuthScheme;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    const-string v1, "] preemptive ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/AuthState;->preemptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
