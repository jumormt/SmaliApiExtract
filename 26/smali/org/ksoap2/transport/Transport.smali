.class public abstract Lorg/ksoap2/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# instance fields
.field public debug:Z

.field public requestDump:Ljava/lang/String;

.field public responseDump:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field private xmlVersionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public abstract call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method protected createRequestData(Lorg/ksoap2/SoapEnvelope;)[B
    .locals 3
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    new-instance v1, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v1}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    .line 73
    .local v1, "xw":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v1}, Lorg/ksoap2/SoapEnvelope;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 75
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 76
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method protected parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 61
    .local v0, "xp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 62
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v0}, Lorg/ksoap2/SoapEnvelope;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setXmlVersionTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 101
    return-void
.end method
