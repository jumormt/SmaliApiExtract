.class public Lorg/apache/commons/httpclient/util/ParameterFormatter;
.super Ljava/lang/Object;
.source "ParameterFormatter.java"


# static fields
.field private static final SEPARATORS:[C

.field private static final UNSAFE_CHARS:[C


# instance fields
.field private alwaysUseQuotes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    return-void

    .line 92
    :array_0
    .array-data 2
        0x28s
        0x29s
        0x3cs
        0x3es
        0x40s
        0x2cs
        0x3bs
        0x3as
        0x5cs
        0x22s
        0x2fs
        0x5bs
        0x5ds
        0x3fs
        0x3ds
        0x7bs
        0x7ds
        0x20s
        0x9s
    .end array-data

    .line 103
    nop

    :array_1
    .array-data 2
        0x22s
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    .line 116
    return-void
.end method

.method public static formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alwaysUseQuotes"    # Z

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    .line 169
    if-nez p0, :cond_0

    .line 170
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "String buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 173
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Value buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_1
    if-eqz p2, :cond_5

    .line 176
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    :cond_4
    :goto_1
    return-void

    .line 186
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 187
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 188
    .local v3, "unsafe":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 190
    .restart local v0    # "ch":C
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 191
    const/4 v3, 0x1

    .line 193
    :cond_6
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isUnsafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 194
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 198
    .end local v0    # "ch":C
    :cond_8
    if-eqz v3, :cond_4

    .line 199
    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static isOneOf([CC)Z
    .locals 2
    .param p0, "chars"    # [C
    .param p1, "ch"    # C

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 120
    aget-char v1, p0, v0

    if-ne p1, v1, :cond_0

    .line 121
    const/4 v1, 0x1

    .line 124
    :goto_1
    return v1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 132
    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->SEPARATORS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method

.method private static isUnsafeChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 128
    sget-object v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->UNSAFE_CHARS:[C

    invoke-static {v0, p0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->isOneOf([CC)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public format(Lorg/apache/commons/httpclient/NameValuePair;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Lorg/apache/commons/httpclient/NameValuePair;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "param"    # Lorg/apache/commons/httpclient/NameValuePair;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String buffer may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    if-nez p2, :cond_1

    .line 217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 222
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 225
    :cond_2
    return-void
.end method

.method public isAlwaysUseQuotes()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    return v0
.end method

.method public setAlwaysUseQuotes(Z)V
    .locals 0
    .param p1, "alwaysUseQuotes"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/util/ParameterFormatter;->alwaysUseQuotes:Z

    .line 154
    return-void
.end method
