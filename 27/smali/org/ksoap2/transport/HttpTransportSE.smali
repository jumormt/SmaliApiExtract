.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 13
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0x100

    const/4 v11, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string p1, "\"\""

    .line 58
    :cond_0
    invoke-virtual {p0, p2}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;)[B

    move-result-object v7

    .line 59
    .local v7, "requestData":[B
    iget-boolean v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    :goto_0
    iput-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    .line 60
    iput-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v2

    .line 62
    .local v2, "connection":Lorg/ksoap2/transport/ServiceConnection;
    const-string v8, "User-Agent"

    const-string v9, "kSOAP/2.0"

    invoke-interface {v2, v8, v9}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v8, "SOAPAction"

    invoke-interface {v2, v8, p1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v8, "Content-Type"

    const-string v9, "text/xml"

    invoke-interface {v2, v8, v9}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v8, "Connection"

    const-string v9, "close"

    invoke-interface {v2, v8, v9}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v8, "POST"

    invoke-interface {v2, v8}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->connect()V

    .line 69
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 70
    .local v5, "os":Ljava/io/OutputStream;
    array-length v8, v7

    invoke-virtual {v5, v7, v11, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 72
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 73
    const/4 v7, 0x0

    .line 76
    :try_start_0
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->connect()V

    .line 77
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 85
    .local v4, "is":Ljava/io/InputStream;
    :cond_1
    iget-boolean v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v8, :cond_2

    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v12, [B

    .line 89
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v4, v1, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 90
    .local v6, "rd":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_4

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 96
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 97
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 98
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v6    # "rd":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {p0, p2, v4}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    .line 101
    return-void

    .end local v2    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    :cond_3
    move-object v8, v9

    .line 59
    goto/16 :goto_0

    .line 78
    .restart local v2    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 79
    .local v3, "e":Ljava/io/IOException;
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .restart local v4    # "is":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 81
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 82
    throw v3

    .line 92
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v6    # "rd":I
    :cond_4
    invoke-virtual {v0, v1, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method protected getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
