.class public Lorg/apache/commons/httpclient/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_0

    move v2, v4

    .line 142
    :goto_0
    return v2

    .line 136
    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v5

    goto :goto_0

    .line 137
    :cond_1
    instance-of v2, p1, Lorg/apache/commons/httpclient/NameValuePair;

    if-eqz v2, :cond_3

    .line 138
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    move-object v1, v0

    .line 139
    .local v1, "that":Lorg/apache/commons/httpclient/NameValuePair;
    iget-object v2, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "that":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_3
    move v2, v4

    .line 142
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 147
    const/16 v0, 0x11

    .line 148
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 150
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
