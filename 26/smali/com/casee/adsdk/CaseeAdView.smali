.class public Lcom/casee/adsdk/CaseeAdView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/CaseeAdView$a;,
        Lcom/casee/adsdk/CaseeAdView$AdListener;
    }
.end annotation


# static fields
.field static a:Lcom/casee/adsdk/w;

.field private static j:Ljava/lang/String;

.field private static k:Z


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/casee/adsdk/e;

.field private d:Ljava/util/Timer;

.field private e:Lcom/casee/adsdk/CaseeAdView$AdListener;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/Random;

.field private h:I

.field private i:I

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lcom/casee/adsdk/o;

.field private s:Z

.field private t:Z

.field private u:F

.field private v:[[F

.field private w:[[F

.field private x:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->f:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->n:F

    const/16 v0, 0x7530

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->p:I

    iput-boolean v4, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->u:F

    const/4 v0, 0x4

    new-array v0, v0, [[F

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v5, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.android.com/apk/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.casee.adsdk.siteId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.casee.adsdk.isTesting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/casee/adsdk/CaseeAdView;->k:Z

    :cond_0
    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Site ID must be a string which contains 32 chars."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/casee/adsdk/af;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/af;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->o()V

    return-void

    :cond_3
    if-eqz p2, :cond_2

    :try_start_1
    const-string v0, "refreshInterval"

    iget v2, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    const v2, 0xdbba0

    if-le v0, v2, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fetch interval must be between 15 secs and 15 mins."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->p:I

    const-string v0, "textColor"

    iget v2, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    const-string v0, "backgroundColor"

    iget v2, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    const-string v0, "vertical"

    iget-boolean v2, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIFZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->f:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    const/4 v0, 0x0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->n:F

    const/16 v0, 0x7530

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->u:F

    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Site ID must be a string which contains 32 chars."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-object p4, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    sput-boolean p5, Lcom/casee/adsdk/CaseeAdView;->k:Z

    const/16 v0, 0x2710

    if-lt p6, v0, :cond_2

    const v0, 0xdbba0

    if-le p6, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fetch interval must be between 15 secs and 15 mins."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p6, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->p:I

    iput p7, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    iput p8, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    iput-boolean p9, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/casee/adsdk/ae;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/ae;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->o()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIIIZ)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;I)I
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    return p1
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;)Lcom/casee/adsdk/e;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/o;)Lcom/casee/adsdk/o;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->r:Lcom/casee/adsdk/o;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->m()V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    return-void
.end method

.method private a(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 3

    const/4 v1, 0x0

    const-string v2, "CASEE-AD"

    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->t:Z

    if-nez v0, :cond_0

    const-string v0, "CASEE-AD"

    const-string v0, "View is not shown, skip swap ad."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CASEE-AD"

    const-string v0, "View is invisible, pass swap ad."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x32

    if-ge v0, v1, :cond_4

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->d(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x50

    if-gt v0, v1, :cond_6

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/CaseeAdView;->b(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->g:Ljava/util/Random;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->b(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    goto :goto_0
.end method

.method private a(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V
    .locals 12

    const-wide/16 v10, 0x320

    const/4 v9, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v9}, Lcom/casee/adsdk/e;->setClickable(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v2, v2, p3

    aget v2, v2, v9

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    aget v4, v3, v1

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    const/4 v5, 0x2

    aget v6, v3, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    const/4 v5, 0x3

    aget v8, v3, v5

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/casee/adsdk/ab;

    invoke-direct {v2, p0, p1}, Lcom/casee/adsdk/ab;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p2, v9}, Lcom/casee/adsdk/e;->setClickable(Z)V

    invoke-virtual {p2, v9}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v2, v2, p3

    const/4 v3, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x5

    aget v4, v3, v4

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    const/4 v5, 0x6

    aget v6, v3, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->v:[[F

    aget-object v3, v3, p3

    const/4 v5, 0x7

    aget v8, v3, v5

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v1}, Lcom/casee/adsdk/e;->setClickable(Z)V

    const-string v0, "CASEE-AD"

    const-string v1, "display the ad successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/CaseeAdView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->o()V

    return-void
.end method

.method static synthetic b(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->e(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method

.method private b(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    new-instance v1, Lcom/casee/adsdk/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/casee/adsdk/ad;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/CaseeAdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private b(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V
    .locals 9

    const/4 v5, 0x1

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v2, v2, p3

    aget v2, v2, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v4, v4, p3

    const/4 v6, 0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v6, v6, p3

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lcom/casee/adsdk/CaseeAdView;->w:[[F

    aget-object v7, v7, p3

    const/4 v8, 0x5

    aget v8, v7, v8

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    new-instance v1, Lcom/casee/adsdk/x;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/casee/adsdk/x;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic c(Lcom/casee/adsdk/CaseeAdView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->a(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    return-void
.end method

.method private c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    move v0, v4

    :goto_0
    invoke-virtual {p2, v4}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/casee/adsdk/aa;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/aa;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->startNow()V

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/CaseeAdView;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "CASEE-AD"

    const-string v1, "display the ad successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_1
.end method

.method private c(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2, v9}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v1, v1, p3

    aget v1, v1, v9

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v2, v2, p3

    aget v2, v2, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v4, v4, p3

    const/4 v6, 0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v6, v6, p3

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lcom/casee/adsdk/CaseeAdView;->x:[[F

    aget-object v7, v7, p3

    const/4 v8, 0x5

    aget v8, v7, v8

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/casee/adsdk/d;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/d;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "CASEE-AD"

    const-string v1, "display the ad successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    return-void
.end method

.method static synthetic d(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/o;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->r:Lcom/casee/adsdk/o;

    return-object v0
.end method

.method private d(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Lcom/casee/adsdk/a;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/casee/adsdk/a;-><init>(FFFF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    new-instance v1, Lcom/casee/adsdk/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/casee/adsdk/z;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static d()Z
    .locals 1

    sget-boolean v0, Lcom/casee/adsdk/CaseeAdView;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->e:Lcom/casee/adsdk/CaseeAdView$AdListener;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private e(Lcom/casee/adsdk/e;Lcom/casee/adsdk/e;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/casee/adsdk/e;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2, v5}, Lcom/casee/adsdk/e;->setVisibility(I)V

    new-instance v0, Lcom/casee/adsdk/a;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/casee/adsdk/a;-><init>(FFFF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/casee/adsdk/y;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/y;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    invoke-virtual {p2, v0}, Lcom/casee/adsdk/e;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "CASEE-AD"

    const-string v1, "display the ad successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    return-void
.end method

.method static synthetic f(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    return v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->n()V

    return-void
.end method

.method static synthetic i(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->p:I

    return v0
.end method

.method static synthetic j(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/e;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    return-object v0
.end method

.method static synthetic k(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    return v0
.end method

.method static synthetic l(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    return v0
.end method

.method private m()V
    .locals 6

    const-string v2, "CASEE-AD"

    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CASEE-AD"

    const-string v0, "You are using the sample site ID. Before release your application, please use a formal site id which you get from CASEE."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->t:Z

    const-string v0, "CASEE-AD"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start to show ad: siteid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isTesting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/casee/adsdk/CaseeAdView;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; interval - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->a:Lcom/casee/adsdk/w;

    if-nez v0, :cond_1

    new-instance v0, Lcom/casee/adsdk/w;

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/casee/adsdk/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/casee/adsdk/CaseeAdView;->a:Lcom/casee/adsdk/w;

    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->a:Lcom/casee/adsdk/w;

    invoke-virtual {v0}, Lcom/casee/adsdk/w;->start()V

    :cond_1
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    new-instance v1, Lcom/casee/adsdk/ac;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/ac;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/casee/adsdk/CaseeAdView;->o:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    const-string v1, "CASEE-AD"

    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CASEE-AD"

    const-string v0, "==================showAd()================"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->b:Landroid/os/Handler;

    :cond_1
    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->t:Z

    if-nez v0, :cond_2

    const-string v0, "CASEE-AD"

    const-string v0, "View is not shown, skip show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CASEE-AD"

    const-string v0, "View is invisible, pass show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->s:Z

    new-instance v0, Lcom/casee/adsdk/CaseeAdView$a;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/CaseeAdView$a;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0}, Lcom/casee/adsdk/CaseeAdView$a;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->n:F

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    return v0
.end method

.method public i()Lcom/casee/adsdk/o;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->r:Lcom/casee/adsdk/o;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->n()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    const/16 v2, 0x30

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->u:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/16 v0, 0x18

    :goto_0
    iget-boolean v1, p0, Lcom/casee/adsdk/CaseeAdView;->q:Z

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    :cond_0
    :goto_1
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/casee/adsdk/CaseeAdView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->u:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x48

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    :cond_4
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->n:F

    goto :goto_1
.end method

.method public onShown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->t:Z

    return-void
.end method

.method public onUnshown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->t:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v1, "CASEE-AD"

    if-eqz p1, :cond_0

    const-string v0, "CASEE-AD"

    const-string v0, "Adview got focus, start ..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->m()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CASEE-AD"

    const-string v0, "Adview lost focus, cancel timer."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->n()V

    goto :goto_0
.end method

.method public setAdViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->i:I

    return-void
.end method

.method public setAdViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->h:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->e:Lcom/casee/adsdk/CaseeAdView$AdListener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->m:I

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    invoke-virtual {v0, p1}, Lcom/casee/adsdk/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    invoke-virtual {v0, p1}, Lcom/casee/adsdk/e;->setVisibility(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->c:Lcom/casee/adsdk/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->o()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->l:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method
