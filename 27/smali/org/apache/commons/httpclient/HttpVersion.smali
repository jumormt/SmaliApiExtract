.class public Lorg/apache/commons/httpclient/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

    .line 83
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    .line 86
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 77
    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 97
    if-gez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP major version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput p1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 101
    if-gez p2, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput p2, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 105
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpVersion;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ProtocolException;
        }
    .end annotation

    .prologue
    const-string v6, "HTTP/"

    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "String may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_0
    const-string v5, "HTTP/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 225
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid HTTP version string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :cond_1
    const-string v5, "HTTP/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 230
    .local v1, "i1":I
    const-string v5, "."

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 231
    .local v2, "i2":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 232
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid HTTP version number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 239
    .local v3, "major":I
    add-int/lit8 v1, v2, 0x1

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 242
    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 246
    .local v4, "minor":I
    new-instance v5, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v5, v3, v4}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    return-object v5

    .line 236
    .end local v3    # "major":I
    .end local v4    # "minor":I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 237
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid HTTP major version number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "major":I
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 244
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid HTTP minor version number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I
    .locals 3
    .param p1, "anotherVer"    # Lorg/apache/commons/httpclient/HttpVersion;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Version parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v2

    sub-int v0, v1, v2

    .line 158
    .local v0, "delta":I
    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    .line 161
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 136
    if-ne p0, p1, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 142
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 139
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    return v0
.end method

.method public greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .param p1, "version"    # Lorg/apache/commons/httpclient/HttpVersion;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 208
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
