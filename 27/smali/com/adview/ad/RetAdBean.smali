.class public Lcom/adview/ad/RetAdBean;
.super Ljava/lang/Object;
.source "RetAdBean.java"


# instance fields
.field private adLink:Ljava/lang/String;

.field private adLinkType:I

.field private adShowPic:Ljava/lang/String;

.field private adShowText:Ljava/lang/String;

.field private adShowType:I

.field private idAd:Ljava/lang/String;

.field private idApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adview/ad/RetAdBean;->adLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLinkType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adview/ad/RetAdBean;->adLinkType:I

    return v0
.end method

.method public getAdShowPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adview/ad/RetAdBean;->adShowPic:Ljava/lang/String;

    return-object v0
.end method

.method public getAdShowText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adview/ad/RetAdBean;->adShowText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdShowType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/adview/ad/RetAdBean;->adShowType:I

    return v0
.end method

.method public getIdAd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adview/ad/RetAdBean;->idAd:Ljava/lang/String;

    return-object v0
.end method

.method public getIdApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adview/ad/RetAdBean;->idApp:Ljava/lang/String;

    return-object v0
.end method

.method public setAdLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/RetAdBean;->adLink:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAdLinkType(I)V
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/adview/ad/RetAdBean;->adLinkType:I

    .line 54
    return-void
.end method

.method public setAdShowPic(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/RetAdBean;->adShowPic:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAdShowText(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/RetAdBean;->adShowText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAdShowType(I)V
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/adview/ad/RetAdBean;->adShowType:I

    .line 33
    return-void
.end method

.method public setIdAd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/RetAdBean;->idAd:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setIdApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/RetAdBean;->idApp:Ljava/lang/String;

    .line 18
    return-void
.end method
