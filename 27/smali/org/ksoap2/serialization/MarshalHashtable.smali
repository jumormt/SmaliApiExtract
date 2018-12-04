.class public Lorg/ksoap2/serialization/MarshalHashtable;
.super Ljava/lang/Object;
.source "MarshalHashtable.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
    }
.end annotation


# static fields
.field public static final HASHTABLE_CLASS:Ljava/lang/Class;

.field public static final NAME:Ljava/lang/String; = "Map"

.field public static final NAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xml-soap"


# instance fields
.field envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 11
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
    .line 50
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 51
    .local v8, "instance":Ljava/util/Hashtable;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "elementName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 53
    new-instance v2, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;

    invoke-direct {v2, p0, v8}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;-><init>(Lorg/ksoap2/serialization/MarshalHashtable;Ljava/util/Hashtable;)V

    .line 54
    .local v2, "item":Lorg/ksoap2/serialization/SoapObject;
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v3, "item"

    invoke-interface {p1, v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 56
    iget-object v0, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v9

    .line 57
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 58
    if-eqz v9, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v9}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->read(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v10

    .line 62
    .local v10, "value":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 63
    if-eqz v10, :cond_1

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v10}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 66
    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "item"

    .end local v2    # "item":Lorg/ksoap2/serialization/SoapObject;
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v8
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 115
    const-string v0, "http://xml.apache.org/xml-soap"

    const-string v1, "Map"

    sget-object v2, Lorg/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 116
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 9
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v8, "item"

    const-string v7, ""

    .line 73
    move-object v0, p2

    check-cast v0, Ljava/util/Hashtable;

    move-object v1, v0

    .line 74
    .local v1, "h":Ljava/util/Hashtable;
    new-instance v2, Lorg/ksoap2/serialization/SoapObject;

    invoke-direct {v2, v6, v6}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v2, "item":Lorg/ksoap2/serialization/SoapObject;
    const-string v5, "key"

    invoke-virtual {v2, v5, v6}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 76
    const-string v5, "value"

    invoke-virtual {v2, v5, v6}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 77
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    const-string v5, ""

    const-string v5, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 80
    .local v3, "key":Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 81
    const/4 v5, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 82
    iget-object v5, p0, Lorg/ksoap2/serialization/MarshalHashtable;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, p1, v2}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lorg/xmlpull/v1/XmlSerializer;Lorg/ksoap2/serialization/SoapObject;)V

    .line 83
    const-string v5, ""

    const-string v5, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 85
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method
