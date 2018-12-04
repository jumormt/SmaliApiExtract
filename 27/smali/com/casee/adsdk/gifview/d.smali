.class public Lcom/casee/adsdk/gifview/d;
.super Ljava/lang/Thread;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcom/casee/adsdk/gifview/c;

.field private C:Z

.field private D:[B

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:[S

.field private L:[B

.field private M:[B

.field private N:[B

.field private O:Lcom/casee/adsdk/gifview/c;

.field private P:I

.field private Q:Lcom/casee/adsdk/gifview/GifAction;

.field private R:[B

.field public a:I

.field public b:I

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/casee/adsdk/gifview/GifAction;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->g:I

    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->C:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->E:I

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->F:I

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->G:I

    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->I:I

    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->R:[B

    iput-object p1, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    return-void
.end method

.method private c(I)[I
    .locals 9

    const/4 v4, 0x0

    mul-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    new-array v2, v0, [B

    :try_start_0
    iget-object v3, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v4

    move v3, v4

    :goto_1
    if-ge v3, p1, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v3, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v0, v3

    move v1, v6

    move v3, v7

    goto :goto_1
.end method

.method private f()V
    .locals 14

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->a:I

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->b:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->G:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->G:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->P:I

    sub-int/2addr v0, v10

    if-lez v0, :cond_1

    sub-int/2addr v0, v11

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/gifview/d;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/casee/adsdk/gifview/d;->a:I

    iget v6, p0, Lcom/casee/adsdk/gifview/d;->a:I

    iget v7, p0, Lcom/casee/adsdk/gifview/d;->b:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->G:I

    if-ne v0, v10, :cond_3

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->m:I

    :goto_1
    move v3, v2

    :goto_2
    iget v4, p0, Lcom/casee/adsdk/gifview/d;->y:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/casee/adsdk/gifview/d;->w:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/casee/adsdk/gifview/d;->a:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/casee/adsdk/gifview/d;->v:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/casee/adsdk/gifview/d;->x:I

    add-int/2addr v5, v4

    :goto_3
    if-ge v4, v5, :cond_2

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    move v3, v0

    move v4, v11

    move v0, v2

    :goto_4
    iget v5, p0, Lcom/casee/adsdk/gifview/d;->u:I

    if-ge v0, v5, :cond_7

    iget-boolean v5, p0, Lcom/casee/adsdk/gifview/d;->p:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/casee/adsdk/gifview/d;->u:I

    if-lt v2, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_5
    add-int v5, v2, v3

    move v13, v5

    move v5, v4

    move v4, v3

    move v3, v13

    :goto_6
    iget v6, p0, Lcom/casee/adsdk/gifview/d;->s:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/casee/adsdk/gifview/d;->b:I

    if-ge v2, v6, :cond_6

    iget v6, p0, Lcom/casee/adsdk/gifview/d;->a:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/casee/adsdk/gifview/d;->r:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/casee/adsdk/gifview/d;->t:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/casee/adsdk/gifview/d;->a:I

    add-int/2addr v8, v2

    if-ge v8, v7, :cond_8

    iget v7, p0, Lcom/casee/adsdk/gifview/d;->a:I

    add-int/2addr v2, v7

    :goto_7
    iget v7, p0, Lcom/casee/adsdk/gifview/d;->t:I

    mul-int/2addr v7, v0

    move v13, v7

    move v7, v6

    move v6, v13

    :goto_8
    if-ge v7, v2, :cond_6

    iget-object v8, p0, Lcom/casee/adsdk/gifview/d;->N:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v8, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    aget v6, v8, v6

    if-eqz v6, :cond_5

    aput v6, v1, v7

    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v9

    goto :goto_8

    :pswitch_0
    move v2, v12

    goto :goto_5

    :pswitch_1
    move v2, v10

    move v3, v12

    goto :goto_5

    :pswitch_2
    move v2, v11

    move v3, v10

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/casee/adsdk/gifview/d;->a:I

    iget v2, p0, Lcom/casee/adsdk/gifview/d;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->z:Landroid/graphics/Bitmap;

    return-void

    :cond_8
    move v2, v7

    goto :goto_7

    :cond_9
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_6

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->R:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->R:[B

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->h()I

    move-result v0

    return v0
.end method

.method private h()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->k()V

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->p()V

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->n()V

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->P:I

    if-gez v0, :cond_1

    iput v3, p0, Lcom/casee/adsdk/gifview/d;->d:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    invoke-interface {v0, v2, v1}, Lcom/casee/adsdk/gifview/GifAction;->a(ZI)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    return v0

    :cond_1
    iput v1, p0, Lcom/casee/adsdk/gifview/d;->d:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    invoke-interface {v0, v3, v1}, Lcom/casee/adsdk/gifview/GifAction;->a(ZI)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    invoke-interface {v0, v2, v1}, Lcom/casee/adsdk/gifview/GifAction;->a(ZI)V

    goto :goto_1
.end method

.method private i()V
    .locals 24

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/casee/adsdk/gifview/d;->t:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/casee/adsdk/gifview/d;->u:I

    move v4, v0

    mul-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->N:[B

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->N:[B

    move-object v4, v0

    array-length v4, v4

    if-ge v4, v3, :cond_1

    :cond_0
    new-array v4, v3, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/casee/adsdk/gifview/d;->N:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->K:[S

    move-object v4, v0

    if-nez v4, :cond_2

    const/16 v4, 0x1000

    new-array v4, v4, [S

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/casee/adsdk/gifview/d;->K:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object v4, v0

    if-nez v4, :cond_3

    const/16 v4, 0x1000

    new-array v4, v4, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/casee/adsdk/gifview/d;->L:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object v4, v0

    if-nez v4, :cond_4

    const/16 v4, 0x1001

    new-array v4, v4, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/casee/adsdk/gifview/d;->M:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->K:[S

    move-object v11, v0

    const/4 v12, 0x0

    aput-short v12, v11, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object v11, v0

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v11

    move v13, v10

    move v14, v10

    move v15, v2

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v7

    move v11, v10

    move v7, v10

    move v8, v10

    move v9, v10

    :goto_1
    if-ge v12, v3, :cond_6

    if-nez v9, :cond_d

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    if-nez v13, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/casee/adsdk/gifview/d;->m()I

    move-result v8

    if-gtz v8, :cond_7

    :cond_6
    move v2, v7

    :goto_2
    if-ge v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->N:[B

    move-object v4, v0

    const/4 v5, 0x0

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    move/from16 v23, v13

    move v13, v8

    move/from16 v8, v23

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->D:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v14

    add-int v11, v11, v19

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_9
    and-int v19, v11, v17

    shr-int v11, v11, v16

    sub-int v14, v14, v16

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_6

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_a

    add-int/lit8 v15, v4, 0x1

    const/16 v16, 0x1

    shl-int v16, v16, v15

    const/16 v17, 0x1

    sub-int v16, v16, v17

    add-int/lit8 v17, v5, 0x2

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v2

    goto :goto_1

    :cond_a
    if-ne v15, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object v10, v0

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v19

    aput-byte v20, v10, v9

    move v9, v15

    move/from16 v10, v19

    move/from16 v15, v19

    goto :goto_1

    :cond_b
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    int-to-byte v10, v10

    aput-byte v10, v20, v9

    move/from16 v9, v21

    move v10, v15

    :goto_3
    if-le v10, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v10

    aput-byte v22, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->K:[S

    move-object v9, v0

    aget-short v9, v9, v10

    move v10, v9

    move/from16 v9, v21

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object/from16 v20, v0

    aget-byte v10, v20, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v20, 0x1000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    move v0, v10

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->K:[S

    move-object v9, v0

    int-to-short v15, v15

    aput-short v15, v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->L:[B

    move-object v9, v0

    int-to-byte v15, v10

    aput-byte v15, v9, v18

    add-int/lit8 v9, v18, 0x1

    and-int v15, v9, v17

    if-nez v15, :cond_f

    const/16 v15, 0x1000

    if-ge v9, v15, :cond_f

    add-int/lit8 v15, v16, 0x1

    add-int v16, v17, v9

    :goto_4
    move/from16 v17, v16

    move/from16 v18, v9

    move/from16 v16, v15

    move/from16 v9, v21

    move/from16 v15, v19

    :cond_d
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->N:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/adsdk/gifview/d;->M:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v9

    aput-byte v21, v19, v7

    add-int/lit8 v7, v12, 0x1

    move v12, v7

    move/from16 v7, v20

    goto/16 :goto_1

    :cond_e
    return-void

    :cond_f
    move/from16 v15, v16

    move/from16 v16, v17

    goto :goto_4

    :cond_10
    move/from16 v10, v19

    goto/16 :goto_3
.end method

.method private j()Z
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->d:I

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->P:I

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->h:[I

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->i:[I

    return-void
.end method

.method private l()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->d:I

    goto :goto_0
.end method

.method private m()I
    .locals 4

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->E:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->E:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/casee/adsdk/gifview/d;->E:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    iget v3, p0, Lcom/casee/adsdk/gifview/d;->E:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Lcom/casee/adsdk/gifview/d;->E:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->d:I

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private n()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    :sswitch_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iput v5, p0, Lcom/casee/adsdk/gifview/d;->d:I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->q()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->v()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->o()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->m()I

    const-string v1, ""

    move-object v2, v1

    move v1, v4

    :goto_1
    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "NETSCAPE2.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->s()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->v()V

    goto :goto_0

    :sswitch_5
    move v0, v5

    goto :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->F:I

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->F:I

    if-nez v1, :cond_0

    iput v2, p0, Lcom/casee/adsdk/gifview/d;->F:I

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->I:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->J:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->r()V

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->f:I

    invoke-direct {p0, v0}, Lcom/casee/adsdk/gifview/d;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->h:[I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->h:[I

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->k:I

    aget v0, v0, v1

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->l:I

    goto :goto_1
.end method

.method private q()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->r:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->s:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->t:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->u:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->o:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v1, v5

    :goto_1
    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->p:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->q:I

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->o:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->q:I

    invoke-direct {p0, v0}, Lcom/casee/adsdk/gifview/d;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->i:[I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->i:[I

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->J:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    iget v2, p0, Lcom/casee/adsdk/gifview/d;->J:I

    aput v3, v1, v2

    :goto_3
    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    if-nez v1, :cond_1

    iput v5, p0, Lcom/casee/adsdk/gifview/d;->d:I

    :cond_1
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->h:[I

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->k:I

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->J:I

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/casee/adsdk/gifview/d;->l:I

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->i()V

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->v()V

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->P:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->P:I

    :try_start_0
    iget v1, p0, Lcom/casee/adsdk/gifview/d;->a:I

    iget v2, p0, Lcom/casee/adsdk/gifview/d;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/casee/adsdk/gifview/d;->z:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->f()V

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    if-nez v1, :cond_8

    new-instance v1, Lcom/casee/adsdk/gifview/c;

    iget-object v2, p0, Lcom/casee/adsdk/gifview/d;->z:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/casee/adsdk/gifview/d;->I:I

    invoke-direct {v1, v2, v3}, Lcom/casee/adsdk/gifview/c;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iput-object v1, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    :goto_6
    iget-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->j:[I

    iget v2, p0, Lcom/casee/adsdk/gifview/d;->J:I

    aput v0, v1, v2

    :cond_7
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->u()V

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->Q:Lcom/casee/adsdk/gifview/GifAction;

    iget v1, p0, Lcom/casee/adsdk/gifview/d;->P:I

    invoke-interface {v0, v5, v1}, Lcom/casee/adsdk/gifview/GifAction;->a(ZI)V

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    :goto_7
    iget-object v2, v1, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    goto :goto_7

    :cond_9
    new-instance v2, Lcom/casee/adsdk/gifview/c;

    iget-object v3, p0, Lcom/casee/adsdk/gifview/d;->z:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/casee/adsdk/gifview/d;->I:I

    invoke-direct {v2, v3, v4}, Lcom/casee/adsdk/gifview/c;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, v1, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    goto :goto_6

    :cond_a
    move v0, v3

    goto/16 :goto_3
.end method

.method private r()V
    .locals 2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->a:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->t()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->b:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->e:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->f:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->k:I

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->n:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->m()I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/casee/adsdk/gifview/d;->D:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->g:I

    :cond_1
    iget v0, p0, Lcom/casee/adsdk/gifview/d;->E:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private t()I
    .locals 2

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v0

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->l()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private u()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->F:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->G:I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->r:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->v:I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->s:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->w:I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->t:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->x:I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->u:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->y:I

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->z:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->l:I

    iput v0, p0, Lcom/casee/adsdk/gifview/d;->m:I

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->F:I

    iput-boolean v1, p0, Lcom/casee/adsdk/gifview/d;->H:Z

    iput v1, p0, Lcom/casee/adsdk/gifview/d;->I:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->i:[I

    return-void
.end method

.method private v()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->m()I

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->E:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/gifview/d;->b(I)Lcom/casee/adsdk/gifview/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v2, v0, Lcom/casee/adsdk/gifview/c;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iget-object v0, v0, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->A:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    :cond_3
    iput-object v2, p0, Lcom/casee/adsdk/gifview/d;->R:[B

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/gifview/d;->P:I

    return v0
.end method

.method public b(I)Lcom/casee/adsdk/gifview/c;
    .locals 3

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/gifview/d;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    return-void
.end method

.method public e()Lcom/casee/adsdk/gifview/c;
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/gifview/d;->C:Z

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/casee/adsdk/gifview/d;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    iget-object v0, v0, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    iget-object v0, v0, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    iget-object v0, v0, Lcom/casee/adsdk/gifview/c;->c:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->O:Lcom/casee/adsdk/gifview/c;

    iput-object v0, p0, Lcom/casee/adsdk/gifview/d;->B:Lcom/casee/adsdk/gifview/c;

    goto :goto_1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->h()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/gifview/d;->R:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/casee/adsdk/gifview/d;->g()I

    goto :goto_0
.end method
