.class public final enum Lcom/adview/AdViewTargeting$AdArea;
.super Ljava/lang/Enum;
.source "AdViewTargeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewTargeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adview/AdViewTargeting$AdArea;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

.field private static final synthetic ENUM$VALUES:[Lcom/adview/AdViewTargeting$AdArea;

.field public static final enum TOP:Lcom/adview/AdViewTargeting$AdArea;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/adview/AdViewTargeting$AdArea;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewTargeting$AdArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$AdArea;->TOP:Lcom/adview/AdViewTargeting$AdArea;

    new-instance v0, Lcom/adview/AdViewTargeting$AdArea;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/adview/AdViewTargeting$AdArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adview/AdViewTargeting$AdArea;

    sget-object v1, Lcom/adview/AdViewTargeting$AdArea;->TOP:Lcom/adview/AdViewTargeting$AdArea;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adview/AdViewTargeting$AdArea;->ENUM$VALUES:[Lcom/adview/AdViewTargeting$AdArea;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adview/AdViewTargeting$AdArea;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/adview/AdViewTargeting$AdArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adview/AdViewTargeting$AdArea;

    return-object p0
.end method

.method public static values()[Lcom/adview/AdViewTargeting$AdArea;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/adview/AdViewTargeting$AdArea;->ENUM$VALUES:[Lcom/adview/AdViewTargeting$AdArea;

    array-length v1, v0

    new-array v2, v1, [Lcom/adview/AdViewTargeting$AdArea;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
