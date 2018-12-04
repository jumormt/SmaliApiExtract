.class Lcom/wiyun/ad/b;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static b:I

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/wiyun/ad/b;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wiyun/ad/b;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/wiyun/ad/AdView;)I
    .locals 2

    sget-object v0, Lcom/wiyun/ad/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/i;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getTestAdType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v2}, Lcom/wiyun/ad/m;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Lcom/wiyun/ad/b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "wiyun_last_ad_json"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Lcom/wiyun/ad/AdView;)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_11

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/wiyun/ad/b;->a(Ljava/io/File;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/wiyun/ad/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v0, v5

    :cond_2
    sget-object v5, Lcom/wiyun/ad/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://d.wiyun.com/adv/d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "a"

    invoke-static {v5, v6, v1}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "r"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "s"

    const-string v7, "1.2.1"

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const-string v7, "h"

    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7, v8}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "w"

    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7, v8}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/wiyun/ad/k;->a(Lcom/wiyun/ad/AdView;)I

    move-result v7

    if-gtz v7, :cond_4

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_4
    int-to-float v8, v7

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float v6, v8, v6

    float-to-int v6, v6

    const-string v8, "size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "x50,"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x75"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "o"

    invoke-static {p0}, Lcom/wiyun/ad/m;->b(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "Android Emulator"

    :goto_2
    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "v"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "b"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "m"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "u"

    invoke-static {p0}, Lcom/wiyun/ad/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "n"

    invoke-static {p0}, Lcom/wiyun/ad/m;->c(Landroid/content/Context;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v6, "f"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v6, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "c"

    invoke-static {p0}, Lcom/wiyun/ad/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mm"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/wiyun/ad/b;->a:Z

    if-nez v1, :cond_5

    const-string v1, "e"

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "k"

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v5, "User-Agent"

    invoke-static {}, Lcom/wiyun/ad/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_13

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/wiyun/ad/b;->a:Z

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v4, v0}, Lcom/wiyun/ad/b;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Lcom/wiyun/ad/d;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/wiyun/ad/d;-><init>(Lorg/json/JSONTokener;)V

    const-string v0, "p"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "q"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "m"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "z"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wiyun/ad/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ra"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "c"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wiyun/ad/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    const/4 v10, 0x2

    if-eq v5, v10, :cond_8

    const-string v10, "application/x-search"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    :cond_8
    const-string v10, "application/x-search"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "%query%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_20

    :cond_9
    const-string v10, "application/x-map"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "addr://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "loc://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_a
    new-instance v10, Lcom/wiyun/ad/i;

    invoke-direct {v10}, Lcom/wiyun/ad/i;-><init>()V

    iput-object v0, v10, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    iput-object v4, v10, Lcom/wiyun/ad/i;->b:Ljava/lang/String;

    iput v5, v10, Lcom/wiyun/ad/i;->d:I

    const-string v0, "i"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->f:Ljava/lang/String;

    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->j:Ljava/lang/String;

    const-string v0, "sh"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->g:Ljava/lang/String;

    iput-object v7, v10, Lcom/wiyun/ad/i;->o:Ljava/lang/String;

    iput-object v9, v10, Lcom/wiyun/ad/i;->q:Ljava/lang/String;

    const-string v0, "n"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->p:Ljava/lang/String;

    const-string v0, "b"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    const-string v0, "h"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/i;->n:I

    const-string v0, "w"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/i;->m:I

    iput-object v8, v10, Lcom/wiyun/ad/i;->e:Ljava/lang/String;

    iput-object v6, v10, Lcom/wiyun/ad/i;->r:Ljava/lang/String;

    const-string v0, "bc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, v10, Lcom/wiyun/ad/i;->k:I

    :cond_b
    iget v0, v10, Lcom/wiyun/ad/i;->k:I

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    if-nez v0, :cond_c

    iget v0, v10, Lcom/wiyun/ad/i;->k:I

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    iput v0, v10, Lcom/wiyun/ad/i;->k:I

    :cond_c
    const-string v0, "tc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, v10, Lcom/wiyun/ad/i;->h:I

    :cond_d
    iget v0, v10, Lcom/wiyun/ad/i;->h:I

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    if-nez v0, :cond_e

    iget v0, v10, Lcom/wiyun/ad/i;->h:I

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    iput v0, v10, Lcom/wiyun/ad/i;->h:I

    :cond_e
    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v10, Lcom/wiyun/ad/i;->i:F

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->c:Ljava/lang/String;

    iget-object v0, v10, Lcom/wiyun/ad/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/wiyun/ad/i;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->f:Ljava/lang/String;

    :cond_f
    iget v0, v10, Lcom/wiyun/ad/i;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_1

    move-object p0, v2

    :goto_4
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p0, :cond_10

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_5
    return-object p0

    :pswitch_0
    const-string v0, "test_text_ad"

    invoke-static {v0}, Lcom/wiyun/ad/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "test_banner_ad"

    invoke-static {v0}, Lcom/wiyun/ad/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "test_fullscreen_ad"

    invoke-static {v0}, Lcom/wiyun/ad/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    :try_start_1
    sget-object v5, Lcom/wiyun/ad/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->getResId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    move-object p0, v2

    :goto_6
    :try_start_2
    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p0, :cond_10

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    :try_start_3
    const-string v7, "Android"

    goto/16 :goto_2

    :cond_13
    const-string v1, "WiYun"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to get ad, statusCode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object p1, v2

    :goto_7
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    if-nez p1, :cond_14

    const-string p1, "WiYun"

    const-string v0, "Failed to get ad"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    throw p0

    :pswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result p1

    if-nez p1, :cond_16

    :try_start_5
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    :cond_15
    iget-object p1, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    if-nez p1, :cond_21

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_21

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;[B)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p0, v10

    goto/16 :goto_4

    :cond_16
    :try_start_6
    iget-object p1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    :cond_17
    iget-object p1, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-nez p1, :cond_18

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_18

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;[B)Z

    :cond_18
    iget-object p0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_20

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/i;->u:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v10, Lcom/wiyun/ad/i;->f:Ljava/lang/String;

    move-object p0, v10

    goto/16 :goto_4

    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "icon"

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {p1, p0}, Lcom/wiyun/ad/s;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v10, Lcom/wiyun/ad/i;->t:Landroid/graphics/Bitmap;

    :cond_1a
    move-object p0, v10

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p1}, Lcom/wiyun/ad/AdView;->isTestMode()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    :cond_1b
    iget-object p1, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1c

    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1c

    invoke-static {p1}, Lcom/wiyun/ad/b;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/wiyun/ad/s;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    iget-object v0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    iget-object v1, v10, Lcom/wiyun/ad/i;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/wiyun/ad/o;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wiyun/ad/b;->a(Ljava/io/File;[B)Z

    :cond_1c
    iget-object p0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_20

    move-object p0, v10

    goto/16 :goto_4

    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "icon"

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {p1, p0}, Lcom/wiyun/ad/s;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v10, Lcom/wiyun/ad/i;->s:Landroid/graphics/Bitmap;

    :cond_1e
    move-object p0, v10

    goto/16 :goto_4

    :pswitch_5
    move-object p0, v10

    goto/16 :goto_4

    :cond_1f
    const-string p0, "WiYun"

    const-string p1, "Failed to get ad"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object p0, v2

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v10

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    goto/16 :goto_7

    :catch_1
    move-exception p0

    move-object p0, v10

    goto/16 :goto_6

    :cond_20
    move-object p0, v2

    goto/16 :goto_4

    :cond_21
    move-object p0, v10

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, "%5B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/b;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wiyun/ad/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 3

    const-string v2, ""

    if-nez p0, :cond_0

    const-string v0, ""

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method

.method private static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    sget v2, Lcom/wiyun/ad/b;->b:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/wiyun/ad/b;->b:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-static {}, Lcom/wiyun/ad/l;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/wiyun/ad/l;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wiyun/ad/l;->d()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/wiyun/ad/i;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wiyun/ad/i;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/wiyun/ad/b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/wiyun/ad/i;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/wiyun/ad/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p"

    iget-object v3, p1, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "q"

    iget-object v3, p1, Lcom/wiyun/ad/i;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ra"

    iget-object v3, p1, Lcom/wiyun/ad/i;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WiYun"

    const-string v3, "Failed to record ad click"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method static a(Landroid/content/Context;Lcom/wiyun/ad/i;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wiyun/ad/i;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/wiyun/ad/b;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/wiyun/ad/i;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/wiyun/ad/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p"

    iget-object v3, p1, Lcom/wiyun/ad/i;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "q"

    iget-object v3, p1, Lcom/wiyun/ad/i;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ra"

    iget-object v3, p1, Lcom/wiyun/ad/i;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {v1, v2, p2}, Lcom/wiyun/ad/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WiYun"

    const-string v3, "Failed to notify server"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wiyun/ad/b;->a(Ljava/io/File;[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;[B)Z
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v1, "WiYun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to cache ad to file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/io/File;)[B
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0}, Lcom/wiyun/ad/b;->a(Ljava/io/InputStream;)[B
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz p0, :cond_0

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/HttpResponse;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_1

    :catch_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method
