.class public Lorg/apache/commons/httpclient/HeaderElement;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "HeaderElement.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;


# instance fields
.field private parameters:[Lorg/apache/commons/httpclient/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HeaderElement"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/apache/commons/httpclient/NameValuePair;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    .line 117
    iput-object p3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    .line 118
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 155
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    .line 156
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>()V

    .line 131
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v2, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    .line 135
    .local v2, "parser":Lorg/apache/commons/httpclient/util/ParameterParser;
    const/16 v3, 0x3b

    invoke-virtual {v2, p1, p2, p3, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "params":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 137
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    .line 138
    .local v0, "element":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/HeaderElement;->setName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/HeaderElement;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/NameValuePair;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/NameValuePair;

    check-cast v3, [Lorg/apache/commons/httpclient/NameValuePair;

    iput-object v3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final parse(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 2
    .param p0, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parse(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static final parseElements(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 2
    .param p0, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parseElements(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 240
    if-nez p0, :cond_0

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    .line 243
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static final parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 11
    .param p0, "headerValue"    # [C

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 194
    sget-object v7, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "enter HeaderElement.parseElements(char[])"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 196
    if-nez p0, :cond_0

    .line 197
    new-array v7, v9, [Lorg/apache/commons/httpclient/HeaderElement;

    .line 222
    .end local p0    # "headerValue":[C
    :goto_0
    return-object v7

    .line 199
    .restart local p0    # "headerValue":[C
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "elements":Ljava/util/List;
    const/4 v4, 0x0

    .line 202
    .local v4, "i":I
    const/4 v3, 0x0

    .line 203
    .local v3, "from":I
    array-length v5, p0

    .line 204
    .local v5, "len":I
    const/4 v6, 0x0

    .line 205
    .local v6, "qouted":Z
    :goto_1
    if-ge v4, v5, :cond_6

    .line 206
    aget-char v0, p0, v4

    .line 207
    .local v0, "ch":C
    const/16 v7, 0x22

    if-ne v0, v7, :cond_1

    .line 208
    if-nez v6, :cond_4

    move v6, v10

    .line 210
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .line 211
    .local v1, "element":Lorg/apache/commons/httpclient/HeaderElement;
    if-nez v6, :cond_5

    const/16 v7, 0x2c

    if-ne v0, v7, :cond_5

    .line 212
    new-instance v1, Lorg/apache/commons/httpclient/HeaderElement;

    .end local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    invoke-direct {v1, p0, v3, v4}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    .line 213
    .restart local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    add-int/lit8 v3, v4, 0x1

    .line 217
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 218
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 221
    goto :goto_1

    .end local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    :cond_4
    move v6, v9

    .line 208
    goto :goto_2

    .line 214
    .restart local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    :cond_5
    sub-int v7, v5, v10

    if-ne v4, v7, :cond_2

    .line 215
    new-instance v1, Lorg/apache/commons/httpclient/HeaderElement;

    .end local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    invoke-direct {v1, p0, v3, v5}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    .restart local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    goto :goto_3

    .line 222
    .end local v0    # "ch":C
    .end local v1    # "element":Lorg/apache/commons/httpclient/HeaderElement;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/commons/httpclient/HeaderElement;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "headerValue":[C
    check-cast p0, [Lorg/apache/commons/httpclient/HeaderElement;

    check-cast p0, [Lorg/apache/commons/httpclient/HeaderElement;

    move-object v7, p0

    goto :goto_0
.end method


# virtual methods
.method public getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    sget-object v4, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HeaderElement.getParameterByName(String)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Name may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 285
    .local v1, "found":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v3

    .line 286
    .local v3, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v3, :cond_1

    .line 287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 288
    aget-object v0, v3, v2

    .line 289
    .local v0, "current":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    move-object v1, v0

    .line 295
    .end local v0    # "current":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 287
    .restart local v0    # "current":Lorg/apache/commons/httpclient/NameValuePair;
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    return-object v0
.end method
