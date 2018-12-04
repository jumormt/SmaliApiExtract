.class public Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/commons/httpclient/Credentials;


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "usernamePassword"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Username:password string may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 72
    .local v0, "atColon":I
    if-ltz v0, :cond_1

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 74
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    if-nez p1, :cond_0

    move v2, v4

    .line 210
    :goto_0
    return v2

    .line 199
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    move-object v1, v0

    .line 205
    .local v1, "that":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    iget-object v2, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    .line 207
    goto :goto_0

    .end local v1    # "that":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :cond_2
    move v2, v4

    .line 210
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    const/16 v0, 0x11

    .line 184
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 186
    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_0
.end method
