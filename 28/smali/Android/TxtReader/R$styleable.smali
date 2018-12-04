.class public final LAndroid/TxtReader/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAndroid/TxtReader/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final net_youmi_android_AdView:[I

.field public static final net_youmi_android_AdView_backgroundColor:I = 0x0

.field public static final net_youmi_android_AdView_backgroundTransparent:I = 0x2

.field public static final net_youmi_android_AdView_textColor:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LAndroid/TxtReader/R$styleable;->net_youmi_android_AdView:[I

    .line 113
    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
