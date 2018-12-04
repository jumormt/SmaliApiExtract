.class public Lorg/kxml2/kdom/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final CDSECT:I = 0x5

.field public static final COMMENT:I = 0x9

.field public static final DOCDECL:I = 0xa

.field public static final DOCUMENT:I = 0x0

.field public static final ELEMENT:I = 0x2

.field public static final ENTITY_REF:I = 0x6

.field public static final IGNORABLE_WHITESPACE:I = 0x7

.field public static final PROCESSING_INSTRUCTION:I = 0x8

.field public static final TEXT:I = 0x4


# instance fields
.field protected children:Ljava/util/Vector;

.field protected types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "child"    # Ljava/lang/Object;

    .prologue
    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    .line 54
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    .line 57
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 58
    instance-of v1, p3, Lorg/kxml2/kdom/Element;

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Element obj expected)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    move-object v0, p3

    check-cast v0, Lorg/kxml2/kdom/Element;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lorg/kxml2/kdom/Element;->setParent(Lorg/kxml2/kdom/Node;)V

    .line 66
    :cond_3
    iget-object v1, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v1, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 67
    iget-object v1, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    int-to-char v2, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 68
    return-void

    .line 63
    :cond_4
    instance-of v1, p3, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "String expected"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/kxml2/kdom/Node;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/kxml2/kdom/Node;->addChild(IILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lorg/kxml2/kdom/Element;

    invoke-direct {v0}, Lorg/kxml2/kdom/Element;-><init>()V

    .line 87
    .local v0, "e":Lorg/kxml2/kdom/Element;
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lorg/kxml2/kdom/Element;->namespace:Ljava/lang/String;

    .line 88
    iput-object p2, v0, Lorg/kxml2/kdom/Element;->name:Ljava/lang/String;

    .line 89
    return-object v0

    :cond_0
    move-object v1, p1

    .line 87
    goto :goto_0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getElement(I)Lorg/kxml2/kdom/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "child":Ljava/lang/Object;
    instance-of v1, v0, Lorg/kxml2/kdom/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/kxml2/kdom/Element;

    .end local v0    # "child":Ljava/lang/Object;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0    # "child":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 120
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/kxml2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lorg/kxml2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "j":I
    if-eq v0, v5, :cond_0

    if-eq v1, v5, :cond_2

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Element {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v0, v5, :cond_1

    const-string v4, " not found in "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v4, " more than once in "

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0, v0}, Lorg/kxml2/kdom/Node;->getElement(I)Lorg/kxml2/kdom/Element;

    move-result-object v2

    return-object v2
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->getChild(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/kxml2/kdom/Node;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0    # "this":Lorg/kxml2/kdom/Node;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/kxml2/kdom/Node;->getChildCount()I

    move-result v2

    .line 202
    .local v2, "len":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 204
    invoke-virtual {p0, v1}, Lorg/kxml2/kdom/Node;->getElement(I)Lorg/kxml2/kdom/Element;

    move-result-object v0

    .line 206
    .local v0, "child":Lorg/kxml2/kdom/Element;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v1

    .line 211
    .end local v0    # "child":Lorg/kxml2/kdom/Element;
    :goto_1
    return v3

    .line 202
    .restart local v0    # "child":Lorg/kxml2/kdom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "child":Lorg/kxml2/kdom/Element;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isText(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->getType(I)I

    move-result v0

    .line 216
    .local v0, "t":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 226
    const/4 v1, 0x0

    .line 229
    .local v1, "leave":Z
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 233
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 258
    if-ne v2, v5, :cond_2

    const/4 v3, 0x4

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/kxml2/kdom/Node;->addChild(ILjava/lang/Object;)V

    .line 266
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 269
    :goto_2
    if-eqz v1, :cond_0

    .line 270
    return-void

    .line 237
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/kxml2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    .line 242
    .local v0, "child":Lorg/kxml2/kdom/Element;
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lorg/kxml2/kdom/Node;->addChild(ILjava/lang/Object;)V

    .line 247
    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Element;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 253
    .end local v0    # "child":Lorg/kxml2/kdom/Element;
    :pswitch_1
    const/4 v1, 0x1

    .line 254
    goto :goto_2

    :cond_2
    move v3, v2

    .line 258
    goto :goto_0

    .line 261
    :cond_3
    if-ne v2, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 264
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lorg/kxml2/kdom/Node;->addChild(ILjava/lang/Object;)V

    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChild(I)V
    .locals 5
    .param p1, "idx"    # I

    .prologue
    .line 275
    iget-object v2, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 280
    iget-object v2, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 282
    .local v1, "n":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 283
    iget-object v2, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, p0, Lorg/kxml2/kdom/Node;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 288
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 314
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 315
    return-void
.end method

.method public writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v4, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    if-nez v4, :cond_1

    .line 365
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v4, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 325
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Lorg/kxml2/kdom/Node;->getType(I)I

    move-result v3

    .line 327
    .local v3, "type":I
    iget-object v4, p0, Lorg/kxml2/kdom/Node;->children:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "child":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    .line 362
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :pswitch_1
    check-cast v0, Lorg/kxml2/kdom/Element;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 338
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_1

    .line 354
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Ljava/lang/String;

    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
