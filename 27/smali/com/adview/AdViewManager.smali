.class public Lcom/adview/AdViewManager;
.super Ljava/lang/Object;
.source "AdViewManager.java"


# static fields
.field private static final PREFS_STRING_CONFIG:Ljava/lang/String; = "config"

.field private static final PREFS_STRING_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static configExpireTimeout:J

.field private static youmiInit:Z


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Lcom/adview/obj/Extra;

.field public keyAdView:Ljava/lang/String;

.field private rationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field private rationsList_pri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollover_pri:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/adview/AdViewManager;->configExpireTimeout:J

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adview/AdViewManager;->youmiInit:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 2
    .param p2, "keyAdView"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "contextReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 53
    const-string v0, "Android"

    const-string v1, "Creating weivda reganam..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/adview/AdViewTargeting;->getUpdateMode()Lcom/adview/AdViewTargeting$UpdateMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$UpdateMode;->DEFAULT:Lcom/adview/AdViewTargeting$UpdateMode;

    if-ne v0, v1, :cond_1

    .line 58
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Lcom/adview/AdViewManager;->setConfigExpireTimeout(J)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/adview/AdViewTargeting;->getUpdateMode()Lcom/adview/AdViewTargeting$UpdateMode;

    move-result-object v0

    sget-object v1, Lcom/adview/AdViewTargeting$UpdateMode;->EVERYTIME:Lcom/adview/AdViewTargeting$UpdateMode;

    if-ne v0, v1, :cond_0

    .line 60
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/adview/AdViewManager;->setConfigExpireTimeout(J)V

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 208
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 209
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 213
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 214
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 223
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v6

    .line 219
    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    move-object v4, v6

    .line 226
    goto :goto_1

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 223
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 228
    throw v4

    .line 224
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v6

    .line 226
    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v6

    .line 226
    goto :goto_1
.end method

.method public static getYoumiInit()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/adview/AdViewManager;->youmiInit:Z

    return v0
.end method

.method private parseConfigurationString(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/adview/AdViewTargeting;->getRunMode()Lcom/adview/AdViewTargeting$RunMode;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$RunMode;->TEST:Lcom/adview/AdViewTargeting$RunMode;

    if-ne v2, v3, :cond_0

    .line 235
    const-string v2, "AdView SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received jsonString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adview/AdViewManager;->parseExtraJson(Lorg/json/JSONObject;)V

    .line 241
    const-string v2, "rations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adview/AdViewManager;->parseRationsJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/adview/obj/Extra;

    invoke-direct {v2}, Lcom/adview/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 249
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/adview/obj/Extra;

    invoke-direct {v2}, Lcom/adview/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0
.end method

.method private parseExtraJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-string v3, "red"

    const-string v3, "http://"

    const-string v3, "green"

    const-string v3, "blue"

    const-string v3, "alpha"

    .line 254
    new-instance v1, Lcom/adview/obj/Extra;

    invoke-direct {v1}, Lcom/adview/obj/Extra;-><init>()V

    .line 257
    .local v1, "extra":Lcom/adview/obj/Extra;
    :try_start_0
    const-string v3, "cycle_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->cycleTime:I

    .line 259
    const-string v3, "transition"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->transition:I

    .line 260
    const-string v3, "report"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/agent/agent2.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adview/util/AdViewUtil;->urlImpression:Ljava/lang/String;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/agent/agent3.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adview/util/AdViewUtil;->urlClick:Ljava/lang/String;

    .line 264
    const-string v3, "background_color_rgb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    .local v0, "backgroundColor":Lorg/json/JSONObject;
    const-string v3, "red"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgRed:I

    .line 266
    const-string v3, "green"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgGreen:I

    .line 267
    const-string v3, "blue"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgBlue:I

    .line 268
    const-string v3, "alpha"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    iput v3, v1, Lcom/adview/obj/Extra;->bgAlpha:I

    .line 270
    const-string v3, "text_color_rgb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 271
    .local v2, "textColor":Lorg/json/JSONObject;
    const-string v3, "red"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgRed:I

    .line 272
    const-string v3, "green"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgGreen:I

    .line 273
    const-string v3, "blue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgBlue:I

    .line 274
    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    iput v3, v1, Lcom/adview/obj/Extra;->fgAlpha:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "backgroundColor":Lorg/json/JSONObject;
    .end local v2    # "textColor":Lorg/json/JSONObject;
    :goto_0
    iput-object v1, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    .line 281
    return-void

    .line 277
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private parseRationsJson(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONArray;

    .prologue
    const-string v5, "key2"

    const-string v5, "key"

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, "rationsList":Ljava/util/List;, "Ljava/util/List<Lcom/adview/obj/Ration;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v4, "rationsList_pri":Ljava/util/List;, "Ljava/util/List<Lcom/adview/obj/Ration;>;"
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v0, v5, :cond_0

    .line 338
    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 339
    iput-object v3, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    .line 340
    iget-object v5, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iput-object v5, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 342
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 343
    iput-object v4, p0, Lcom/adview/AdViewManager;->rationsList_pri:Ljava/util/List;

    .line 344
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iput-object v5, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    .line 347
    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 294
    .local v1, "jsonRation":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 292
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    new-instance v2, Lcom/adview/obj/Ration;

    invoke-direct {v2}, Lcom/adview/obj/Ration;-><init>()V

    .line 300
    .local v2, "ration":Lcom/adview/obj/Ration;
    const-string v5, "nid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    .line 301
    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->type:I

    .line 302
    const-string v5, "nname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->name:Ljava/lang/String;

    .line 303
    const-string v5, "weight"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    iput-wide v5, v2, Lcom/adview/obj/Ration;->weight:D

    .line 304
    const-string v5, "priority"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->priority:I

    .line 307
    iget v5, v2, Lcom/adview/obj/Ration;->type:I

    sparse-switch v5, :sswitch_data_0

    .line 323
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 327
    :goto_3
    iget-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    iget-wide v7, v2, Lcom/adview/obj/Ration;->weight:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 329
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget v5, v2, Lcom/adview/obj/Ration;->priority:I

    if-lez v5, :cond_1

    .line 331
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 334
    .end local v1    # "jsonRation":Lorg/json/JSONObject;
    .end local v2    # "ration":Lcom/adview/obj/Ration;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 311
    .restart local v1    # "jsonRation":Lorg/json/JSONObject;
    .restart local v2    # "ration":Lcom/adview/obj/Ration;
    :sswitch_0
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 312
    const-string v5, "key2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    goto :goto_3

    .line 316
    :sswitch_1
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 317
    const-string v5, "key2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    .line 318
    const-string v5, "type2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->type2:I

    .line 319
    const-string v5, "logo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->logo:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_0
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public static setConfigExpireTimeout(J)V
    .locals 0
    .param p0, "configExpireTimeout"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/adview/AdViewManager;->configExpireTimeout:J

    .line 77
    return-void
.end method

.method public static setYoumiInit(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/adview/AdViewManager;->youmiInit:Z

    .line 71
    return-void
.end method


# virtual methods
.method public fetchConfig()V
    .locals 20

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 159
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 205
    :goto_0
    return-void

    .line 163
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 164
    .local v4, "adViewPrefs":Landroid/content/SharedPreferences;
    const-string v16, "config"

    const/16 v17, 0x0

    move-object v0, v4

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "jsonString":Ljava/lang/String;
    const-string v16, "timestamp"

    const-wide/16 v17, -0x1

    move-object v0, v4

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 169
    .local v13, "timestamp":J
    if-eqz v12, :cond_1

    sget-wide v16, Lcom/adview/AdViewManager;->configExpireTimeout:J

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-wide v18, Lcom/adview/AdViewManager;->configExpireTimeout:J

    add-long v18, v18, v13

    cmp-long v16, v16, v18

    if-ltz v16, :cond_2

    .line 172
    :cond_1
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 174
    .local v8, "httpClient":Lorg/apache/http/client/HttpClient;
    const-string v16, "http://www.adview.cn/agent/agent1_android.php?appid=%s&appver=%d&client=0"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0xff

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, "url":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v9, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 183
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 185
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_2

    .line 186
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 187
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/adview/AdViewManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 189
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 190
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v16, "config"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v16, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v6

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/adview/AdViewManager;->parseConfigurationString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .restart local v8    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v15    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto :goto_1

    .line 194
    :catch_1
    move-exception v16

    goto :goto_1
.end method

.method public getExtra()Lcom/adview/obj/Extra;
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/adview/AdViewManager;->totalWeight:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0
.end method

.method public getRation()Lcom/adview/obj/Ration;
    .locals 11

    .prologue
    .line 90
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 92
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/adview/AdViewManager;->totalWeight:D

    mul-double v1, v7, v9

    .line 93
    .local v1, "r":D
    const-wide/16 v5, 0x0

    .line 96
    .local v5, "s":D
    iget-object v7, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/adview/obj/Ration;>;"
    const/4 v4, 0x0

    .line 98
    .local v4, "ration":Lcom/adview/obj/Ration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    :goto_0
    return-object v4

    .line 99
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ration":Lcom/adview/obj/Ration;
    check-cast v4, Lcom/adview/obj/Ration;

    .line 100
    .restart local v4    # "ration":Lcom/adview/obj/Ration;
    iget-wide v7, v4, Lcom/adview/obj/Ration;->weight:D

    add-double/2addr v5, v7

    .line 102
    cmpl-double v7, v5, v1

    if-ltz v7, :cond_0

    goto :goto_0
.end method

.method public getRollover()Lcom/adview/obj/Ration;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, "ration":Lcom/adview/obj/Ration;
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ration":Lcom/adview/obj/Ration;
    check-cast v0, Lcom/adview/obj/Ration;

    .restart local v0    # "ration":Lcom/adview/obj/Ration;
    :cond_1
    move-object v1, v0

    .line 120
    goto :goto_0
.end method

.method public getRollover_pri()Lcom/adview/obj/Ration;
    .locals 4

    .prologue
    .line 124
    const v0, 0x5f5e100

    .line 125
    .local v0, "max":I
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 126
    const/4 v3, 0x0

    .line 143
    :goto_0
    return-object v3

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, "ration":Lcom/adview/obj/Ration;
    const/4 v2, 0x0

    .line 131
    .local v2, "ration_pri":Lcom/adview/obj/Ration;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 143
    goto :goto_0

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ration":Lcom/adview/obj/Ration;
    check-cast v1, Lcom/adview/obj/Ration;

    .line 135
    .restart local v1    # "ration":Lcom/adview/obj/Ration;
    iget v3, v1, Lcom/adview/obj/Ration;->priority:I

    if-ge v3, v0, :cond_1

    .line 137
    move-object v2, v1

    .line 138
    iget v0, v1, Lcom/adview/obj/Ration;->priority:I

    goto :goto_1
.end method

.method public resetRollover()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 152
    return-void
.end method

.method public resetRollover_pri()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 148
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList_pri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    .line 149
    return-void
.end method
