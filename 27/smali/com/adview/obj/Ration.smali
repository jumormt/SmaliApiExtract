.class public Lcom/adview/obj/Ration;
.super Ljava/lang/Object;
.source "Ration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/adview/obj/Ration;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public key2:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nid:Ljava/lang/String;

.field public priority:I

.field public type:I

.field public type2:I

.field public weight:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, ""

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v2, p0, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    .line 7
    iput v3, p0, Lcom/adview/obj/Ration;->type:I

    .line 8
    const-string v0, ""

    iput-object v2, p0, Lcom/adview/obj/Ration;->name:Ljava/lang/String;

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adview/obj/Ration;->weight:D

    .line 10
    const-string v0, ""

    iput-object v2, p0, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v2, p0, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/adview/obj/Ration;->type2:I

    .line 13
    iput v3, p0, Lcom/adview/obj/Ration;->priority:I

    .line 14
    const-string v0, ""

    iput-object v2, p0, Lcom/adview/obj/Ration;->logo:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adview/obj/Ration;)I
    .locals 2
    .param p1, "another"    # Lcom/adview/obj/Ration;

    .prologue
    .line 19
    iget v0, p1, Lcom/adview/obj/Ration;->priority:I

    .line 20
    .local v0, "otherPriority":I
    iget v1, p0, Lcom/adview/obj/Ration;->priority:I

    if-ge v1, v0, :cond_0

    .line 21
    const/4 v1, -0x1

    .line 27
    :goto_0
    return v1

    .line 23
    :cond_0
    iget v1, p0, Lcom/adview/obj/Ration;->priority:I

    if-le v1, v0, :cond_1

    .line 24
    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/adview/obj/Ration;

    invoke-virtual {p0, p1}, Lcom/adview/obj/Ration;->compareTo(Lcom/adview/obj/Ration;)I

    move-result v0

    return v0
.end method
