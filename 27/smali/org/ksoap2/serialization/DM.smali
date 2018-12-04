.class Lorg/ksoap2/serialization/DM;
.super Ljava/lang/Object;
.source "DM.java"

# interfaces
.implements Lorg/ksoap2/serialization/Marshal;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readInstance(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lorg/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 4
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
    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :sswitch_0
    move-object v1, v0

    .line 43
    :goto_0
    return-object v1

    .line 39
    :sswitch_1
    new-instance v1, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 41
    :sswitch_2
    new-instance v1, Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 43
    :sswitch_3
    new-instance v1, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 54
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "int"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->INTEGER_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 55
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "long"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->LONG_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 56
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "string"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 57
    iget-object v0, p1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "boolean"

    sget-object v2, Lorg/ksoap2/serialization/PropertyInfo;->BOOLEAN_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/ksoap2/serialization/Marshal;)V

    .line 58
    return-void
.end method

.method public writeInstance(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    return-void
.end method
