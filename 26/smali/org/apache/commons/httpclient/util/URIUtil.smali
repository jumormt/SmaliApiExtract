.class public Lorg/apache/commons/httpclient/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/util/URIUtil$Coder;
    }
.end annotation


# static fields
.field protected static final empty:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/util/URIUtil;->empty:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "escaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    move-result-object v1

    .line 522
    .local v1, "rawdata":[B
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 523
    .end local v1    # "rawdata":[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 524
    .local v0, "e":Lorg/apache/commons/codec/DecoderException;
    new-instance v2, Lorg/apache/commons/httpclient/URIException;

    invoke-virtual {v0}, Lorg/apache/commons/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "escaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil$Coder;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {p0, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 504
    .local v0, "rawdata":[B
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encodeAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lorg/apache/commons/httpclient/util/URIUtil;->empty:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePathQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodePathQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePathQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3f

    .line 296
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 297
    .local v0, "at":I
    if-gez v0, :cond_0

    .line 298
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p0, v1, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {v2, v3, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {v2, v3, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encodeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinAuthority(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinAuthority(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 426
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v3, "/"

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v2, 0x0

    .line 179
    :goto_0
    return-object v2

    .line 173
    :cond_0
    const-string v2, "//"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "at":I
    const-string v2, "/"

    if-ltz v0, :cond_2

    const-string v2, "/"

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "from":I
    if-gez v1, :cond_4

    if-ltz v0, :cond_3

    const-string v2, "/"

    move-object v2, v3

    goto :goto_0

    .line 174
    .end local v1    # "from":I
    :cond_1
    add-int/lit8 v2, v0, 0x2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    .restart local v1    # "from":I
    :cond_3
    move-object v2, p0

    .line 179
    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, p0

    .line 67
    :goto_0
    return-object v3

    .line 64
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/URIUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "path":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "at":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 67
    .local v2, "to":I
    if-ltz v0, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3f

    const/4 v4, 0x0

    const-string v6, "/"

    const-string v5, "#"

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 130
    :goto_0
    return-object v3

    .line 114
    :cond_0
    const-string v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "at":I
    const-string v3, "/"

    if-ltz v0, :cond_4

    const-string v3, "/"

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "to":I
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 123
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 126
    :cond_1
    const-string v3, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_2

    const-string v3, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 127
    const-string v3, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 130
    :cond_2
    if-gez v1, :cond_6

    if-ltz v0, :cond_5

    const-string v3, "/"

    move-object v3, v6

    goto :goto_0

    .line 115
    .end local v1    # "from":I
    .end local v2    # "to":I
    :cond_3
    add-int/lit8 v3, v0, 0x2

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_1

    .restart local v1    # "from":I
    .restart local v2    # "to":I
    :cond_5
    move-object v3, p0

    .line 130
    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getPathQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v6, "#"

    const-string v4, "/"

    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v3, 0x0

    .line 158
    :goto_0
    return-object v3

    .line 145
    :cond_0
    const-string v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "at":I
    const-string v3, "/"

    if-ltz v0, :cond_3

    const-string v3, "/"

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    .local v2, "to":I
    const-string v3, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_1

    .line 155
    const-string v3, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 158
    :cond_1
    if-gez v1, :cond_5

    if-ltz v0, :cond_4

    const-string v3, "/"

    move-object v3, v4

    goto :goto_0

    .line 146
    .end local v1    # "from":I
    .end local v2    # "to":I
    :cond_2
    add-int/lit8 v3, v0, 0x2

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_1

    .restart local v1    # "from":I
    .restart local v2    # "to":I
    :cond_4
    move-object v3, p0

    .line 158
    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v7, "/"

    const-string v6, "#"

    .line 78
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 99
    :goto_0
    return-object v3

    .line 80
    :cond_1
    const-string v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "at":I
    const-string v3, "/"

    if-ltz v0, :cond_5

    const-string v3, "/"

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_4

    move v3, v5

    :goto_1
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 88
    .local v2, "to":I
    const-string v3, "?"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 89
    if-ltz v0, :cond_6

    .line 90
    add-int/lit8 v1, v0, 0x1

    .line 95
    const-string v3, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_2

    .line 96
    const-string v3, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 99
    :cond_2
    if-ltz v1, :cond_3

    if-ne v1, v2, :cond_7

    :cond_3
    move-object v3, v4

    goto :goto_0

    .line 81
    .end local v1    # "from":I
    .end local v2    # "to":I
    :cond_4
    add-int/lit8 v3, v0, 0x2

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    .restart local v1    # "from":I
    .restart local v2    # "to":I
    :cond_6
    move-object v3, v4

    .line 92
    goto :goto_0

    .line 99
    :cond_7
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
