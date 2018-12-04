.class public Lorg/apache/commons/httpclient/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final httpVersion:Ljava/lang/String;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I

.field private final statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const-string v9, "Status-Line \'"

    const-string v6, "\'"

    const-string v6, " "

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 85
    .local v3, "length":I
    const/4 v0, 0x0

    .line 86
    .local v0, "at":I
    const/4 v4, 0x0

    .local v4, "start":I
    move v1, v0

    .line 88
    .end local v0    # "at":I
    .local v1, "at":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    add-int/lit8 v0, v1, 0x1

    .line 90
    .end local v1    # "at":I
    .restart local v0    # "at":I
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "at":I
    .restart local v1    # "at":I
    goto :goto_0

    .line 92
    :cond_0
    const-string v6, "HTTP"
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v1, 0x4

    .end local v1    # "at":I
    .restart local v0    # "at":I
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    new-instance v6, Lorg/apache/commons/httpclient/HttpException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Status-Line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' does not start with HTTP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 130
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_1
    new-instance v6, Lorg/apache/commons/httpclient/HttpException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Status-Line \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' is not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    const-string v6, " "

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 98
    if-gtz v0, :cond_2

    .line 99
    new-instance v6, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to parse HTTP-Version from the status line: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    .line 106
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    :cond_3
    const-string v6, " "

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 112
    .local v5, "to":I
    if-gez v5, :cond_4

    .line 113
    move v5, v3

    .line 116
    :cond_4
    :try_start_3
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    add-int/lit8 v0, v5, 0x1

    .line 124
    if-ge v0, v3, :cond_5

    .line 125
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    :goto_3
    iput-object p1, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    .line 134
    return-void

    .line 117
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 118
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v6, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unable to parse status code from status line: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v6, ""

    iput-object v6, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 129
    .end local v0    # "at":I
    .end local v5    # "to":I
    .restart local v1    # "at":I
    :catch_2
    move-exception v6

    move-object v2, v6

    move v0, v1

    .end local v1    # "at":I
    .restart local v0    # "at":I
    goto/16 :goto_1
.end method

.method public static startsWithHTTP(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "at":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const-string v2, "HTTP"

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 182
    :goto_1
    return v2

    .line 181
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 182
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final getHttpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    return-object v0
.end method
