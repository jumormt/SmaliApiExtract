.class public Lcom/adview/AdViewTargeting;
.super Ljava/lang/Object;
.source "AdViewTargeting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adview/AdViewTargeting$AdArea;,
        Lcom/adview/AdViewTargeting$Channel;,
        Lcom/adview/AdViewTargeting$Gender;,
        Lcom/adview/AdViewTargeting$RunMode;,
        Lcom/adview/AdViewTargeting$UpdateMode;
    }
.end annotation


# static fields
.field private static adArea:Lcom/adview/AdViewTargeting$AdArea;

.field private static birthDate:Ljava/util/GregorianCalendar;

.field private static channel:Lcom/adview/AdViewTargeting$Channel;

.field private static gender:Lcom/adview/AdViewTargeting$Gender;

.field private static keywordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keywords:Ljava/lang/String;

.field private static postalCode:Ljava/lang/String;

.field private static runMode:Lcom/adview/AdViewTargeting$RunMode;

.field private static updateMode:Lcom/adview/AdViewTargeting$UpdateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/adview/AdViewTargeting;->resetData()V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyword(Ljava/lang/String;)V
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 266
    sget-object v0, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    .line 269
    :cond_0
    sget-object v0, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public static getAdArea()Lcom/adview/AdViewTargeting$AdArea;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    return-object v0
.end method

.method public static getAge()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    sget-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBirthDate()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getChannel()Lcom/adview/AdViewTargeting$Channel;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/adview/AdViewTargeting;->channel:Lcom/adview/AdViewTargeting$Channel;

    return-object v0
.end method

.method public static getGender()Lcom/adview/AdViewTargeting$Gender;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    return-object v0
.end method

.method public static getKeywordSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getRunMode()Lcom/adview/AdViewTargeting$RunMode;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/adview/AdViewTargeting;->runMode:Lcom/adview/AdViewTargeting$RunMode;

    return-object v0
.end method

.method public static getUpdateMode()Lcom/adview/AdViewTargeting$UpdateMode;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/adview/AdViewTargeting;->updateMode:Lcom/adview/AdViewTargeting$UpdateMode;

    return-object v0
.end method

.method private static resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sget-object v0, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    sput-object v0, Lcom/adview/AdViewTargeting;->runMode:Lcom/adview/AdViewTargeting$RunMode;

    .line 27
    sget-object v0, Lcom/adview/AdViewTargeting$UpdateMode;->DEFAULT:Lcom/adview/AdViewTargeting$UpdateMode;

    sput-object v0, Lcom/adview/AdViewTargeting;->updateMode:Lcom/adview/AdViewTargeting$UpdateMode;

    .line 28
    sget-object v0, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    sput-object v0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    .line 29
    sget-object v0, Lcom/adview/AdViewTargeting$Gender;->UNKNOWN:Lcom/adview/AdViewTargeting$Gender;

    sput-object v0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    .line 30
    sput-object v1, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 31
    sput-object v1, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    .line 34
    sget-object v0, Lcom/adview/AdViewTargeting$Channel;->OTHER:Lcom/adview/AdViewTargeting$Channel;

    sput-object v0, Lcom/adview/AdViewTargeting;->channel:Lcom/adview/AdViewTargeting$Channel;

    .line 37
    return-void
.end method

.method public static setAdArea(Lcom/adview/AdViewTargeting$AdArea;)V
    .locals 0
    .param p0, "area"    # Lcom/adview/AdViewTargeting$AdArea;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lcom/adview/AdViewTargeting$AdArea;->TOP:Lcom/adview/AdViewTargeting$AdArea;

    .line 132
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    .line 133
    return-void
.end method

.method public static setAge(I)V
    .locals 4
    .param p0, "age"    # I

    .prologue
    const/4 v3, 0x1

    .line 177
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 178
    return-void
.end method

.method public static setBirthDate(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p0, "birthDate"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 197
    sput-object p0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 198
    return-void
.end method

.method public static setChannel(Lcom/adview/AdViewTargeting$Channel;)V
    .locals 1
    .param p0, "cha"    # Lcom/adview/AdViewTargeting$Channel;

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    sget-object v0, Lcom/adview/AdViewTargeting$Channel;->OTHER:Lcom/adview/AdViewTargeting$Channel;

    sput-object v0, Lcom/adview/AdViewTargeting;->channel:Lcom/adview/AdViewTargeting$Channel;

    .line 71
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->channel:Lcom/adview/AdViewTargeting$Channel;

    .line 72
    return-void
.end method

.method public static setGender(Lcom/adview/AdViewTargeting$Gender;)V
    .locals 0
    .param p0, "gender"    # Lcom/adview/AdViewTargeting$Gender;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    sget-object p0, Lcom/adview/AdViewTargeting$Gender;->UNKNOWN:Lcom/adview/AdViewTargeting$Gender;

    .line 155
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    .line 156
    return-void
.end method

.method public static setKeywordSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sput-object p0, Lcom/adview/AdViewTargeting;->keywordSet:Ljava/util/Set;

    .line 258
    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p0, "keywords"    # Ljava/lang/String;

    .prologue
    .line 237
    sput-object p0, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 217
    sput-object p0, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public static setRunMode(Lcom/adview/AdViewTargeting$RunMode;)V
    .locals 0
    .param p0, "runMode"    # Lcom/adview/AdViewTargeting$RunMode;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    sget-object p0, Lcom/adview/AdViewTargeting$RunMode;->NORMAL:Lcom/adview/AdViewTargeting$RunMode;

    .line 91
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->runMode:Lcom/adview/AdViewTargeting$RunMode;

    .line 92
    return-void
.end method

.method public static setUpdateMode(Lcom/adview/AdViewTargeting$UpdateMode;)V
    .locals 0
    .param p0, "updateMode"    # Lcom/adview/AdViewTargeting$UpdateMode;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    sget-object p0, Lcom/adview/AdViewTargeting$UpdateMode;->DEFAULT:Lcom/adview/AdViewTargeting$UpdateMode;

    .line 110
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->updateMode:Lcom/adview/AdViewTargeting$UpdateMode;

    .line 111
    return-void
.end method
