.class public Lorg/apache/commons/httpclient/NTCredentials;
.super Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.source "NTCredentials.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-nez p4, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Domain may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p4, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    .line 83
    if-nez p3, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    if-nez p1, :cond_0

    move v2, v4

    .line 190
    :goto_0
    return v2

    .line 180
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    goto :goto_0

    .line 181
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    instance-of v2, p1, Lorg/apache/commons/httpclient/NTCredentials;

    if-eqz v2, :cond_3

    .line 183
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/NTCredentials;

    move-object v1, v0

    .line 185
    .local v1, "that":Lorg/apache/commons/httpclient/NTCredentials;
    iget-object v2, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "that":Lorg/apache/commons/httpclient/NTCredentials;
    :cond_3
    move v2, v4

    .line 190
    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->hashCode()I

    move-result v0

    .line 165
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 167
    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Domain may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
