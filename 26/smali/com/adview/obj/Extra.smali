.class public Lcom/adview/obj/Extra;
.super Ljava/lang/Object;
.source "Extra.java"


# instance fields
.field public bgAlpha:I

.field public bgBlue:I

.field public bgGreen:I

.field public bgRed:I

.field public cycleTime:I

.field public fgAlpha:I

.field public fgBlue:I

.field public fgGreen:I

.field public fgRed:I

.field public locationOn:I

.field public report:Ljava/lang/String;

.field public transition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/adview/obj/Extra;->fgRed:I

    .line 7
    iput v0, p0, Lcom/adview/obj/Extra;->fgGreen:I

    .line 8
    iput v0, p0, Lcom/adview/obj/Extra;->fgBlue:I

    .line 9
    iput v2, p0, Lcom/adview/obj/Extra;->fgAlpha:I

    .line 11
    iput v1, p0, Lcom/adview/obj/Extra;->bgRed:I

    .line 12
    iput v1, p0, Lcom/adview/obj/Extra;->bgGreen:I

    .line 13
    iput v1, p0, Lcom/adview/obj/Extra;->bgBlue:I

    .line 14
    iput v2, p0, Lcom/adview/obj/Extra;->bgAlpha:I

    .line 16
    const/16 v0, 0x1e

    iput v0, p0, Lcom/adview/obj/Extra;->cycleTime:I

    .line 17
    iput v1, p0, Lcom/adview/obj/Extra;->locationOn:I

    .line 18
    iput v1, p0, Lcom/adview/obj/Extra;->transition:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    .line 21
    return-void
.end method
