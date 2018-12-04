.class public Lcom/adview/ad/KyAdView;
.super Landroid/view/ViewGroup;
.source "KyAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adview/ad/KyAdView$Client;,
        Lcom/adview/ad/KyAdView$onAdListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdViewAd"


# instance fields
.field adImage:Landroid/widget/ImageView;

.field adText:Landroid/widget/TextView;

.field private adView_listener:Landroid/view/View$OnClickListener;

.field private address:Ljava/lang/String;

.field private agent1:Ljava/lang/String;

.field private agent1test:Ljava/lang/String;

.field private agent2:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private applyAdBean:Lcom/adview/ad/ApplyAdBean;

.field private backGroundColor:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private getString:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private internal:I

.field private isTestMode:Z

.field logoText:Landroid/widget/TextView;

.field private mClient:Lcom/adview/ad/KyAdView$Client;

.field private mOnAdListener:Lcom/adview/ad/KyAdView$onAdListener;

.field private mThread:Ljava/lang/Thread;

.field private retAdBean:Lcom/adview/ad/RetAdBean;

.field private screenHeight:I

.field private screenWidth:I

.field private textColor:I

.field private topPadding:I

.field private writeString:Ljava/lang/String;

.field private xmlCp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kyAdID"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "logo"    # Ljava/lang/String;
    .param p5, "refreshInterval"    # I
    .param p6, "istestMode"    # Z
    .param p7, "backgroundColorVal"    # I
    .param p8, "textColorVal"    # I

    .prologue
    const/16 v4, 0x12c

    const/16 v3, 0x1e

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->appId:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->address:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/adview/ad/KyAdView;->topPadding:I

    .line 67
    const/16 v0, 0x32

    iput v0, p0, Lcom/adview/ad/KyAdView;->internal:I

    .line 68
    const v0, -0xffff01

    iput v0, p0, Lcom/adview/ad/KyAdView;->backGroundColor:I

    .line 69
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/adview/ad/KyAdView;->textColor:I

    .line 70
    iput-boolean v2, p0, Lcom/adview/ad/KyAdView;->isTestMode:Z

    .line 72
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    .line 73
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent1:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent2:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent1test:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->retAdBean:Lcom/adview/ad/RetAdBean;

    .line 77
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->getString:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->writeString:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->xmlCp:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->bitmap:Landroid/graphics/Bitmap;

    .line 82
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->adImage:Landroid/widget/ImageView;

    .line 83
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    .line 86
    iput v2, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    .line 87
    iput v2, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    .line 89
    new-instance v0, Lcom/adview/ad/KyAdView$Client;

    invoke-direct {v0, p0}, Lcom/adview/ad/KyAdView$Client;-><init>(Lcom/adview/ad/KyAdView;)V

    iput-object v0, p0, Lcom/adview/ad/KyAdView;->mClient:Lcom/adview/ad/KyAdView$Client;

    .line 90
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->mThread:Ljava/lang/Thread;

    .line 532
    new-instance v0, Lcom/adview/ad/KyAdView$1;

    invoke-direct {v0, p0}, Lcom/adview/ad/KyAdView$1;-><init>(Lcom/adview/ad/KyAdView;)V

    iput-object v0, p0, Lcom/adview/ad/KyAdView;->handler:Landroid/os/Handler;

    .line 676
    new-instance v0, Lcom/adview/ad/KyAdView$2;

    invoke-direct {v0, p0}, Lcom/adview/ad/KyAdView$2;-><init>(Lcom/adview/ad/KyAdView;)V

    iput-object v0, p0, Lcom/adview/ad/KyAdView;->adView_listener:Landroid/view/View$OnClickListener;

    .line 786
    iput-object v1, p0, Lcom/adview/ad/KyAdView;->mOnAdListener:Lcom/adview/ad/KyAdView$onAdListener;

    .line 392
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/KyAdView;->appId:Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/KyAdView;->address:Ljava/lang/String;

    .line 394
    iput p5, p0, Lcom/adview/ad/KyAdView;->internal:I

    .line 395
    iget v0, p0, Lcom/adview/ad/KyAdView;->internal:I

    if-ge v0, v3, :cond_1

    .line 396
    iput v3, p0, Lcom/adview/ad/KyAdView;->internal:I

    .line 400
    :cond_0
    :goto_0
    iput-boolean p6, p0, Lcom/adview/ad/KyAdView;->isTestMode:Z

    .line 401
    iput p7, p0, Lcom/adview/ad/KyAdView;->backGroundColor:I

    .line 402
    iput p8, p0, Lcom/adview/ad/KyAdView;->textColor:I

    .line 404
    invoke-direct {p0, p4}, Lcom/adview/ad/KyAdView;->initPanal(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/adview/ad/KyAdView;->initAd(Landroid/content/Context;)V

    .line 406
    return-void

    .line 397
    :cond_1
    iget v0, p0, Lcom/adview/ad/KyAdView;->internal:I

    if-le v0, v4, :cond_0

    .line 398
    iput v4, p0, Lcom/adview/ad/KyAdView;->internal:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->retAdBean:Lcom/adview/ad/RetAdBean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/KyAdView$onAdListener;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->mOnAdListener:Lcom/adview/ad/KyAdView$onAdListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->agent1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->getString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->xmlCp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->xmlCp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/adview/ad/KyAdView;->notifyConncetFail()V

    return-void
.end method

.method static synthetic access$15(Lcom/adview/ad/KyAdView;Lcom/adview/ad/RetAdBean;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->retAdBean:Lcom/adview/ad/RetAdBean;

    return-void
.end method

.method static synthetic access$16(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/adview/ad/KyAdView;->frushAd()V

    return-void
.end method

.method static synthetic access$17(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/adview/ad/KyAdView;->notifyReceiveAdError()V

    return-void
.end method

.method static synthetic access$18(Lcom/adview/ad/KyAdView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/adview/ad/KyAdView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->agent2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adview/ad/KyAdView;IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adview/ad/KyAdView;->clickServer(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->writeString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->writeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adview/ad/KyAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adview/ad/KyAdView;->agent1test:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/adview/ad/KyAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->getString:Ljava/lang/String;

    return-void
.end method

.method private clickReport(III)Ljava/lang/String;
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

    .line 624
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 625
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 629
    .local v3, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 630
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 632
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    iget-object v4, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    const-string v4, ""

    const-string v5, "idApp"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    const-string v4, ""

    const-string v5, "idAd"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    iget-object v4, p0, Lcom/adview/ad/KyAdView;->retAdBean:Lcom/adview/ad/RetAdBean;

    invoke-virtual {v4}, Lcom/adview/ad/RetAdBean;->getIdAd()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const-string v4, ""

    const-string v5, "idAd"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    iget-object v4, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    invoke-virtual {v4}, Lcom/adview/ad/ApplyAdBean;->getSystem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    const-string v4, ""

    const-string v5, "system"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const-string v4, ""

    const-string v5, "reportType"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const-string v4, ""

    const-string v5, "reportType"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    const-string v4, ""

    const-string v5, "display"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    const-string v4, ""

    const-string v5, "click"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    const-string v4, ""

    const-string v5, "click"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    const-string v4, ""

    const-string v5, "application"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 661
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 668
    .local v0, "buffer":Ljava/lang/String;
    return-object v0

    .line 664
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 666
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private clickResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "writeStr"    # Ljava/lang/String;
    .param p2, "agent"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v4, 0x0

    .line 594
    .local v4, "strResult":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "name"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 604
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 605
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 607
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF_8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 620
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 612
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 613
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 614
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 615
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 617
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private clickServer(IIILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "display"    # I
    .param p3, "click"    # I
    .param p4, "agent"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/adview/ad/KyAdView;->clickReport(III)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "report":Ljava/lang/String;
    invoke-direct {p0, v0, p4}, Lcom/adview/ad/KyAdView;->clickResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    return-void
.end method

.method private frushAd()V
    .locals 2

    .prologue
    .line 507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 508
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 509
    invoke-direct {p0}, Lcom/adview/ad/KyAdView;->notifyReceiveAdOk()V

    .line 512
    return-void
.end method

.method private getSysId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->appId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->appId:Ljava/lang/String;

    .line 721
    :goto_0
    return-object v3

    .line 713
    :cond_0
    const/4 v2, 0x0

    .line 715
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 716
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "APP_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move-object v3, v2

    .line 721
    goto :goto_0

    .line 717
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 719
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private initAd(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 496
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 497
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    .line 498
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    .line 499
    invoke-direct {p0, p1}, Lcom/adview/ad/KyAdView;->initApplyAdInfo(Landroid/content/Context;)V

    .line 501
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/adview/ad/KyAdView;->mClient:Lcom/adview/ad/KyAdView$Client;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/adview/ad/KyAdView;->mThread:Ljava/lang/Thread;

    .line 502
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 504
    return-void
.end method

.method private initApplyAdInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string v4, "http://"

    .line 574
    new-instance v1, Lcom/adview/ad/ApplyAdBean;

    invoke-direct {v1}, Lcom/adview/ad/ApplyAdBean;-><init>()V

    iput-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    .line 575
    invoke-direct {p0, p1}, Lcom/adview/ad/KyAdView;->getSysId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    invoke-virtual {v1, v0}, Lcom/adview/ad/ApplyAdBean;->setAppId(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    invoke-virtual {v1, v2}, Lcom/adview/ad/ApplyAdBean;->setSystem(I)V

    .line 578
    iget-boolean v1, p0, Lcom/adview/ad/KyAdView;->isTestMode:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adview/ad/ApplyAdBean;->setTestMode(I)V

    .line 584
    :goto_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adview/ad/KyAdView;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nusoap/nusoap_agent1.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent1:Ljava/lang/String;

    .line 585
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adview/ad/KyAdView;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nusoap/nusoap_agent2.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent2:Ljava/lang/String;

    .line 586
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adview/ad/KyAdView;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nusoap/nusoap_agent1_test.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adview/ad/KyAdView;->agent1test:Ljava/lang/String;

    .line 588
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->adView_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/adview/ad/KyAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;

    invoke-virtual {v1, v2}, Lcom/adview/ad/ApplyAdBean;->setTestMode(I)V

    goto :goto_0
.end method

.method private initPanal(Ljava/lang/String;)V
    .locals 5
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 470
    iget v3, p0, Lcom/adview/ad/KyAdView;->backGroundColor:I

    invoke-virtual {p0, v3}, Lcom/adview/ad/KyAdView;->setBackgroundColor(I)V

    .line 471
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adview/ad/KyAdView;->adImage:Landroid/widget/ImageView;

    .line 472
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->adImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/adview/ad/KyAdView;->addView(Landroid/view/View;)V

    .line 473
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    .line 474
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    iget v4, p0, Lcom/adview/ad/KyAdView;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->adText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/adview/ad/KyAdView;->addView(Landroid/view/View;)V

    .line 477
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    .line 478
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    iget v4, p0, Lcom/adview/ad/KyAdView;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    iget-object v3, p0, Lcom/adview/ad/KyAdView;->logoText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/adview/ad/KyAdView;->addView(Landroid/view/View;)V

    .line 483
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 484
    .local v2, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 485
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 486
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 489
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 490
    .local v1, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Lcom/adview/ad/KyAdView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 491
    return-void
.end method

.method private measureHeight(I)I
    .locals 6
    .param p1, "measureSpec"    # I

    .prologue
    .line 763
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "child":Landroid/view/View;
    iget v4, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v5, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 765
    const/4 v1, 0x0

    .line 766
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 767
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 769
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 771
    move v1, v3

    .line 783
    :goto_0
    return v1

    .line 774
    :cond_0
    iget v4, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    const/16 v5, 0x320

    if-lt v4, v5, :cond_1

    .line 775
    const/16 v1, 0x4b

    goto :goto_0

    .line 776
    :cond_1
    iget v4, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    const/16 v5, 0x1e0

    if-lt v4, v5, :cond_2

    .line 777
    const/16 v1, 0x32

    goto :goto_0

    .line 778
    :cond_2
    iget v4, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    const/16 v5, 0x140

    if-lt v4, v5, :cond_3

    .line 779
    const/16 v1, 0x26

    goto :goto_0

    .line 781
    :cond_3
    const/16 v1, 0x32

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 738
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "child":Landroid/view/View;
    iget v5, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v6, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 740
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 741
    .local v1, "child1":Landroid/view/View;
    iget v5, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v6, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 745
    .local v3, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 747
    .local v4, "specSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_1

    .line 749
    move v2, v4

    .line 760
    :cond_0
    :goto_0
    return v2

    .line 752
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, 0x2

    .line 753
    iget v5, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    if-le v2, v5, :cond_2

    .line 754
    iget v2, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    .line 755
    :cond_2
    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_0

    .line 757
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method private notifyConncetFail()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 516
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 517
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method

.method private notifyReceiveAdError()V
    .locals 2

    .prologue
    .line 521
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 522
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 523
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method private notifyReceiveAdOk()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 528
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 529
    iget-object v1, p0, Lcom/adview/ad/KyAdView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 418
    const/4 v7, 0x0

    .line 419
    .local v7, "picLayoutWidth":I
    const/4 v6, 0x0

    .line 421
    .local v6, "picLayoutHeight":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "child":Landroid/view/View;
    iget v11, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v12, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 423
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 425
    .local v8, "picWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 428
    .local v5, "picHeight":I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "child1":Landroid/view/View;
    iget v11, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v12, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 430
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 431
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 432
    .local v10, "textWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 433
    .local v9, "textHeight":I
    if-nez v10, :cond_0

    .line 434
    const/4 v9, 0x0

    .line 437
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/adview/ad/KyAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 438
    .local v2, "child2":Landroid/view/View;
    iget v11, p0, Lcom/adview/ad/KyAdView;->screenWidth:I

    iget v12, p0, Lcom/adview/ad/KyAdView;->screenHeight:I

    invoke-virtual {v2, v11, v12}, Landroid/view/View;->measure(II)V

    .line 439
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 441
    .local v4, "logoWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 442
    .local v3, "logoHeight":I
    if-nez v4, :cond_1

    .line 443
    const/4 v3, 0x0

    .line 447
    :cond_1
    add-int v11, v10, v8

    if-nez v11, :cond_4

    .line 448
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/adview/ad/KyAdView;->setVisibility(I)V

    .line 453
    :goto_0
    if-lez v5, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    mul-int/2addr v11, v8

    div-int/2addr v11, v5

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x2

    sub-int v7, v11, v12

    .line 455
    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v11

    const/4 v12, 0x2

    sub-int v6, v11, v12

    .line 456
    const/4 v11, 0x1

    const/4 v12, 0x1

    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 457
    add-int/lit8 v11, v7, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v14

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 463
    :cond_2
    :goto_1
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    .line 464
    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v3

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v14

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 467
    :cond_3
    return-void

    .line 450
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/adview/ad/KyAdView;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_5
    if-lez v9, :cond_2

    .line 461
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/adview/ad/KyAdView;->getHeight()I

    move-result v14

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 730
    invoke-direct {p0, p2}, Lcom/adview/ad/KyAdView;->measureHeight(I)I

    move-result v0

    .line 731
    .local v0, "measuredHeight":I
    invoke-direct {p0, p1}, Lcom/adview/ad/KyAdView;->measureWidth(I)I

    move-result v1

    .line 732
    .local v1, "measuredWidth":I
    invoke-virtual {p0, v1, v0}, Lcom/adview/ad/KyAdView;->setMeasuredDimension(II)V

    .line 735
    return-void
.end method

.method openWebBrowser(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 706
    return-void
.end method

.method public setAdListener(Lcom/adview/ad/KyAdView$onAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/adview/ad/KyAdView$onAdListener;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/adview/ad/KyAdView;->mOnAdListener:Lcom/adview/ad/KyAdView$onAdListener;

    .line 793
    return-void
.end method

.method public setTopPadding(I)V
    .locals 2
    .param p1, "TopPadding"    # I

    .prologue
    const/4 v1, 0x0

    .line 409
    iput p1, p0, Lcom/adview/ad/KyAdView;->topPadding:I

    .line 410
    iget v0, p0, Lcom/adview/ad/KyAdView;->topPadding:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/adview/ad/KyAdView;->setPadding(IIII)V

    .line 411
    return-void
.end method
