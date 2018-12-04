.class public Lcom/adview/util/AdViewUtil;
.super Ljava/lang/Object;
.source "AdViewUtil.java"


# static fields
.field public static final ADVIEW:Ljava/lang/String; = "AdView SDK"

.field public static final NETWORK_TYPE_4THSCREEN:I = 0xd

.field public static final NETWORK_TYPE_ADCHINA:I = 0x1a

.field public static final NETWORK_TYPE_ADMOB:I = 0x1

.field public static final NETWORK_TYPE_ADSENSE:I = 0xe

.field public static final NETWORK_TYPE_ADTOUCH:I = 0x20

.field public static final NETWORK_TYPE_ADVIEWAD:I = 0x1c

.field public static final NETWORK_TYPE_ADWHIRL:I = 0xa

.field public static final NETWORK_TYPE_ADWO:I = 0x21

.field public static final NETWORK_TYPE_AIRAD:I = 0x22

.field public static final NETWORK_TYPE_APPMEDIA:I = 0x24

.field public static final NETWORK_TYPE_CASEE:I = 0x18

.field public static final NETWORK_TYPE_DOMOB:I = 0x1e

.field public static final NETWORK_TYPE_DOUBLECLICK:I = 0xf

.field public static final NETWORK_TYPE_EVENT:I = 0x11

.field public static final NETWORK_TYPE_GENERIC:I = 0x10

.field public static final NETWORK_TYPE_GREYSTRIP:I = 0x7

.field public static final NETWORK_TYPE_JUMPTAP:I = 0x2

.field public static final NETWORK_TYPE_KUAIYOU:I = 0x17

.field public static final NETWORK_TYPE_LIVERAIL:I = 0x5

.field public static final NETWORK_TYPE_MDOTM:I = 0xc

.field public static final NETWORK_TYPE_MEDIALETS:I = 0x4

.field public static final NETWORK_TYPE_MILLENNIAL:I = 0x6

.field public static final NETWORK_TYPE_MOBCLIX:I = 0xb

.field public static final NETWORK_TYPE_QUATTRO:I = 0x8

.field public static final NETWORK_TYPE_SMARTAD:I = 0x1d

.field public static final NETWORK_TYPE_TINMOO:I = 0x25

.field public static final NETWORK_TYPE_VIDEOEGG:I = 0x3

.field public static final NETWORK_TYPE_VPON:I = 0x1f

.field public static final NETWORK_TYPE_WIYUN:I = 0x19

.field public static final NETWORK_TYPE_WOOBOO:I = 0x15

.field public static final NETWORK_TYPE_WQ:I = 0x23

.field public static final NETWORK_TYPE_YOUMI:I = 0x16

.field public static final NETWORK_TYPE_ZESTADZ:I = 0x14

.field public static final VERSION:I = 0xff

.field public static appReport:Ljava/lang/String; = null

.field public static urlClick:Ljava/lang/String; = null

.field public static final urlConfig:Ljava/lang/String; = "http://www.adview.cn/agent/agent1_android.php?appid=%s&appver=%d&client=0"

.field public static urlImpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "http://www.adview.cn/agent/agent2.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    sput-object v0, Lcom/adview/util/AdViewUtil;->urlImpression:Ljava/lang/String;

    .line 10
    const-string v0, "http://www.adview.cn/agent/agent3.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    sput-object v0, Lcom/adview/util/AdViewUtil;->urlClick:Ljava/lang/String;

    .line 11
    const-string v0, "http://www.adview.cn/agent/appReport.php?keyAdView=%s&keyDev=%s&typeDev=%s&osVer=%s&resolution=%s&servicePro=%s&netType=%s&channel=%s&platform=%s"

    sput-object v0, Lcom/adview/util/AdViewUtil;->appReport:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 58
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 59
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 61
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 62
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 66
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_1
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method
