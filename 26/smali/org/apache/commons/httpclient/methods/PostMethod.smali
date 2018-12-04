.class public Lorg/apache/commons/httpclient/methods/PostMethod;
.super Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.source "PostMethod.java"


# static fields
.field public static final FORM_URL_ENCODED_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;


# instance fields
.field private params:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.PostMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>()V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    .line 107
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 76
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


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 267
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments to addParameter(String, String) cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 272
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public addParameter(Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2
    .param p1, "param"    # Lorg/apache/commons/httpclient/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(NameValuePair)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 3
    .param p1, "parameters"    # [Lorg/apache/commons/httpclient/NameValuePair;

    .prologue
    .line 304
    sget-object v1, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter PostMethod.addParameters(NameValuePair[])"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 306
    if-nez p1, :cond_1

    .line 307
    sget-object v1, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Attempt to addParameters(null) ignored"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 314
    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected clearRequestBody()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 154
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 155
    return-void
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([BLjava/lang/String;)V

    .local v1, "entity":Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
    move-object v2, v1

    .line 177
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "entity":Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "POST"

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .locals 5
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 210
    sget-object v2, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter PostMethod.getParameter(String)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 212
    if-nez p1, :cond_0

    move-object v2, v4

    .line 225
    :goto_0
    return-object v2

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/NameValuePair;

    .line 221
    .local v1, "parameter":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 222
    goto :goto_0

    .end local v1    # "parameter":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_2
    move-object v2, v4

    .line 225
    goto :goto_0
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .locals 6

    .prologue
    .line 240
    sget-object v4, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter PostMethod.getParameters()"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 242
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 243
    .local v1, "numPairs":I
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 244
    .local v3, "objectArr":[Ljava/lang/Object;
    new-array v2, v1, [Lorg/apache/commons/httpclient/NameValuePair;

    .line 246
    .local v2, "nvPairArr":[Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v0, 0x0

    .end local p0    # "this":Lorg/apache/commons/httpclient/methods/PostMethod;
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 247
    aget-object p0, v3, v0

    check-cast p0, Lorg/apache/commons/httpclient/NameValuePair;

    aput-object p0, v2, v0

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-object v2
.end method

.method protected hasRequestContent()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 5
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v3, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter PostMethod.removeParameter(String)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument passed to removeParameter(String) cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_0
    const/4 v2, 0x0

    .line 339
    .local v2, "removed":Z
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    .local v0, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/NameValuePair;

    .line 344
    .local v1, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 346
    const/4 v2, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_2
    return v2
.end method

.method public removeParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v2, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter PostMethod.removeParameter(String, String)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter name may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_0
    if-nez p2, :cond_1

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter value may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/NameValuePair;

    .line 382
    .local v1, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 385
    const/4 v2, 0x1

    .line 389
    .end local v1    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->removeParameter(Ljava/lang/String;)Z

    .line 194
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2
    .param p1, "parametersBody"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setRequestBody(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->clearRequestBody()V

    .line 409
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 410
    return-void
.end method
