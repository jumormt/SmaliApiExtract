.class public final enum Lcom/adview/AdViewTargeting$Channel;
.super Ljava/lang/Enum;
.source "AdViewTargeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewTargeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adview/AdViewTargeting$Channel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVIEW:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum APPCHINA:Lcom/adview/AdViewTargeting$Channel;

.field private static final synthetic ENUM$VALUES:[Lcom/adview/AdViewTargeting$Channel;

.field public static final enum EOE:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum GFAN:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum GOAPK:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum GOOGLEMARKET:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum HIAPK:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum NDUOA:Lcom/adview/AdViewTargeting$Channel;

.field public static final enum OTHER:Lcom/adview/AdViewTargeting$Channel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "ADVIEW"

    invoke-direct {v0, v1, v3}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->ADVIEW:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "EOE"

    invoke-direct {v0, v1, v4}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->EOE:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "GOOGLEMARKET"

    invoke-direct {v0, v1, v5}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->GOOGLEMARKET:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "APPCHINA"

    invoke-direct {v0, v1, v6}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->APPCHINA:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "HIAPK"

    invoke-direct {v0, v1, v7}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->HIAPK:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "GFAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->GFAN:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "GOAPK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->GOAPK:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "NDUOA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->NDUOA:Lcom/adview/AdViewTargeting$Channel;

    new-instance v0, Lcom/adview/AdViewTargeting$Channel;

    const-string v1, "OTHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewTargeting$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->OTHER:Lcom/adview/AdViewTargeting$Channel;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adview/AdViewTargeting$Channel;

    sget-object v1, Lcom/adview/AdViewTargeting$Channel;->ADVIEW:Lcom/adview/AdViewTargeting$Channel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adview/AdViewTargeting$Channel;->EOE:Lcom/adview/AdViewTargeting$Channel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adview/AdViewTargeting$Channel;->GOOGLEMARKET:Lcom/adview/AdViewTargeting$Channel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adview/AdViewTargeting$Channel;->APPCHINA:Lcom/adview/AdViewTargeting$Channel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adview/AdViewTargeting$Channel;->HIAPK:Lcom/adview/AdViewTargeting$Channel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adview/AdViewTargeting$Channel;->GFAN:Lcom/adview/AdViewTargeting$Channel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adview/AdViewTargeting$Channel;->GOAPK:Lcom/adview/AdViewTargeting$Channel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adview/AdViewTargeting$Channel;->NDUOA:Lcom/adview/AdViewTargeting$Channel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adview/AdViewTargeting$Channel;->OTHER:Lcom/adview/AdViewTargeting$Channel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adview/AdViewTargeting$Channel;->ENUM$VALUES:[Lcom/adview/AdViewTargeting$Channel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adview/AdViewTargeting$Channel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/adview/AdViewTargeting$Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adview/AdViewTargeting$Channel;

    return-object p0
.end method

.method public static values()[Lcom/adview/AdViewTargeting$Channel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/adview/AdViewTargeting$Channel;->ENUM$VALUES:[Lcom/adview/AdViewTargeting$Channel;

    array-length v1, v0

    new-array v2, v1, [Lcom/adview/AdViewTargeting$Channel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
