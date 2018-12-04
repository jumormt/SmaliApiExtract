.class public Lcom/casee/adsdk/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:Landroid/content/Context;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u67b6\u52bf\u63a8\u8350"

    iput-object v0, p0, Lcom/casee/adsdk/o;->a:Ljava/lang/String;

    const-string v0, "\u6d4b\u8bd5\u72b6\u6001"

    iput-object v0, p0, Lcom/casee/adsdk/o;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/casee/adsdk/o;->n:Z

    iput-boolean v1, p0, Lcom/casee/adsdk/o;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/o;->s:I

    iput-object p1, p0, Lcom/casee/adsdk/o;->p:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/casee/adsdk/o;
    .locals 6

    const/4 v5, 0x0

    const-string v4, "CASEE-AD"

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "CASEE-AD"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/casee/adsdk/o;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ulogo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->b(Ljava/lang/String;)V

    :cond_2
    const-string v2, "adtext1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->a(Ljava/lang/String;)V

    :cond_3
    const-string v2, "adurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->c(Ljava/lang/String;)V

    :cond_4
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->d(Ljava/lang/String;)V

    :cond_5
    const-string v2, "adid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->e(Ljava/lang/String;)V

    :cond_6
    const-string v2, "asq"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->h(Ljava/lang/String;)V

    :cond_7
    const-string v2, "ssq"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->g(Ljava/lang/String;)V

    :cond_8
    const-string v2, "type"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->b(I)V

    :cond_9
    const-string v2, "pName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->i(Ljava/lang/String;)V

    :cond_a
    const-string v2, "secondUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v2}, Lcom/casee/adsdk/o;->j(Ljava/lang/String;)V

    :cond_b
    const-string v2, "it"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_c

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/o;->a(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/o;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CASEE-AD"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v2, "CASEE-AD"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/o;->s:I

    return v0
.end method

.method public a(F)Landroid/graphics/Bitmap;
    .locals 5

    const-class v0, Lcom/casee/adsdk/o;

    const-string v3, "CASEE-AD"

    const/4 v0, 0x0

    const-string v1, "CASEE-AD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    :try_start_0
    const-class v1, Lcom/casee/adsdk/o;

    const-string v2, "recommend240.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "CASEE-AD"

    const-string v2, "getCaseeCommendIcon recommend240.png"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    const-class v1, Lcom/casee/adsdk/o;

    const-string v2, "recommend160.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    const-string v1, "CASEE-AD"

    const-string v2, "getCaseeCommendIcon recommend160.png"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    const-string v2, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public a(Z)Lcom/casee/adsdk/gifview/b;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/casee/adsdk/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/casee/adsdk/gifview/b;

    iget-object v1, p0, Lcom/casee/adsdk/o;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/casee/adsdk/gifview/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/casee/adsdk/o;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/casee/adsdk/o;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/casee/adsdk/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/casee/adsdk/gifview/b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/o;->s:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/o;->o:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/o;->o:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/o;->r:Z

    :cond_0
    iput-object p1, p0, Lcom/casee/adsdk/o;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Ads by casee"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/o;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/o;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/casee/adsdk/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/casee/adsdk/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/casee/adsdk/o;->f()Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/casee/adsdk/o;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/casee/adsdk/o;->e:Landroid/graphics/drawable/Drawable;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->j:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "http://www.casee.cn"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/o;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->k:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->q:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/o;->g:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/o;->r:Z

    return v0
.end method
