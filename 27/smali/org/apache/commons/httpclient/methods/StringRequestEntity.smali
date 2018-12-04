.class public Lorg/apache/commons/httpclient/methods/StringRequestEntity;
.super Ljava/lang/Object;
.source "StringRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# instance fields
.field private charset:Ljava/lang/String;

.field private content:[B

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The content cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    .line 100
    if-eqz p2, :cond_2

    .line 101
    invoke-static {p2}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v2

    .line 102
    .local v2, "values":[Lorg/apache/commons/httpclient/HeaderElement;
    const/4 v0, 0x0

    .line 103
    .local v0, "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 104
    aget-object v3, v2, v1

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    :cond_1
    if-nez p3, :cond_4

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    .line 117
    .end local v0    # "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v1    # "i":I
    .end local v2    # "values":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 118
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    .line 122
    :goto_2
    return-void

    .line 103
    .restart local v0    # "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    .restart local v1    # "i":I
    .restart local v2    # "values":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_4
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    goto :goto_1

    .line 120
    .end local v0    # "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v1    # "i":I
    .end local v2    # "values":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    goto :goto_2
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 146
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 147
    return-void
.end method
