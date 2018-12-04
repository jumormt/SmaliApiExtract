.class public Lcom/adview/ad/KyAdView$Client;
.super Ljava/lang/Object;
.source "KyAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/ad/KyAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adview/ad/KyAdView;


# direct methods
.method constructor <init>(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clientBitMap(Lcom/adview/ad/RetAdBean;)V
    .locals 9
    .param p1, "retAdBean"    # Lcom/adview/ad/RetAdBean;

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/adview/ad/RetAdBean;->getAdShowPic()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 248
    .local v4, "myFileUrl":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "myFileUrl":Ljava/net/URL;
    .local v5, "myFileUrl":Ljava/net/URL;
    move-object v4, v5

    .line 254
    .end local v5    # "myFileUrl":Ljava/net/URL;
    .restart local v4    # "myFileUrl":Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 255
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 256
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 257
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 258
    .local v3, "is":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/adview/ad/KyAdView;->access$18(Lcom/adview/ad/KyAdView;Landroid/graphics/Bitmap;)V

    .line 259
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 251
    .local v2, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v2    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 261
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private display()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adview/ad/RetAdBean;->getAdShowType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    return-void

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v0}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adview/ad/KyAdView$Client;->clientBitMap(Lcom/adview/ad/RetAdBean;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private displayReport(III)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I
    .param p2, "display"    # I
    .param p3, "click"    # I

    .prologue
    const-string v4, "idAd"

    const-string v4, "display"

    const-string v4, "click"

    const-string v4, "application"

    const-string v4, ""

    .line 184
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 185
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 188
    .local v3, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 189
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    iget-object v4, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v4}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v4, ""

    const-string v5, "idAd"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    iget-object v4, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v4}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adview/ad/RetAdBean;->getIdAd()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string v4, ""

    const-string v5, "idAd"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    iget-object v4, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v4}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getSystem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string v4, ""

    const-string v5, "reportType"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v4, ""

    const-string v5, "reportType"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v4, ""

    const-string v5, "click"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v4, ""

    const-string v5, "click"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 220
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/lang/String;
    return-object v0

    .line 222
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "writeStr"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v4, 0x0

    .line 365
    .local v4, "strResult":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "name"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 371
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 372
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 373
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF_8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 383
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 376
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 377
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 379
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 381
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private readXML(Ljava/lang/String;)Lcom/adview/ad/RetAdBean;
    .locals 27
    .param p1, "xmlStr"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v21, Lcom/adview/ad/RetAdBean;

    invoke-direct/range {v21 .. v21}, Lcom/adview/ad/RetAdBean;-><init>()V

    .line 267
    .local v21, "retAdBean":Lcom/adview/ad/RetAdBean;
    if-nez p1, :cond_0

    .line 268
    const/16 v25, 0x0

    .line 360
    :goto_0
    return-object v25

    .line 269
    :cond_0
    new-instance v23, Ljava/io/StringReader;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 270
    .local v23, "sr":Ljava/io/StringReader;
    new-instance v18, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v18, "is":Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 272
    .local v11, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v10, 0x0

    .line 274
    .local v10, "db":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 279
    :goto_1
    const/4 v12, 0x0

    .line 282
    .local v12, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v12

    .line 296
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    .line 297
    .local v22, "root":Lorg/w3c/dom/Element;
    const-string v25, "application"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 298
    .local v9, "applications":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move v0, v15

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    move-object/from16 v25, v21

    .line 360
    goto :goto_0

    .line 275
    .end local v9    # "applications":Lorg/w3c/dom/NodeList;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "i":I
    .end local v22    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v20

    .line 276
    .local v20, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 277
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 283
    .end local v20    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v12    # "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v14

    .line 285
    .local v14, "e":Lorg/xml/sax/SAXException;
    :try_start_2
    invoke-virtual {v14}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 287
    .end local v14    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v25

    move-object/from16 v13, v25

    .line 288
    .local v13, "dom":Lorg/w3c/dom/DOMException;
    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v13}, Lorg/w3c/dom/DOMException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 290
    .end local v13    # "dom":Lorg/w3c/dom/DOMException;
    :catch_3
    move-exception v25

    move-object/from16 v17, v25

    .line 291
    .local v17, "ioe":Ljava/io/IOException;
    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 292
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 299
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v9    # "applications":Lorg/w3c/dom/NodeList;
    .restart local v15    # "i":I
    .restart local v22    # "root":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 300
    .local v8, "application":Lorg/w3c/dom/Element;
    const-string v25, "idApp"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setIdApp(Ljava/lang/String;)V

    .line 303
    const-string v25, "idAd"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 304
    .local v16, "idAds":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 305
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 306
    .local v14, "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 307
    .local v24, "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_2

    .line 308
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setIdAd(Ljava/lang/String;)V

    .line 311
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_2
    const-string v25, "adShowType"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 312
    .local v7, "adShowTypes":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 313
    const/16 v25, 0x0

    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 314
    .restart local v14    # "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 315
    .restart local v24    # "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_3

    .line 316
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdShowType(I)V

    .line 319
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_3
    const-string v25, "adShowText"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 320
    .local v6, "adShowTexts":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 321
    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 322
    .restart local v14    # "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 323
    .restart local v24    # "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_4

    .line 324
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdShowText(Ljava/lang/String;)V

    .line 327
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_4
    const-string v25, "adShowPic"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 328
    .local v5, "adShowPics":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 329
    const/16 v25, 0x0

    move-object v0, v5

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 330
    .restart local v14    # "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 331
    .restart local v24    # "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_5

    .line 332
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdShowPic(Ljava/lang/String;)V

    .line 335
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_5
    const-string v25, "adLinkType"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 336
    .local v3, "adLinkTypes":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 337
    const/16 v25, 0x0

    move-object v0, v3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 338
    .restart local v14    # "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 339
    .restart local v24    # "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_6

    .line 340
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdLinkType(I)V

    .line 343
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_6
    const-string v25, "adLink"

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 344
    .local v4, "adLinks":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 345
    const/16 v25, 0x0

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 346
    .restart local v14    # "e":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Text;

    .line 347
    .restart local v24    # "t":Lorg/w3c/dom/Text;
    if-eqz v24, :cond_7

    .line 348
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdLink(Ljava/lang/String;)V

    .line 349
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/adview/ad/RetAdBean;->getAdLink()Ljava/lang/String;

    move-result-object v19

    .line 350
    .local v19, "link":Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 352
    const-string v25, "#$amp;"

    const-string v26, "&"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 355
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/adview/ad/RetAdBean;->setAdLink(Ljava/lang/String;)V

    .line 298
    .end local v14    # "e":Lorg/w3c/dom/Element;
    .end local v19    # "link":Ljava/lang/String;
    .end local v24    # "t":Lorg/w3c/dom/Text;
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3
.end method

.method private reportServer(IIILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "display"    # I
    .param p3, "click"    # I
    .param p4, "agent"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/adview/ad/KyAdView$Client;->displayReport(III)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "writeString":Ljava/lang/String;
    invoke-direct {p0, v0, p4}, Lcom/adview/ad/KyAdView$Client;->getResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    return-void
.end method

.method private writeApplyAdXml()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v4, "system"

    const-string v4, "idApp"

    const-string v4, "application"

    const-string v4, ""

    .line 150
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 151
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 154
    .local v3, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 155
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 157
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    iget-object v4, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v4}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    iget-object v4, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v4}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getSystem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 168
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .local v0, "buffer":Ljava/lang/String;
    return-object v0

    .line 170
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    .line 98
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-direct {p0}, Lcom/adview/ad/KyAdView$Client;->writeApplyAdXml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$6(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$7(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adview/ad/ApplyAdBean;->getTestMode()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 102
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v2, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v2}, Lcom/adview/ad/KyAdView;->access$7(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v3}, Lcom/adview/ad/KyAdView;->access$8(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/adview/ad/KyAdView$Client;->getResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$9(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$11(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$11(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "xml":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    const-string v2, "\\r"

    const-string v3, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$12(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v2, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v2}, Lcom/adview/ad/KyAdView;->access$13(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&amp;"

    const-string v4, "#$amp;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$12(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V

    .line 120
    .end local v0    # "xml":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$13(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v2, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v2}, Lcom/adview/ad/KyAdView;->access$13(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adview/ad/KyAdView$Client;->readXML(Ljava/lang/String;)Lcom/adview/ad/RetAdBean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$15(Lcom/adview/ad/KyAdView;Lcom/adview/ad/RetAdBean;)V

    .line 126
    :goto_2
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 130
    invoke-direct {p0}, Lcom/adview/ad/KyAdView$Client;->display()V

    .line 131
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$16(Lcom/adview/ad/KyAdView;)V

    .line 132
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adview/ad/ApplyAdBean;->getTestMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$4(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v6, v5, v1}, Lcom/adview/ad/KyAdView$Client;->reportServer(IIILjava/lang/String;)V

    .line 147
    :cond_1
    :goto_3
    return-void

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v2, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v2}, Lcom/adview/ad/KyAdView;->access$7(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v3}, Lcom/adview/ad/KyAdView;->access$10(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/adview/ad/KyAdView$Client;->getResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$9(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$14(Lcom/adview/ad/KyAdView;)V

    goto :goto_1

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adview/ad/KyAdView;->access$15(Lcom/adview/ad/KyAdView;Lcom/adview/ad/RetAdBean;)V

    goto :goto_2

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$13(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 140
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-interface {v1, v2}, Lcom/adview/ad/KyAdView$onAdListener;->onReceivedAd(Lcom/adview/ad/KyAdView;)V

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/adview/ad/KyAdView$Client;->this$0:Lcom/adview/ad/KyAdView;

    invoke-static {v1}, Lcom/adview/ad/KyAdView;->access$17(Lcom/adview/ad/KyAdView;)V

    goto :goto_3
.end method
