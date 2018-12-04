.class public Lorg/kobjects/xml/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# static fields
.field static final CDSECT:I = 0x5

.field public static final END_DOCUMENT:I = 0x1

.field public static final END_TAG:I = 0x3

.field static final ENTITY_REF:I = 0x6

.field private static final LEGACY:I = 0x3e7

.field public static final START_DOCUMENT:I = 0x0

.field public static final START_TAG:I = 0x2

.field public static final TEXT:I = 0x4

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"


# instance fields
.field private TYPES:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private column:I

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private entityMap:Ljava/util/Hashtable;

.field private eof:Z

.field private isWhitespace:Z

.field private line:I

.field private name:Ljava/lang/String;

.field private peek0:I

.field private peek1:I

.field private reader:Ljava/io/Reader;

.field public relaxed:Z

.field private srcBuf:[C

.field private srcCount:I

.field private srcPos:I

.field private text:Ljava/lang/String;

.field private txtBuf:[C

.field private txtPos:I

.field private type:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/16 v0, 0x2000

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->srcBuf:[C

    .line 90
    new-array v0, v7, [C

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    .line 102
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Start Document"

    aput-object v1, v0, v5

    const-string v1, "End Document"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Start Tag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "End Tag"

    aput-object v2, v0, v1

    const-string v1, "Text"

    aput-object v1, v0, v6

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->TYPES:[Ljava/lang/String;

    .line 496
    iput-object p1, p0, Lorg/kobjects/xml/XmlReader;->reader:Ljava/io/Reader;

    .line 498
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 499
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    .line 501
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    .line 503
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    .line 504
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iput v4, p0, Lorg/kobjects/xml/XmlReader;->line:I

    .line 511
    iput v4, p0, Lorg/kobjects/xml/XmlReader;->column:I

    .line 512
    return-void

    :cond_0
    move v0, v7

    .line 72
    goto :goto_0

    :cond_1
    move v0, v5

    .line 501
    goto :goto_1
.end method

.method private static final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 338
    array-length v1, p0

    if-lt v1, p1, :cond_0

    move-object v1, p0

    .line 342
    :goto_0
    return-object v1

    .line 340
    :cond_0
    add-int/lit8 v1, p1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 341
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 342
    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final parseDoctype()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v1, 0x1

    .line 276
    .local v1, "nesting":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v0

    .line 277
    .local v0, "i":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 280
    :sswitch_0
    const-string v2, "Unexpected EOF"

    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 283
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 284
    goto :goto_0

    .line 287
    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    .line 288
    return-void

    .line 277
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private final parseEndTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 298
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 299
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 300
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    .line 301
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->relaxed:Z

    if-nez v0, :cond_0

    .line 302
    const-string v0, "element stack empty"

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    .line 308
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 309
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->read(C)V

    .line 310
    return-void

    .line 306
    :cond_2
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->relaxed:Z

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final parseLegacy(Z)V
    .locals 7
    .param p1, "push"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3f

    .line 216
    const-string v2, ""

    .line 219
    .local v2, "req":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 220
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v0

    .line 222
    .local v0, "c":I
    if-ne v0, v6, :cond_0

    .line 223
    const/16 v3, 0x3f

    .line 242
    .local v3, "term":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/kobjects/xml/XmlReader;->read(C)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "i":I
    .end local v3    # "term":I
    :cond_0
    const/16 v4, 0x21

    if-ne v0, v4, :cond_2

    .line 226
    iget v4, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 227
    const-string v2, "--"

    .line 228
    const/16 v3, 0x2d

    .restart local v3    # "term":I
    goto :goto_0

    .line 231
    .end local v3    # "term":I
    :cond_1
    const-string v2, "DOCTYPE"

    .line 232
    const/4 v3, -0x1

    .restart local v3    # "term":I
    goto :goto_0

    .line 236
    .end local v3    # "term":I
    :cond_2
    const/16 v4, 0x5b

    if-eq v0, v4, :cond_3

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cantreachme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 238
    :cond_3
    const-string v2, "CDATA["

    .line 239
    const/16 v3, 0x5d

    .restart local v3    # "term":I
    goto :goto_0

    .line 245
    .restart local v1    # "i":I
    :cond_4
    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 246
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->parseDoctype()V

    .line 267
    :cond_5
    :goto_2
    return-void

    .line 249
    :cond_6
    iget-boolean v4, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    if-eqz v4, :cond_7

    .line 250
    const-string v4, "Unexpected EOF"

    invoke-direct {p0, v4}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 252
    :cond_7
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v0

    .line 253
    if-eqz p1, :cond_8

    .line 254
    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->push(I)V

    .line 256
    :cond_8
    if-eq v3, v6, :cond_9

    if-ne v0, v3, :cond_6

    :cond_9
    iget v4, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    if-ne v4, v3, :cond_6

    iget v4, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_6

    .line 261
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 262
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 264
    if-eqz p1, :cond_5

    if-eq v3, v6, :cond_5

    .line 265
    iget v4, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/kobjects/xml/XmlReader;->pop(I)Ljava/lang/String;

    goto :goto_2
.end method

.method private final parseStartTag()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e

    .line 349
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 350
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->readName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    .line 351
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    iget v7, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lorg/kobjects/xml/XmlReader;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    .line 352
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->elementStack:[Ljava/lang/String;

    iget v7, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    iget-object v8, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 355
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 357
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 359
    .local v1, "c":I
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_1

    .line 360
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/kobjects/xml/XmlReader;->degenerated:Z

    .line 361
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 362
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 363
    invoke-direct {p0, v9}, Lorg/kobjects/xml/XmlReader;->read(C)V

    .line 412
    :goto_1
    return-void

    .line 367
    :cond_1
    if-ne v1, v9, :cond_2

    .line 368
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    goto :goto_1

    .line 372
    :cond_2
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 373
    const-string v6, "Unexpected EOF"

    invoke-direct {p0, v6}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 375
    :cond_3
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->readName()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 378
    const-string v6, "attr name expected"

    invoke-direct {p0, v6}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 380
    :cond_4
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 381
    const/16 v6, 0x3d

    invoke-direct {p0, v6}, Lorg/kobjects/xml/XmlReader;->read(C)V

    .line 384
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 385
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v2

    .line 387
    .local v2, "delimiter":I
    const/16 v6, 0x27

    if-eq v2, v6, :cond_6

    const/16 v6, 0x22

    if-eq v2, v6, :cond_6

    .line 388
    iget-boolean v6, p0, Lorg/kobjects/xml/XmlReader;->relaxed:Z

    if-nez v6, :cond_5

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">: invalid delimiter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 395
    :cond_5
    const/16 v2, 0x20

    .line 398
    :cond_6
    iget v6, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    shl-int/lit8 v3, v6, 0x1

    .line 400
    .local v3, "i":I
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v3, 0x4

    invoke-static {v6, v7}, Lorg/kobjects/xml/XmlReader;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    .line 402
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aput-object v0, v6, v3

    .line 404
    iget v5, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    .line 405
    .local v5, "p":I
    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->pushText(I)Z

    .line 407
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/kobjects/xml/XmlReader;->pop(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 409
    const/16 v6, 0x20

    if-eq v2, v6, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    goto/16 :goto_0
.end method

.method private final peekType()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    sparse-switch v0, :sswitch_data_0

    .line 331
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 315
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 319
    :sswitch_2
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    sparse-switch v0, :sswitch_data_1

    .line 328
    const/4 v0, 0x2

    goto :goto_0

    .line 321
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 323
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 326
    :sswitch_5
    const/16 v0, 0x3e7

    goto :goto_0

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch

    .line 319
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_5
        0x2f -> :sswitch_3
        0x3f -> :sswitch_5
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method private final pop(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 183
    .local v0, "result":Ljava/lang/String;
    iput p1, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    .line 184
    return-object v0
.end method

.method private final push(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/4 v3, 0x0

    .line 149
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    iget-object v2, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 153
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [C

    .line 154
    .local v0, "bigger":[C
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    .line 158
    .end local v0    # "bigger":[C
    :cond_1
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->txtBuf:[C

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    goto :goto_0
.end method

.method private final pushText(I)Z
    .locals 4
    .param p1, "delimiter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 464
    const/4 v1, 0x1

    .line 465
    .local v1, "whitespace":Z
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 468
    .local v0, "next":I
    :goto_0
    iget-boolean v2, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    if-nez v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 470
    if-ne p1, v3, :cond_1

    .line 471
    if-le v0, v3, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    .line 489
    :cond_0
    return v1

    .line 474
    :cond_1
    const/16 v2, 0x26

    if-ne v0, v2, :cond_3

    .line 475
    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->pushEntity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 476
    const/4 v1, 0x0

    .line 486
    :cond_2
    :goto_1
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    goto :goto_0

    .line 480
    :cond_3
    if-le v0, v3, :cond_4

    .line 481
    const/4 v1, 0x0

    .line 483
    :cond_4
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->push(I)V

    goto :goto_1
.end method

.method private final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 114
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 115
    .local v0, "r":I
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    iput v1, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 117
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    if-ne v1, v5, :cond_0

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    .line 139
    :goto_0
    return v0

    .line 121
    :cond_0
    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_2

    .line 122
    :cond_1
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kobjects/xml/XmlReader;->line:I

    .line 123
    iput v4, p0, Lorg/kobjects/xml/XmlReader;->column:I

    .line 124
    if-ne v0, v3, :cond_2

    iget v1, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    if-ne v1, v2, :cond_2

    .line 125
    iput v4, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 127
    :cond_2
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kobjects/xml/XmlReader;->column:I

    .line 129
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->srcPos:I

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->srcCount:I

    if-lt v1, v2, :cond_4

    .line 130
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/kobjects/xml/XmlReader;->srcBuf:[C

    iget-object v3, p0, Lorg/kobjects/xml/XmlReader;->srcBuf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lorg/kobjects/xml/XmlReader;->srcCount:I

    .line 131
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->srcCount:I

    if-gtz v1, :cond_3

    .line 132
    iput v5, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    goto :goto_0

    .line 135
    :cond_3
    iput v4, p0, Lorg/kobjects/xml/XmlReader;->srcPos:I

    .line 138
    :cond_4
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->srcBuf:[C

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->srcPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kobjects/xml/XmlReader;->srcPos:I

    aget-char v1, v1, v2

    iput v1, p0, Lorg/kobjects/xml/XmlReader;->peek1:I

    goto :goto_0
.end method

.method private final read(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 163
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->relaxed:Z

    if-eqz v0, :cond_1

    .line 164
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 165
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->skip()V

    .line 166
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final readName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x5f

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/16 v3, 0x3a

    .line 189
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    .line 190
    .local v1, "pos":I
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 191
    .local v0, "c":I
    if-lt v0, v7, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_0
    if-lt v0, v4, :cond_1

    if-le v0, v5, :cond_2

    :cond_1
    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_2

    iget-boolean v2, p0, Lorg/kobjects/xml/XmlReader;->relaxed:Z

    if-nez v2, :cond_2

    .line 196
    const-string v2, "name expected"

    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 199
    :cond_2
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->push(I)V

    .line 200
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    .line 208
    if-lt v0, v7, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_3
    if-lt v0, v4, :cond_4

    if-le v0, v5, :cond_2

    :cond_4
    const/16 v2, 0x30

    if-lt v0, v2, :cond_5

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_5
    if-eq v0, v6, :cond_2

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_2

    .line 210
    invoke-direct {p0, v1}, Lorg/kobjects/xml/XmlReader;->pop(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final skip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    :goto_0
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public defineCharacterEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 581
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 587
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 594
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 595
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 597
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 601
    :goto_1
    return-object v1

    .line 596
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 601
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->column:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 526
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    iget-object v2, p0, Lorg/kobjects/xml/XmlReader;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->TYPES:[Ljava/lang/String;

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->type:I

    aget-object v1, v1, v2

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/kobjects/xml/XmlReader;->column:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne v1, v3, :cond_3

    .line 533
    :cond_0
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne v1, v3, :cond_1

    .line 535
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    :cond_1
    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 545
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 526
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    const-string v1, "Other"

    goto :goto_0

    .line 540
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_3
    iget-boolean v1, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    if-eqz v1, :cond_4

    .line 541
    const-string v1, "[whitespace]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 543
    :cond_4
    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->pop(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kobjects/xml/XmlReader;->text:Ljava/lang/String;

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/kobjects/xml/XmlReader;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 610
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->degenerated:Z

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x3

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    .line 612
    iput-boolean v2, p0, Lorg/kobjects/xml/XmlReader;->degenerated:Z

    .line 613
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->depth:I

    .line 614
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    .line 665
    :goto_0
    return v0

    .line 617
    :cond_0
    iput v2, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    .line 618
    iput-boolean v4, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    .line 621
    :cond_1
    iput v2, p0, Lorg/kobjects/xml/XmlReader;->attributeCount:I

    .line 623
    iput-object v5, p0, Lorg/kobjects/xml/XmlReader;->name:Ljava/lang/String;

    .line 624
    iput-object v5, p0, Lorg/kobjects/xml/XmlReader;->text:Ljava/lang/String;

    .line 625
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->peekType()I

    move-result v0

    iput v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    .line 627
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    packed-switch v0, :pswitch_data_0

    .line 656
    invoke-direct {p0, v2}, Lorg/kobjects/xml/XmlReader;->parseLegacy(Z)V

    .line 661
    :goto_1
    :pswitch_0
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-gt v0, v3, :cond_1

    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->peekType()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 663
    :cond_2
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne v1, v3, :cond_3

    move v1, v4

    :goto_2
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    .line 665
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    goto :goto_0

    .line 630
    :pswitch_1
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->pushEntity()Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    .line 631
    iput v3, p0, Lorg/kobjects/xml/XmlReader;->type:I

    goto :goto_1

    .line 635
    :pswitch_2
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->parseStartTag()V

    goto :goto_1

    .line 639
    :pswitch_3
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->parseEndTag()V

    goto :goto_1

    .line 646
    :pswitch_4
    iget-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lorg/kobjects/xml/XmlReader;->pushText(I)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    goto :goto_1

    .line 650
    :pswitch_5
    invoke-direct {p0, v4}, Lorg/kobjects/xml/XmlReader;->parseLegacy(Z)V

    .line 651
    iput-boolean v2, p0, Lorg/kobjects/xml/XmlReader;->isWhitespace:Z

    .line 652
    iput v3, p0, Lorg/kobjects/xml/XmlReader;->type:I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 663
    goto :goto_2

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public final pushEntity()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 419
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 421
    iget v3, p0, Lorg/kobjects/xml/XmlReader;->txtPos:I

    .line 423
    .local v3, "pos":I
    :goto_0
    iget-boolean v6, p0, Lorg/kobjects/xml/XmlReader;->eof:Z

    if-nez v6, :cond_0

    iget v6, p0, Lorg/kobjects/xml/XmlReader;->peek0:I

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_0

    .line 424
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/kobjects/xml/XmlReader;->push(I)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-direct {p0, v3}, Lorg/kobjects/xml/XmlReader;->pop(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "code":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kobjects/xml/XmlReader;->read()I

    .line 430
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_3

    .line 431
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v0, v6

    .line 435
    .local v0, "c":I
    :goto_1
    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->push(I)V

    .line 436
    if-gt v0, v10, :cond_2

    move v6, v8

    .line 452
    .end local v0    # "c":I
    :goto_2
    return v6

    .line 431
    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    goto :goto_1

    .restart local v0    # "c":I
    :cond_2
    move v6, v9

    .line 436
    goto :goto_2

    .line 439
    .end local v0    # "c":I
    :cond_3
    iget-object v6, p0, Lorg/kobjects/xml/XmlReader;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 440
    .local v4, "result":Ljava/lang/String;
    const/4 v5, 0x1

    .line 442
    .local v5, "whitespace":Z
    if-nez v4, :cond_4

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 446
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 447
    .local v0, "c":C
    if-le v0, v10, :cond_5

    .line 448
    const/4 v5, 0x0

    .line 449
    :cond_5
    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->push(I)V

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "c":C
    :cond_6
    move v6, v5

    .line 452
    goto :goto_2
.end method

.method public readText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    iget v1, p0, Lorg/kobjects/xml/XmlReader;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 721
    const-string v1, ""

    .line 725
    :goto_0
    return-object v1

    .line 723
    :cond_0
    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->getText()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->next()I

    move-object v1, v0

    .line 725
    goto :goto_0
.end method

.method public require(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 694
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->next()I

    .line 697
    :cond_0
    iget v0, p0, Lorg/kobjects/xml/XmlReader;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/kobjects/xml/XmlReader;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kobjects/xml/XmlReader;->exception(Ljava/lang/String;)V

    .line 700
    :cond_2
    return-void
.end method
