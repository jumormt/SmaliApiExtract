.class public Lcom/adview/ad/ApplyAdBean;
.super Ljava/lang/Object;
.source "ApplyAdBean.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private isTestMode:I

.field private system:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adview/ad/ApplyAdBean;->appId:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/adview/ad/ApplyAdBean;->isTestMode:I

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adview/ad/ApplyAdBean;->setSystem(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adview/ad/ApplyAdBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/adview/ad/ApplyAdBean;->system:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/adview/ad/ApplyAdBean;->isTestMode:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adview/ad/ApplyAdBean;->appId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSystem(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/adview/ad/ApplyAdBean;->system:I

    .line 35
    return-void
.end method

.method public setTestMode(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/adview/ad/ApplyAdBean;->isTestMode:I

    .line 28
    return-void
.end method
