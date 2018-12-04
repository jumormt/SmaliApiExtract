.class public Lorg/ksoap2/SoapEnvelope;
.super Ljava/lang/Object;
.source "SoapEnvelope.java"


# static fields
.field public static final ENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENC2001:Ljava/lang/String; = "http://www.w3.org/2001/12/soap-encoding"

.field public static final ENV:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final ENV2001:Ljava/lang/String; = "http://www.w3.org/2001/12/soap-envelope"

.field public static final VER10:I = 0x64

.field public static final VER11:I = 0x6e

.field public static final VER12:I = 0x78

.field public static final XSD:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSD1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema"

.field public static final XSI:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final XSI1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema-instance"


# instance fields
.field public bodyIn:Ljava/lang/Object;

.field public bodyOut:Ljava/lang/Object;

.field public enc:Ljava/lang/String;

.field public encodingStyle:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public headerIn:[Lorg/kxml2/kdom/Element;

.field public headerOut:[Lorg/kxml2/kdom/Element;

.field public version:I

.field public xsd:Ljava/lang/String;

.field public xsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    .line 108
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 109
    const-string v0, "http://www.w3.org/1999/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 110
    const-string v0, "http://www.w3.org/1999/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    .line 115
    :goto_0
    const/16 v0, 0x78

    if-ge p1, v0, :cond_1

    .line 116
    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 117
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    .line 122
    :goto_1
    return-void

    .line 112
    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 113
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "http://www.w3.org/2001/12/soap-encoding"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 120
    const-string v0, "http://www.w3.org/2001/12/soap-envelope"

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    goto :goto_1
.end method

.method public static stringToBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "booleanAsString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    if-nez p0, :cond_0

    move v0, v1

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 65
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const-string v6, "Header"

    const-string v5, "Envelope"

    const-string v4, "Body"

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 127
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Header"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 132
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v3, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseBody(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 138
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 140
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v3, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 167
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    new-instance v0, Lorg/ksoap2/SoapFault;

    invoke-direct {v0}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 169
    .local v0, "fault":Lorg/ksoap2/SoapFault;
    invoke-virtual {v0, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 170
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    .line 176
    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v2, v2, Lorg/kxml2/kdom/Node;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v2, Lorg/kxml2/kdom/Node;

    move-object v1, v2

    .line 173
    .local v1, "node":Lorg/kxml2/kdom/Node;
    :goto_1
    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 174
    iput-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    goto :goto_0

    .line 172
    .end local v1    # "node":Lorg/kxml2/kdom/Node;
    :cond_1
    new-instance v2, Lorg/kxml2/kdom/Node;

    invoke-direct {v2}, Lorg/kxml2/kdom/Node;-><init>()V

    move-object v1, v2

    goto :goto_1
.end method

.method public parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 147
    new-instance v3, Lorg/kxml2/kdom/Node;

    invoke-direct {v3}, Lorg/kxml2/kdom/Node;-><init>()V

    .line 148
    .local v3, "headers":Lorg/kxml2/kdom/Node;
    invoke-virtual {v3, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/kxml2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 151
    invoke-virtual {v3, v4}, Lorg/kxml2/kdom/Node;->getElement(I)Lorg/kxml2/kdom/Element;

    move-result-object v0

    .line 152
    .local v0, "child":Lorg/kxml2/kdom/Element;
    if-eqz v0, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 150
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "child":Lorg/kxml2/kdom/Element;
    :cond_1
    new-array v5, v1, [Lorg/kxml2/kdom/Element;

    iput-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/kxml2/kdom/Element;

    .line 156
    const/4 v1, 0x0

    .line 157
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/kxml2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 158
    invoke-virtual {v3, v4}, Lorg/kxml2/kdom/Node;->getElement(I)Lorg/kxml2/kdom/Element;

    move-result-object v0

    .line 159
    .restart local v0    # "child":Lorg/kxml2/kdom/Element;
    if-eqz v0, :cond_2

    .line 160
    iget-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/kxml2/kdom/Element;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v5, v1

    move v1, v2

    .line 157
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "child":Lorg/kxml2/kdom/Element;
    :cond_3
    return-void
.end method

.method public setOutputSoapObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "soapObject"    # Ljava/lang/Object;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "Header"

    const-string v3, "Envelope"

    const-string v2, "Body"

    .line 183
    const-string v0, "i"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "d"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "c"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "v"

    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 190
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeBody(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 193
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    :cond_0
    iget-object p0, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    .end local p0    # "this":Lorg/ksoap2/SoapEnvelope;
    check-cast p0, Lorg/kxml2/kdom/Node;

    invoke-virtual {p0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 216
    return-void
.end method

.method public writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    if-eqz v1, :cond_0

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/kxml2/kdom/Element;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
