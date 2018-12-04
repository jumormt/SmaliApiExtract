.class public Lorg/apache/commons/httpclient/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "headerIter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 212
    .local v0, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v2, 0x1

    .line 217
    .end local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/commons/httpclient/HeaderGroup;
    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    return-object p0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 113
    .local v0, "headers":[Lorg/apache/commons/httpclient/Header;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 114
    const/4 v3, 0x0

    .line 125
    :goto_0
    return-object v3

    .line 115
    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 116
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, v0, v5

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "valueBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 121
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "headerIter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 163
    .local v0, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 168
    .end local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "headersFound":Ljava/util/ArrayList;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "headerIter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 144
    .local v0, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/commons/httpclient/HeaderGroup;
    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    check-cast p0, [Lorg/apache/commons/httpclient/Header;

    return-object p0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 182
    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 183
    .local v0, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 188
    .end local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :goto_1
    return-object v2

    .line 181
    .restart local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public setHeaders([Lorg/apache/commons/httpclient/Header;)V
    .locals 2
    .param p1, "headers"    # [Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method
