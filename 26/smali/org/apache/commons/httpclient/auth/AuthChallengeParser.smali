.class public final Lorg/apache/commons/httpclient/auth/AuthChallengeParser;
.super Ljava/lang/Object;
.source "AuthChallengeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "challengeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Challenge may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_0
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 97
    .local v1, "idx":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 98
    new-instance v6, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid challenge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v2, "map":Ljava/util/Map;
    new-instance v5, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v5}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    .line 102
    .local v5, "parser":Lorg/apache/commons/httpclient/util/ParameterParser;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v4

    .line 104
    .local v4, "params":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 105
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/NameValuePair;

    .line 106
    .local v3, "param":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_2
    return-object v2
.end method

.method public static extractScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "challengeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Challenge may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 68
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 69
    .local v1, "s":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 70
    move-object v1, p0

    .line 74
    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    new-instance v2, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid challenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;
    .locals 6
    .param p0, "headers"    # [Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array of challenges may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "challenge":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 129
    .local v1, "challengemap":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 130
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method
