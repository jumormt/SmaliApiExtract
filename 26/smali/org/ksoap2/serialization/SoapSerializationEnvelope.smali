.class public Lorg/ksoap2/serialization/SoapSerializationEnvelope;
.super Lorg/ksoap2/SoapEnvelope;
.source "SoapSerializationEnvelope.java"


# static fields
.field private static final ANY_TYPE_LABEL:Ljava/lang/String; = "anyType"

.field private static final ARRAY_MAPPING_NAME:Ljava/lang/String; = "Array"

.field private static final ARRAY_TYPE_LABEL:Ljava/lang/String; = "arrayType"

.field static final DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

.field private static final HREF_LABEL:Ljava/lang/String; = "href"

.field private static final ID_LABEL:Ljava/lang/String; = "id"

.field private static final ITEM_LABEL:Ljava/lang/String; = "item"

.field private static final NIL_LABEL:Ljava/lang/String; = "nil"

.field private static final NULL_LABEL:Ljava/lang/String; = "null"

.field protected static final QNAME_MARSHAL:I = 0x3

.field protected static final QNAME_NAMESPACE:I = 0x0

.field protected static final QNAME_TYPE:I = 0x1

.field private static final ROOT_LABEL:Ljava/lang/String; = "root"

.field private static final TYPE_LABEL:Ljava/lang/String; = "type"


# instance fields
.field protected addAdornments:Z

.field protected classToQName:Ljava/util/Hashtable;

.field public dotNet:Z

.field idMap:Ljava/util/Hashtable;

.field public implicitTypes:Z

.field multiRef:Ljava/util/Vector;

.field public properties:Ljava/util/Hashtable;

.field protected qNameToClass:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/ksoap2/serialization/DM;

    invoke-direct {v0}, Lorg/ksoap2/serialization/DM;-><init>()V

    sput-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapEnvelope;-><init>(I)V

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    .line 84
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "Array"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    invoke-interface {v0, p0}, Lorg/ksoap2/serialization/Marshal;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    .line 86
    return-void
.end method

.method private getIndex(Ljava/lang/String;II)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "dflt"    # I

    .prologue
    .line 245
    if-nez p1, :cond_0

    move v0, p3

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p4, "marshal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    if-eqz p4, :cond_0

    .line 621
    check-cast p4, Lorg/ksoap2/serialization/Marshal;

    .end local p4    # "marshal":Ljava/lang/Object;
    invoke-interface {p4, p1, p2}, Lorg/ksoap2/serialization/Marshal;->writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    .line 630
    .end local p2    # "element":Ljava/lang/Object;
    :goto_0
    return-void

    .line 622
    .restart local p2    # "element":Ljava/lang/Object;
    .restart local p4    # "marshal":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v0, :cond_1

    .line 623
    check-cast p2, Lorg/ksoap2/serialization/SoapObject;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    goto :goto_0

    .line 624
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lorg/ksoap2/serialization/KvmSerializable;

    if-eqz v0, :cond_2

    .line 625
    check-cast p2, Lorg/ksoap2/serialization/KvmSerializable;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    goto :goto_0

    .line 626
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 627
    check-cast p2, Ljava/util/Vector;

    .end local p2    # "element":Ljava/lang/Object;
    iget-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    goto :goto_0

    .line 629
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 488
    return-void
.end method

.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "marshal"    # Lorg/ksoap2/serialization/Marshal;

    .prologue
    const/4 v4, 0x0

    .line 477
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v1, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v1, p1, p2, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    move-object v2, p3

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void

    :cond_0
    move-object v2, p4

    .line 477
    goto :goto_0
.end method

.method public addTemplate(Lorg/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "so"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 496
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v1, Lorg/ksoap2/serialization/SoapPrimitive;

    iget-object v2, p1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void
.end method

.method public getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 445
    if-nez p1, :cond_1

    .line 447
    instance-of v4, p2, Lorg/ksoap2/serialization/SoapObject;

    if-nez v4, :cond_0

    instance-of v4, p2, Lorg/ksoap2/serialization/SoapPrimitive;

    if-eqz v4, :cond_2

    .line 448
    :cond_0
    move-object p1, p2

    .line 452
    .end local p1    # "type":Ljava/lang/Object;
    :cond_1
    :goto_0
    instance-of v4, p1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_3

    .line 454
    move-object v0, p1

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v1, v0

    .line 455
    .local v1, "so":Lorg/ksoap2/serialization/SoapObject;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lorg/ksoap2/serialization/SoapObject;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v6, v4, v9

    aput-object v6, v4, v10

    .line 468
    .end local v1    # "so":Lorg/ksoap2/serialization/SoapObject;
    :goto_1
    return-object v4

    .line 450
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .local p1, "type":Ljava/lang/Class;
    goto :goto_0

    .line 457
    .end local p1    # "type":Ljava/lang/Class;
    :cond_3
    instance-of v4, p1, Lorg/ksoap2/serialization/SoapPrimitive;

    if-eqz v4, :cond_4

    .line 459
    move-object v0, p1

    check-cast v0, Lorg/ksoap2/serialization/SoapPrimitive;

    move-object v2, v0

    .line 460
    .local v2, "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapPrimitive;->getNamespace()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapPrimitive;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v6, v4, v9

    sget-object v5, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lorg/ksoap2/serialization/Marshal;

    aput-object v5, v4, v10

    goto :goto_1

    .line 462
    .end local v2    # "sp":Lorg/ksoap2/serialization/SoapPrimitive;
    :cond_4
    instance-of v4, p1, Ljava/lang/Class;

    if-eqz v4, :cond_5

    sget-object v4, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    if-eq p1, v4, :cond_5

    .line 464
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 465
    .local v3, "tmp":[Ljava/lang/Object;
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 466
    goto :goto_1

    .line 468
    .end local v3    # "tmp":[Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "anyType"

    aput-object v5, v4, v8

    aput-object v6, v4, v9

    aput-object v6, v4, v10

    goto :goto_1
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ksoap2/SoapFault;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v1, v1, Lorg/ksoap2/SoapFault;

    if-eqz v1, :cond_0

    .line 510
    iget-object p0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    check-cast p0, Lorg/ksoap2/SoapFault;

    throw p0

    .line 512
    .restart local p0    # "this":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v0, Lorg/ksoap2/serialization/KvmSerializable;

    .line 513
    .local v0, "ks":Lorg/ksoap2/serialization/KvmSerializable;
    invoke-interface {v0}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v0, Lorg/ksoap2/serialization/KvmSerializable;

    .line 523
    .local v0, "ks":Lorg/ksoap2/serialization/KvmSerializable;
    invoke-interface {v0}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isAddAdornments()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    return v0
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    .line 107
    iput-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v7, Lorg/ksoap2/SoapFault;

    invoke-direct {v7}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 113
    .local v7, "fault":Lorg/ksoap2/SoapFault;
    invoke-virtual {v7, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    iput-object v7, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 128
    .end local v7    # "fault":Lorg/ksoap2/SoapFault;
    :cond_0
    return-void

    .line 118
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 120
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "root"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "rootAttr":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v8

    .line 123
    .local v8, "o":Ljava/lang/Object;
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 124
    :cond_2
    iput-object v8, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 125
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0
.end method

.method public read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "elementName":Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "href"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, "href":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 307
    if-nez p2, :cond_0

    .line 308
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "href at root level?!?"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 309
    :cond_0
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 311
    .local v13, "obj":Ljava/lang/Object;
    if-eqz v13, :cond_1

    move-object v0, v13

    instance-of v0, v0, Lorg/ksoap2/serialization/FwdRef;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 313
    :cond_1
    new-instance v7, Lorg/ksoap2/serialization/FwdRef;

    invoke-direct {v7}, Lorg/ksoap2/serialization/FwdRef;-><init>()V

    .line 314
    .local v7, "f":Lorg/ksoap2/serialization/FwdRef;
    check-cast v13, Lorg/ksoap2/serialization/FwdRef;

    .end local v13    # "obj":Ljava/lang/Object;
    iput-object v13, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    .line 315
    move-object/from16 v0, p2

    move-object v1, v7

    iput-object v0, v1, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    .line 316
    move/from16 v0, p3

    move-object v1, v7

    iput v0, v1, Lorg/ksoap2/serialization/FwdRef;->index:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v13, 0x0

    .line 320
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 321
    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v13

    .line 391
    .end local p2    # "owner":Ljava/lang/Object;
    :goto_0
    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    return-object v16

    .line 325
    .restart local p2    # "owner":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "nil"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "nullAttr":Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "id":Ljava/lang/String;
    if-nez v12, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "null"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 329
    :cond_4
    if-eqz v12, :cond_9

    invoke-static {v12}, Lorg/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 331
    const/4 v13, 0x0

    .line 332
    .restart local v13    # "obj":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 333
    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_5
    :goto_1
    if-eqz v10, :cond_8

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 372
    .local v8, "hlp":Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lorg/ksoap2/serialization/FwdRef;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 374
    move-object v0, v8

    check-cast v0, Lorg/ksoap2/serialization/FwdRef;

    move-object v7, v0

    .line 377
    .end local p2    # "owner":Ljava/lang/Object;
    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_6
    move-object v0, v7

    iget-object v0, v0, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/ksoap2/serialization/KvmSerializable;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 378
    move-object v0, v7

    iget-object v0, v0, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Lorg/ksoap2/serialization/KvmSerializable;

    move-object v0, v7

    iget v0, v0, Lorg/ksoap2/serialization/FwdRef;->index:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    .line 381
    :goto_2
    iget-object v7, v7, Lorg/ksoap2/serialization/FwdRef;->next:Lorg/ksoap2/serialization/FwdRef;

    .line 383
    if-nez v7, :cond_6

    .line 387
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "hlp":Ljava/lang/Object;
    :cond_8
    move-object/from16 v16, v13

    goto/16 :goto_0

    .line 337
    .restart local p2    # "owner":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 338
    .local v15, "type":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 340
    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 341
    .local v5, "cut":I
    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    .line 342
    const/16 v16, -0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    const-string v16, ""

    move-object/from16 v14, v16

    .line 343
    .local v14, "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 360
    .end local v5    # "cut":I
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v15, :cond_b

    .line 362
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    .line 364
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v13

    .line 365
    .restart local v13    # "obj":Ljava/lang/Object;
    if-nez v13, :cond_5

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_1

    .line 342
    .end local v13    # "obj":Ljava/lang/Object;
    .restart local v5    # "cut":I
    :cond_c
    const/16 v16, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    goto :goto_3

    .line 345
    .end local v5    # "cut":I
    :cond_d
    if-nez p5, :cond_a

    if-nez p4, :cond_a

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "arrayType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_e

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    move-object/from16 p4, v0

    .line 350
    const-string p5, "Array"

    goto :goto_4

    .line 354
    :cond_e
    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .line 355
    .local v11, "names":[Ljava/lang/Object;
    const/16 v16, 0x0

    aget-object p4, v11, v16

    .end local p4    # "namespace":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .line 356
    .restart local p4    # "namespace":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object p5, v11, v16

    .end local p5    # "name":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .restart local p5    # "name":Ljava/lang/String;
    goto :goto_4

    .line 380
    .end local v11    # "names":[Ljava/lang/Object;
    .end local v15    # "type":Ljava/lang/String;
    .end local p2    # "owner":Ljava/lang/Object;
    .restart local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    .restart local v8    # "hlp":Ljava/lang/Object;
    :cond_f
    move-object v0, v7

    iget-object v0, v0, Lorg/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Ljava/util/Vector;

    move-object v0, v7

    iget v0, v0, Lorg/ksoap2/serialization/FwdRef;->index:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    move-object v1, v13

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 385
    .end local v7    # "f":Lorg/ksoap2/serialization/FwdRef;
    .restart local p2    # "owner":Ljava/lang/Object;
    :cond_10
    if-eqz v8, :cond_7

    .line 386
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "double ID"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 402
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v4, Lorg/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v4, p2, p3, v5}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 403
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v5

    .line 435
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 405
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Lorg/ksoap2/serialization/Marshal;

    if-eqz v3, :cond_1

    .line 406
    check-cast v2, Lorg/ksoap2/serialization/Marshal;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/ksoap2/serialization/Marshal;->readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 407
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_2

    .line 409
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    move-result-object v2

    .line 427
    :goto_1
    instance-of v3, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_4

    .line 428
    move-object v0, v2

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v3, v0

    invoke-virtual {p0, p1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V

    :goto_2
    move-object v3, v2

    .line 435
    goto :goto_0

    .line 411
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-ne v2, v3, :cond_3

    .line 413
    new-instance v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {v2, p2, p3}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "obj":Lorg/ksoap2/serialization/SoapObject;
    goto :goto_1

    .line 419
    .local v2, "obj":Ljava/lang/Object;
    :cond_3
    :try_start_0
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 421
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    instance-of v3, v2, Lorg/ksoap2/serialization/KvmSerializable;

    if-eqz v3, :cond_5

    .line 430
    move-object v0, v2

    check-cast v0, Lorg/ksoap2/serialization/KvmSerializable;

    move-object v3, v0

    invoke-virtual {p0, p1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    goto :goto_2

    .line 431
    :cond_5
    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_6

    .line 432
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    iget-object v4, p4, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, v3, v4}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V

    goto :goto_2

    .line 434
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no deserializer for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v7, -0x1

    .line 148
    .local v7, "testIndex":I
    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v20

    .line 149
    .local v20, "propertyCount":I
    new-instance v10, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v10}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 150
    .local v10, "info":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 152
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "name":Ljava/lang/String;
    move/from16 v18, v20

    .line 160
    .local v18, "countdown":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    move v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/ksoap2/serialization/SoapObject;

    move v4, v0

    if-nez v4, :cond_6

    :cond_0
    move/from16 v19, v18

    .line 164
    .end local v18    # "countdown":I
    .local v19, "countdown":I
    add-int/lit8 v18, v19, -0x1

    .end local v19    # "countdown":I
    .restart local v18    # "countdown":I
    if-nez v19, :cond_1

    .line 166
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 170
    const/4 v7, 0x0

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    move-object v4, v0

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v4

    move-object v3, v10

    invoke-interface {v0, v1, v2, v3}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    .line 173
    iget-object v4, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    iget-object v4, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    iget-object v4, v10, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 186
    :cond_6
    move-object/from16 v0, p2

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v4, v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v14

    move-object/from16 v0, p2

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v15

    sget-object v17, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v17}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    goto/16 :goto_0

    .line 190
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "countdown":I
    :cond_7
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 136
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p2, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lorg/xmlpull/v1/XmlPullParser;Lorg/ksoap2/serialization/KvmSerializable;)V

    .line 141
    return-void
.end method

.method protected readUnknown(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "typeNamespace"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 211
    const/4 v9, 0x0

    .line 212
    .local v9, "result":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 213
    .local v10, "text":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 215
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 216
    new-instance v9, Lorg/ksoap2/serialization/SoapPrimitive;

    .end local v9    # "result":Ljava/lang/Object;
    invoke-direct {v9, p2, p3, v10}, Lorg/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v9, "result":Lorg/ksoap2/serialization/SoapPrimitive;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 224
    .end local v9    # "result":Lorg/ksoap2/serialization/SoapPrimitive;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 226
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Malformed input: Mixed content"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    .local v9, "result":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 221
    new-instance v9, Lorg/ksoap2/serialization/SoapObject;

    .end local v9    # "result":Ljava/lang/Object;
    invoke-direct {v9, p2, p3}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "result":Lorg/ksoap2/serialization/SoapObject;
    goto :goto_0

    .line 230
    .end local v9    # "result":Lorg/ksoap2/serialization/SoapObject;
    :cond_2
    new-instance v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-direct {v2, p2, p3}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v2, "so":Lorg/ksoap2/serialization/SoapObject;
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 233
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 235
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1

    .line 237
    :cond_3
    move-object v9, v2

    .restart local v9    # "result":Lorg/ksoap2/serialization/SoapObject;
    move-object v0, v9

    .line 239
    .end local v2    # "so":Lorg/ksoap2/serialization/SoapObject;
    .end local v9    # "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_2
    const/4 v1, 0x3

    invoke-interface {p1, v1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object v0

    :cond_4
    move-object v0, v9

    goto :goto_2
.end method

.method protected readVector(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "v"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    .line 256
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v11

    .line 257
    .local v11, "size":I
    const/4 v9, 0x1

    .line 258
    .local v9, "dynamic":Z
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "arrayType"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "type":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 261
    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 262
    .local v7, "cut0":I
    const-string v0, "["

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 263
    .local v8, "cut1":I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 264
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    const-string v0, ""

    move-object v10, v0

    .line 265
    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    const/4 v0, -0x1

    invoke-direct {p0, v12, v8, v0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v11

    .line 267
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 269
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    .line 270
    const/4 v9, 0x0

    .line 273
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    .line 274
    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    .line 275
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 276
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "offset"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    .line 277
    .local v3, "position":I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 280
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "position"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    .line 281
    if-eqz v9, :cond_2

    if-lt v3, v11, :cond_2

    .line 283
    add-int/lit8 v11, v3, 0x1

    .line 284
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p3

    .line 287
    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 288
    add-int/lit8 v3, v3, 0x1

    .line 289
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1

    .line 264
    .end local v3    # "position":I
    .restart local v7    # "cut0":I
    .restart local v8    # "cut1":I
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 291
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .restart local v3    # "position":I
    :cond_4
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setAddAdornments(Z)V
    .locals 0
    .param p1, "addAdornments"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    .line 103
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v7, ""

    .line 534
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    .line 535
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 537
    .local v0, "qName":[Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_2

    const-string v1, ""

    move-object v2, v7

    :goto_0
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_0

    .line 540
    const-string v2, "xmlns"

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    :cond_0
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    if-eqz v1, :cond_1

    .line 544
    const-string v2, "id"

    aget-object v1, v0, v3

    if-nez v1, :cond_3

    const-string v1, "o0"

    :goto_1
    invoke-interface {p1, v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v2, "root"

    const-string v3, "1"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    :cond_1
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-direct {p0, p1, v1, v4, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    .line 548
    iget-boolean v1, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    move-object v1, v7

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    :goto_2
    aget-object p0, v0, v6

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    return-void

    .line 537
    .restart local p0    # "this":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    :cond_2
    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    .line 544
    :cond_3
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 548
    :cond_4
    aget-object p0, v0, v5

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_2
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V
    .locals 5
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v2, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v2}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 575
    .local v2, "info":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-interface {p2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v0

    .line 576
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 578
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    invoke-interface {p2, v1, v3, v2}, Lorg/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V

    .line 579
    iget v3, v2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 581
    iget-object v3, v2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v4, v2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    invoke-interface {p2, v1}, Lorg/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    .line 583
    iget-object v3, v2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v4, v2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_1
    return-void
.end method

.method public writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V
    .locals 6
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    move-object v2, p2

    .line 559
    .local v2, "soapObject":Lorg/ksoap2/serialization/SoapObject;
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_0
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 561
    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 562
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v2, v1, v0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    .line 563
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/KvmSerializable;)V

    .line 567
    return-void
.end method

.method protected writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 9
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 590
    if-nez p2, :cond_1

    .line 592
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    iget v4, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    const/16 v5, 0x78

    if-lt v4, v5, :cond_0

    const-string v4, "nil"

    :goto_0
    const-string v5, "true"

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    :goto_1
    return-void

    .line 592
    :cond_0
    const-string v4, "null"

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {p0, v8, p2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 596
    .local v2, "qName":[Ljava/lang/Object;
    iget-boolean v3, p3, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    if-nez v3, :cond_2

    aget-object v3, v2, v6

    if-eqz v3, :cond_5

    .line 598
    :cond_2
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 599
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 601
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 602
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 604
    :cond_3
    const-string v3, "href"

    aget-object v4, v2, v6

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#o"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-interface {p1, v8, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 608
    .end local v0    # "i":I
    :cond_5
    iget-boolean v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    if-eq v3, v4, :cond_7

    .line 610
    :cond_6
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected writeVectorBody(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 8
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "vector"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    if-nez p3, :cond_0

    .line 636
    sget-object p3, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    .line 637
    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 638
    .local v1, "cnt":I
    iget-object v4, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 640
    .local v0, "arrType":[Ljava/lang/Object;
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v5, "arrayType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v2, v0, v7

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    const/4 v3, 0x0

    .line 643
    .local v3, "skipped":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 645
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 646
    const/4 v3, 0x1

    .line 643
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    :cond_1
    const/4 v4, 0x0

    const-string v5, "item"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    if-eqz v3, :cond_2

    .line 652
    iget-object v4, p0, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v5, "position"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const/4 v3, 0x0

    .line 655
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lorg/ksoap2/serialization/PropertyInfo;)V

    .line 656
    const/4 v4, 0x0

    const-string v5, "item"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 659
    :cond_3
    return-void
.end method
