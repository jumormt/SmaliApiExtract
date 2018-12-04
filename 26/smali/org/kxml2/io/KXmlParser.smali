.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final LEGACY:I = 0x3e7

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECL:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private column:I

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private entityMap:Ljava/util/Hashtable;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private line:I

.field private location:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private peek:[I

.field private peekCount:I

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private srcBuf:[C

.field private srcCount:I

.field private srcPos:I

.field private standalone:Ljava/lang/Boolean;

.field private token:Z

.field private txtBuf:[C

.field private txtPos:I

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;

.field private wasCR:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    const/16 v1, 0x10

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 69
    new-array v0, v4, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 83
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    .line 99
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

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    .line 101
    return-void

    :cond_0
    move v0, v4

    .line 99
    goto :goto_0
.end method

.method private final adjustNsp()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 119
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 120
    .local v1, "attrName":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 123
    .local v4, "cut":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 124
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "prefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 135
    const/4 v0, 0x1

    .line 116
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 127
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    move-object v7, v1

    .line 129
    .restart local v7    # "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 138
    :cond_2
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 140
    .local v6, "j":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 141
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 142
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 144
    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 151
    :cond_3
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 162
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    .end local v6    # "j":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_8

    .line 163
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    sub-int v5, v8, v9

    :goto_3
    if-ltz v5, :cond_8

    .line 165
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 166
    .restart local v1    # "attrName":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 168
    .restart local v4    # "cut":I
    if-nez v4, :cond_5

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_5

    .line 169
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_5
    const/4 v8, -0x1

    if-eq v4, v8, :cond_7

    .line 173
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p0, v3}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "attrNs":Ljava/lang/String;
    if-nez v2, :cond_6

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_6

    .line 180
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 183
    :cond_6
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 184
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 185
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 163
    .end local v2    # "attrNs":Ljava/lang/String;
    .end local v3    # "attrPrefix":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 203
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v4    # "cut":I
    :cond_8
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 205
    .restart local v4    # "cut":I
    if-nez v4, :cond_9

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 208
    :cond_9
    const/4 v8, -0x1

    if-eq v4, v8, :cond_a

    .line 209
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 210
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 213
    :cond_a
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 215
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 216
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 218
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 221
    :cond_c
    return v0
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .prologue
    const/4 v2, 0x0

    .line 225
    array-length v1, p1

    if-lt v1, p2, :cond_0

    move-object v1, p1

    .line 229
    :goto_0
    return-object v1

    .line 227
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 228
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 229
    goto :goto_0
.end method

.method private final error(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 242
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final get(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 577
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final isProp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "n1"    # Ljava/lang/String;
    .param p2, "prop"    # Z
    .param p3, "n2"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "http://xmlpull.org/v1/doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    .line 107
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private final nextImpl()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 254
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-nez v1, :cond_0

    .line 255
    const-string v1, "No Input specified"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 257
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v1, v6, :cond_1

    .line 258
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 261
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 266
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v1, :cond_3

    .line 267
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 268
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 335
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 273
    :cond_3
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 275
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_4
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 278
    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    :cond_5
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 298
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 299
    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 304
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    packed-switch v1, :pswitch_data_0

    .line 333
    :pswitch_1
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->parseLegacy(Z)I

    move-result v1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 334
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v2, 0x3e6

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    goto :goto_0

    .line 311
    :pswitch_3
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    goto :goto_0

    .line 315
    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->parseEndTag()V

    goto :goto_0

    .line 322
    :pswitch_5
    const/16 v1, 0x3c

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-nez v2, :cond_6

    move v2, v5

    :goto_2
    invoke-direct {p0, v1, v2}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 323
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_2

    .line 324
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v1, :cond_2

    .line 325
    const/4 v1, 0x7

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    goto :goto_0

    :cond_6
    move v2, v4

    .line 322
    goto :goto_2

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final parseDoctype(Z)V
    .locals 4
    .param p1, "push"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v1, 0x1

    .line 477
    .local v1, "nesting":I
    const/4 v2, 0x0

    .line 482
    .local v2, "quoted":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 483
    .local v0, "i":I
    sparse-switch v0, :sswitch_data_0

    .line 505
    :cond_1
    :goto_1
    if-eqz p1, :cond_0

    .line 506
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_0

    .line 486
    :sswitch_0
    const-string v3, "Unexpected EOF"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 501
    :goto_2
    return-void

    .line 490
    :sswitch_1
    if-nez v2, :cond_2

    const/4 v3, 0x1

    move v2, v3

    .line 491
    :goto_3
    goto :goto_1

    .line 490
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_3

    .line 494
    :sswitch_2
    if-nez v2, :cond_1

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :sswitch_3
    if-nez v2, :cond_1

    .line 500
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    goto :goto_2

    .line 483
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x27 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private final parseEndTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 516
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 517
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 518
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 519
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 521
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int/lit8 v0, v1, 0x2

    .line 523
    .local v0, "sp":I
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_1

    .line 524
    const-string v1, "element stack empty"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 525
    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 549
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 550
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private final parseLegacy(Z)I
    .locals 11
    .param p1, "push"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 343
    const-string v4, ""

    .line 346
    .local v4, "req":Ljava/lang/String;
    const/4 v3, 0x0

    .line 348
    .local v3, "prev":I
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 349
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 351
    .local v0, "c":I
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_e

    .line 352
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x78

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x58

    if-ne v8, v9, :cond_d

    :cond_0
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_1

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4d

    if-ne v8, v9, :cond_d

    .line 355
    :cond_1
    if-eqz p1, :cond_2

    .line 356
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 357
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 359
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 360
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 362
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_d

    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_d

    .line 364
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->line:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->column:I

    const/4 v9, 0x4

    if-le v8, v9, :cond_5

    .line 365
    :cond_4
    const-string v8, "PI must not start with xml"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 367
    :cond_5
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->parseStartTag(Z)V

    .line 369
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_6

    const-string v8, "version"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 370
    :cond_6
    const-string v8, "version expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 372
    :cond_7
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 374
    const/4 v2, 0x1

    .line 376
    .local v2, "pos":I
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_8

    const-string v8, "encoding"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 378
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v8, v8, v9

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 379
    add-int/lit8 v2, v2, 0x1

    .line 382
    :cond_8
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v2, v8, :cond_9

    const-string v8, "standalone"

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v10, v2, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 384
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v9, v2, 0x4

    add-int/lit8 v9, v9, 0x3

    aget-object v6, v8, v9

    .line 385
    .local v6, "st":Ljava/lang/String;
    const-string v8, "yes"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 386
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 391
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 394
    .end local v6    # "st":Ljava/lang/String;
    :cond_9
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v2, v8, :cond_a

    .line 395
    const-string v8, "illegal xmldecl"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 397
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 398
    const/4 v8, 0x0

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 400
    const/16 v8, 0x3e6

    .line 468
    .end local v2    # "pos":I
    :goto_1
    return v8

    .line 387
    .restart local v2    # "pos":I
    .restart local v6    # "st":Ljava/lang/String;
    :cond_b
    const-string v8, "no"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 388
    new-instance v8, Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 390
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal standalone value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .end local v2    # "pos":I
    .end local v6    # "st":Ljava/lang/String;
    :cond_d
    const/16 v7, 0x3f

    .line 409
    .local v7, "term":I
    const/16 v5, 0x8

    .line 434
    .local v5, "result":I
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_12

    .line 435
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 411
    .end local v1    # "i":I
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_e
    const/16 v8, 0x21

    if-ne v0, v8, :cond_11

    .line 412
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_f

    .line 413
    const/16 v5, 0x9

    .line 414
    .restart local v5    # "result":I
    const-string v4, "--"

    .line 415
    const/16 v7, 0x2d

    .restart local v7    # "term":I
    goto :goto_2

    .line 417
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_f
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_10

    .line 418
    const/4 v5, 0x5

    .line 419
    .restart local v5    # "result":I
    const-string v4, "[CDATA["

    .line 420
    const/16 v7, 0x5d

    .line 421
    .restart local v7    # "term":I
    const/4 p1, 0x1

    goto :goto_2

    .line 424
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_10
    const/16 v5, 0xa

    .line 425
    .restart local v5    # "result":I
    const-string v4, "DOCTYPE"

    .line 426
    const/4 v7, -0x1

    .restart local v7    # "term":I
    goto :goto_2

    .line 430
    .end local v5    # "result":I
    .end local v7    # "term":I
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 431
    const/16 v8, 0x9

    goto :goto_1

    .line 437
    .restart local v1    # "i":I
    .restart local v5    # "result":I
    .restart local v7    # "term":I
    :cond_12
    const/16 v8, 0xa

    if-ne v5, v8, :cond_15

    .line 438
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->parseDoctype(Z)V

    :cond_13
    :goto_4
    move v8, v5

    .line 468
    goto/16 :goto_1

    .line 455
    :cond_14
    move v3, v0

    .line 441
    :cond_15
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 442
    const/4 v8, -0x1

    if-ne v0, v8, :cond_16

    .line 443
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 444
    const/16 v8, 0x9

    goto/16 :goto_1

    .line 447
    :cond_16
    if-eqz p1, :cond_17

    .line 448
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 450
    :cond_17
    const/16 v8, 0x3f

    if-eq v7, v8, :cond_18

    if-ne v0, v7, :cond_14

    :cond_18
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    if-ne v8, v7, :cond_14

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_14

    .line 458
    const/16 v8, 0x2d

    if-ne v7, v8, :cond_19

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_19

    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_19

    .line 459
    const-string v8, "illegal comment delimiter: --->"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 461
    :cond_19
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 462
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 464
    if-eqz p1, :cond_13

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_13

    .line 465
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    goto :goto_4
.end method

.method private final parseStartTag(Z)V
    .locals 13
    .param p1, "xmldecl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 606
    if-nez p1, :cond_0

    .line 607
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 608
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 609
    const/4 v8, 0x0

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 612
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 614
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v2

    .line 616
    .local v2, "c":I
    if-eqz p1, :cond_2

    .line 617
    const/16 v8, 0x3f

    if-ne v2, v8, :cond_5

    .line 618
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 619
    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 724
    :goto_1
    return-void

    .line 624
    :cond_2
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_4

    .line 625
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 626
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 627
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 628
    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 693
    :goto_2
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    shl-int/lit8 v7, v8, 0x2

    .line 695
    .local v7, "sp":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 696
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 698
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 699
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v8, v8, 0x4

    new-array v1, v8, [I

    .line 700
    .local v1, "bigger":[I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v11, v11

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 704
    .end local v1    # "bigger":[I
    :cond_3
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget v10, v10, v11

    aput v10, v8, v9

    .line 716
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v8, :cond_c

    .line 717
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    .line 721
    :goto_3
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v9, v8, v7

    .line 722
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 723
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v9, v7, 0x2

    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    goto :goto_1

    .line 632
    .end local v7    # "sp":I
    :cond_4
    const/16 v8, 0x3e

    if-ne v2, v8, :cond_5

    if-nez p1, :cond_5

    .line 633
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_2

    .line 638
    :cond_5
    const/4 v8, -0x1

    if-ne v2, v8, :cond_6

    .line 639
    const-string v8, "Unexpected EOF"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    :cond_6
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 647
    const-string v8, "attr name expected"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    :cond_7
    iget v8, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v4, v8, 0x2

    .line 654
    .local v4, "i":I
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x4

    invoke-direct {p0, v8, v9}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 656
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    const-string v9, ""

    aput-object v9, v8, v4

    .line 657
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/4 v9, 0x0

    aput-object v9, v8, v5

    .line 658
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aput-object v0, v8, v4

    .line 660
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 662
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_9

    .line 663
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_8

    .line 664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attr.value missing f. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 666
    :cond_8
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v0, v8, v5

    goto/16 :goto_0

    .line 669
    :cond_9
    const/16 v8, 0x3d

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 670
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 671
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v3

    .line 673
    .local v3, "delimiter":I
    const/16 v8, 0x27

    if-eq v3, v8, :cond_b

    const/16 v8, 0x22

    if-eq v3, v8, :cond_b

    .line 674
    iget-boolean v8, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v8, :cond_a

    .line 675
    const-string v8, "attr value delimiter missing!"

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 677
    :cond_a
    const/16 v3, 0x20

    .line 682
    :goto_4
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 683
    .local v6, "p":I
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lorg/kxml2/io/KXmlParser;->pushText(IZ)V

    .line 685
    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 686
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 688
    const/16 v8, 0x20

    if-eq v3, v8, :cond_1

    .line 689
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto/16 :goto_0

    .line 680
    .end local v6    # "p":I
    :cond_b
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_4

    .line 719
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v3    # "delimiter":I
    .end local v5    # "i":I
    .restart local v7    # "sp":I
    :cond_c
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private final peek(I)I
    .locals 7
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 875
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-lt p1, v1, :cond_6

    .line 879
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v1, v1

    if-gt v1, v5, :cond_0

    .line 880
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 893
    .local v0, "nw":I
    :goto_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 894
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    .line 895
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    goto :goto_0

    .line 881
    .end local v0    # "nw":I
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-ge v1, v2, :cond_1

    .line 882
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    aget-char v0, v1, v2

    .restart local v0    # "nw":I
    goto :goto_1

    .line 884
    .end local v0    # "nw":I
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 885
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    if-gtz v1, :cond_2

    .line 886
    const/4 v0, -0x1

    .line 890
    .restart local v0    # "nw":I
    :goto_2
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    goto :goto_1

    .line 888
    .end local v0    # "nw":I
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    aget-char v0, v1, v4

    .restart local v0    # "nw":I
    goto :goto_2

    .line 898
    :cond_3
    if-ne v0, v6, :cond_5

    .line 899
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    if-nez v1, :cond_4

    .line 900
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v6, v1, v2

    .line 905
    :cond_4
    :goto_3
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->wasCR:Z

    goto :goto_0

    .line 903
    :cond_5
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    aput v0, v1, v2

    goto :goto_3

    .line 909
    .end local v0    # "nw":I
    :cond_6
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v1, v1, p1

    return v1
.end method

.method private final peekType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 572
    const/4 v0, 0x4

    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 558
    goto :goto_0

    .line 560
    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 562
    :sswitch_2
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 569
    const/4 v0, 0x2

    goto :goto_0

    .line 564
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 567
    :sswitch_4
    const/16 v0, 0x3e7

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch

    .line 562
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_4
        0x2f -> :sswitch_3
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private final push(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/4 v3, 0x0

    .line 590
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    const/16 v2, 0x20

    if-gt p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    and-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 592
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 593
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    new-array v0, v1, [C

    .line 594
    .local v0, "bigger":[C
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    .line 598
    .end local v0    # "bigger":[C
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 599
    return-void

    :cond_1
    move v2, v3

    .line 590
    goto :goto_0
.end method

.method private final pushEntity()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x23

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 733
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 736
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 739
    .local v3, "pos":I
    :goto_0
    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 740
    .local v0, "c":I
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_2

    .line 741
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 766
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "code":Ljava/lang/String;
    sub-int v5, v3, v8

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 768
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 769
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 772
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_9

    .line 773
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_8

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    .line 777
    :goto_1
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 793
    .end local v1    # "code":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 744
    :cond_2
    const/16 v5, 0x80

    if-ge v0, v5, :cond_7

    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_7

    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_7

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_5

    const/16 v5, 0x5a

    if-le v0, v5, :cond_7

    :cond_5
    const/16 v5, 0x5f

    if-eq v0, v5, :cond_7

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_7

    if-eq v0, v9, :cond_7

    .line 751
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v5, :cond_6

    .line 752
    const-string v5, "unterminated entity ref"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 755
    :cond_6
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broken entitiy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v3, v8

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 763
    :cond_7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto/16 :goto_0

    .line 773
    .restart local v1    # "code":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    goto :goto_1

    .line 781
    :cond_9
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 783
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_a

    move v5, v8

    :goto_3
    iput-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 785
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v5, :cond_b

    .line 786
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    if-nez v5, :cond_1

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unresolved: &"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 783
    goto :goto_3

    .line 790
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 791
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private final pushText(IZ)V
    .locals 8
    .param p1, "delimiter"    # I
    .param p2, "resolveEntities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x3e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x20

    .line 804
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    .line 805
    .local v1, "next":I
    const/4 v0, 0x0

    .line 807
    .local v0, "cbrCount":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 809
    if-ne p1, v3, :cond_1

    .line 810
    if-le v1, v3, :cond_0

    if-ne v1, v6, :cond_1

    .line 836
    :cond_0
    return-void

    .line 813
    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_3

    .line 814
    if-eqz p2, :cond_0

    .line 817
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->pushEntity()V

    .line 826
    :goto_1
    if-ne v1, v6, :cond_2

    if-lt v0, v5, :cond_2

    if-eq p1, v7, :cond_2

    .line 827
    const-string v2, "Illegal: ]]>"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 829
    :cond_2
    if-ne v1, v7, :cond_5

    .line 830
    add-int/lit8 v0, v0, 0x1

    .line 834
    :goto_2
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v1

    goto :goto_0

    .line 819
    :cond_3
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v5, :cond_4

    .line 820
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    .line 821
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_1

    .line 824
    :cond_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->push(I)V

    goto :goto_1

    .line 832
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 848
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    if-nez v1, :cond_1

    .line 849
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 858
    .local v0, "result":I
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 860
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 862
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 864
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 865
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 868
    :cond_0
    return v0

    .line 851
    .end local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v0, v1, v3

    .line 852
    .restart local v0    # "result":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->peek:[I

    aget v2, v2, v4

    aput v2, v1, v3

    goto :goto_0
.end method

.method private final read(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v0

    .line 841
    .local v0, "a":I
    if-eq v0, p1, :cond_0

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method private final readName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v4, 0x0

    .line 915
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 916
    .local v1, "pos":I
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 917
    .local v0, "c":I
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_0
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    if-eq v0, v8, :cond_2

    if-eq v0, v5, :cond_2

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_2

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-nez v3, :cond_2

    .line 923
    const-string v3, "name expected"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->error(Ljava/lang/String;)V

    .line 926
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->push(I)V

    .line 927
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 936
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_3
    if-lt v0, v6, :cond_4

    if-le v0, v7, :cond_2

    :cond_4
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_5
    if-eq v0, v8, :cond_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_2

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2

    const/16 v3, 0xb7

    if-ge v0, v3, :cond_2

    .line 938
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "result":Ljava/lang/String;
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 940
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
    .line 946
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->peek(I)I

    move-result v0

    .line 947
    .local v0, "c":I
    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 951
    :cond_0
    return-void

    .line 949
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->read()I

    goto :goto_0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "entity replacement text must be defined after setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 1280
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1298
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1300
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1292
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1294
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1304
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1305
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1284
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1310
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1312
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1317
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    sub-int v0, v1, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1318
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1320
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 1323
    :goto_1
    return-object v1

    .line 1317
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 1323
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->column:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1327
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1108
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1113
    :goto_0
    return v0

    .line 1110
    :cond_0
    const-string v0, "relaxed"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1113
    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1153
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1166
    :goto_0
    return-object v1

    .line 1155
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 1158
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1159
    if-nez p1, :cond_2

    .line 1160
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1161
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1164
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 1158
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 1166
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 1138
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1140
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x10

    const/4 v6, 0x3

    const-string v10, " in "

    const-string v7, ":"

    .line 1175
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v5, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1179
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_9

    .line 1180
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 1181
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1182
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1183
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 1184
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1186
    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1190
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 1191
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1192
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1193
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 1175
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 1199
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "cnt":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1213
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->column:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 1215
    const-string v4, " in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1222
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1201
    :cond_9
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 1202
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    .line 1203
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1204
    :cond_a
    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_b

    .line 1205
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1207
    :cond_b
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_c

    .line 1209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1210
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1218
    .end local v3    # "text":Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_8

    .line 1219
    const-string v4, " in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1128
    const-string v0, "xmldecl-version"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1134
    :goto_0
    return-object v0

    .line 1130
    :cond_0
    const-string v0, "xmldecl-standalone"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 1132
    :cond_1
    const-string v0, "location"

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1134
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1240
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "poslen"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1245
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 1246
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1247
    aput v2, p1, v2

    .line 1248
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, p1, v3

    .line 1249
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1258
    :goto_0
    return-object v0

    .line 1251
    :cond_0
    aput v2, p1, v2

    .line 1252
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    aput v0, p1, v3

    .line 1253
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->txtBuf:[C

    goto :goto_0

    .line 1256
    :cond_1
    aput v4, p1, v2

    .line 1257
    aput v4, p1, v3

    .line 1258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1288
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1274
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1275
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1276
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1234
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1235
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1236
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1332
    iput v3, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1334
    const/16 v0, 0x270f

    .line 1335
    .local v0, "minType":I
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1338
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1339
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ge v1, v0, :cond_1

    .line 1340
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1344
    :cond_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekType()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 1346
    :cond_2
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1347
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-le v1, v2, :cond_3

    .line 1348
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1350
    :cond_3
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1369
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 1370
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1372
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1373
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1375
    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1389
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1390
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1392
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1396
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1397
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 1403
    :goto_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1404
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1406
    :cond_1
    return-object v0

    .line 1401
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1355
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1356
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->txtPos:I

    .line 1358
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->token:Z

    .line 1359
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->nextImpl()V

    .line 1360
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1381
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1384
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    .line 1386
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1411
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    .line 1417
    :goto_0
    return-void

    .line 1413
    :cond_0
    const/4 v0, 0x0

    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    goto :goto_0

    .line 1416
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 19
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "_enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 988
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 989
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 990
    move-object/from16 v7, p2

    .line 992
    .local v7, "enc":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 993
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 997
    :cond_0
    if-nez v7, :cond_3

    .line 1000
    const/4 v4, 0x0

    .line 1002
    .local v4, "chk":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v14, v0

    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    .line 1003
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1004
    .local v8, "i":I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_5

    .line 1010
    .end local v8    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_3

    .line 1011
    sparse-switch v4, :sswitch_data_0

    .line 1070
    :cond_2
    :goto_1
    const/high16 v14, -0x10000

    and-int/2addr v14, v4

    const/high16 v15, -0x1010000

    if-ne v14, v15, :cond_8

    .line 1071
    const-string v7, "UTF-16BE"

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1074
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1091
    .end local v4    # "chk":I
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    .line 1092
    const-string v7, "UTF-8"

    .line 1094
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v13, v0

    .line 1095
    .local v13, "sc":I
    new-instance v14, Ljava/io/InputStreamReader;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1096
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1097
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 1105
    return-void

    .line 1006
    .end local v13    # "sc":I
    .restart local v4    # "chk":I
    .restart local v8    # "i":I
    :cond_5
    shl-int/lit8 v14, v4, 0x8

    or-int v4, v14, v8

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1099
    .end local v4    # "chk":I
    .end local v8    # "i":I
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 1100
    .local v6, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid stream or encoding: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v14

    .line 1013
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "chk":I
    :sswitch_0
    :try_start_1
    const-string v7, "UTF-32BE"

    .line 1014
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_2

    .line 1018
    :sswitch_1
    const-string v7, "UTF-32LE"

    .line 1019
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto :goto_2

    .line 1023
    :sswitch_2
    const-string v7, "UTF-32BE"

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1025
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1029
    :sswitch_3
    const-string v7, "UTF-32LE"

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1031
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1035
    :sswitch_4
    const-string v7, "UTF-16BE"

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1038
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1042
    :sswitch_5
    const-string v7, "UTF-16LE"

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x3c

    aput-char v16, v14, v15

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x3f

    aput-char v16, v14, v15

    .line 1045
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1050
    :cond_6
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1051
    .restart local v8    # "i":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_2

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v15, v0

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move v0, v8

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1054
    const/16 v14, 0x3e

    if-ne v8, v14, :cond_6

    .line 1055
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    move/from16 v16, v0

    move-object v0, v12

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1056
    .local v12, "s":Ljava/lang/String;
    const-string v14, "encoding"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1057
    .local v9, "i0":I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    move v10, v9

    .line 1059
    .end local v9    # "i0":I
    .local v10, "i0":I
    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_7

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_7

    .line 1060
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i0":I
    .restart local v9    # "i0":I
    move v10, v9

    .end local v9    # "i0":I
    .restart local v10    # "i0":I
    goto :goto_3

    .line 1061
    :cond_7
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i0":I
    .restart local v9    # "i0":I
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1062
    .local v5, "deli":C
    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1063
    .local v11, "i1":I
    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1064
    goto/16 :goto_1

    .line 1076
    .end local v5    # "deli":C
    .end local v8    # "i":I
    .end local v9    # "i0":I
    .end local v11    # "i1":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_8
    const/high16 v14, -0x10000

    and-int/2addr v14, v4

    const/high16 v15, -0x20000

    if-ne v14, v15, :cond_9

    .line 1077
    const-string v7, "UTF-16LE"

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-char v17, v17, v18

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v14, v15

    .line 1080
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I

    goto/16 :goto_2

    .line 1082
    :cond_9
    and-int/lit16 v14, v4, -0x100

    const v15, -0x10444100

    if-ne v14, v15, :cond_3

    .line 1083
    const-string v7, "UTF-8"

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/kxml2/io/KXmlParser;->srcBuf:[C

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget-char v16, v16, v17

    aput-char v16, v14, v15

    .line 1085
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/kxml2/io/KXmlParser;->srcCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1011
    nop

    :sswitch_data_0
    .sparse-switch
        -0x20000 -> :sswitch_1
        0x3c -> :sswitch_2
        0xfeff -> :sswitch_0
        0x3c003f -> :sswitch_4
        0x3c000000 -> :sswitch_3
        0x3c003f00 -> :sswitch_5
        0x3c3f786d -> :sswitch_6
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 956
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 958
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->line:I

    .line 959
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->column:I

    .line 960
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 961
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 962
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 963
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 964
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 965
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 966
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 967
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 969
    if-nez p1, :cond_0

    .line 983
    :goto_0
    return-void

    .line 972
    :cond_0
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcPos:I

    .line 973
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->srcCount:I

    .line 974
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->peekCount:I

    .line 975
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 977
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    .line 978
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->entityMap:Ljava/util/Hashtable;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1421
    const/4 v0, 0x1

    const-string v1, "location"

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/Object;

    .line 1425
    return-void

    .line 1424
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1436
    invoke-virtual {p0, v3, v2, v2}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1437
    const/4 v1, 0x1

    .line 1438
    .local v1, "level":I
    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 1439
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    move-result v0

    .line 1440
    .local v0, "eventType":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1441
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1443
    :cond_1
    if-ne v0, v3, :cond_0

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1447
    .end local v0    # "eventType":I
    :cond_2
    return-void
.end method
