.class public Lorg/kobjects/pim/VCard;
.super Lorg/kobjects/pim/PimItem;
.source "VCard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/kobjects/pim/PimItem;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/kobjects/pim/VCard;)V
    .locals 0
    .param p1, "orig"    # Lorg/kobjects/pim/VCard;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/kobjects/pim/PimItem;-><init>(Lorg/kobjects/pim/PimItem;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getArraySize(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 31
    :goto_0
    return v0

    .line 30
    :cond_0
    const-string v0, "adr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "vcard"

    return-object v0
.end method
