.class Lnet/youmi/android/ct;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field private A:Lnet/youmi/android/ek;

.field private B:Lnet/youmi/android/cq;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;

.field private z:Lnet/youmi/android/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00000000"

    sput-object v0, Lnet/youmi/android/ct;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lnet/youmi/android/ct;->b:J

    iput-wide v2, p0, Lnet/youmi/android/ct;->c:J

    iput-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    iput-boolean v0, p0, Lnet/youmi/android/ct;->e:Z

    iput-boolean v0, p0, Lnet/youmi/android/ct;->f:Z

    iput-boolean v1, p0, Lnet/youmi/android/ct;->g:Z

    iput-boolean v0, p0, Lnet/youmi/android/ct;->h:Z

    iput-boolean v0, p0, Lnet/youmi/android/ct;->i:Z

    const/16 v0, 0xb

    iput v0, p0, Lnet/youmi/android/ct;->j:I

    iput v1, p0, Lnet/youmi/android/ct;->k:I

    return-void
.end method

.method static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;J)Lnet/youmi/android/ct;
    .locals 4

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    :cond_5
    invoke-static {p5}, Lnet/youmi/android/bs;->a(I)Z

    move-result p4

    if-nez p4, :cond_6

    const/4 p0, 0x0

    goto :goto_0

    :cond_6
    invoke-static {p6}, Lnet/youmi/android/et;->a(I)Z

    move-result p4

    if-nez p4, :cond_7

    const/4 p0, 0x0

    goto :goto_0

    :cond_7
    new-instance p4, Lnet/youmi/android/ct;

    invoke-direct {p4}, Lnet/youmi/android/ct;-><init>()V

    move-wide/from16 v0, p20

    move-object v2, p4

    iput-wide v0, v2, Lnet/youmi/android/ct;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p20

    move-wide/from16 v0, p20

    move-object v2, p4

    iput-wide v0, v2, Lnet/youmi/android/ct;->b:J

    iput-object p1, p4, Lnet/youmi/android/ct;->o:Ljava/lang/String;

    iput-object p2, p4, Lnet/youmi/android/ct;->l:Ljava/lang/String;

    iput-object p3, p4, Lnet/youmi/android/ct;->n:Ljava/lang/String;

    iput p5, p4, Lnet/youmi/android/ct;->k:I

    iput p6, p4, Lnet/youmi/android/ct;->j:I

    if-eqz p19, :cond_8

    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    iput-object p1, p4, Lnet/youmi/android/ct;->u:Ljava/lang/String;

    :cond_8
    if-nez p7, :cond_29

    const-string p1, "00000000"

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x8

    if-le p2, p3, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x8

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    :goto_2
    iput-object p1, p4, Lnet/youmi/android/ct;->m:Ljava/lang/String;

    move/from16 v0, p17

    move-object v1, p4

    iput-boolean v0, v1, Lnet/youmi/android/ct;->f:Z

    const/16 p1, 0x16

    if-ne p6, p1, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p4, Lnet/youmi/android/ct;->f:Z

    :cond_a
    move/from16 v0, p18

    move-object v1, p4

    iput-boolean v0, v1, Lnet/youmi/android/ct;->g:Z

    if-eqz p8, :cond_b

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b

    iput-object p1, p4, Lnet/youmi/android/ct;->p:Ljava/lang/String;

    :cond_b
    if-eqz p9, :cond_c

    invoke-virtual {p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_c

    iput-object p1, p4, Lnet/youmi/android/ct;->q:Ljava/lang/String;

    :cond_c
    iget-object p1, p4, Lnet/youmi/android/ct;->p:Ljava/lang/String;

    if-nez p1, :cond_d

    iget-object p1, p4, Lnet/youmi/android/ct;->q:Ljava/lang/String;

    if-eqz p1, :cond_d

    iget-object p1, p4, Lnet/youmi/android/ct;->q:Ljava/lang/String;

    iput-object p1, p4, Lnet/youmi/android/ct;->p:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p4, Lnet/youmi/android/ct;->q:Ljava/lang/String;

    :cond_d
    if-eqz p13, :cond_12

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-eqz p14, :cond_13

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_4
    iput-object p1, p4, Lnet/youmi/android/ct;->s:Ljava/lang/String;

    iput-object p2, p4, Lnet/youmi/android/ct;->t:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_14

    :cond_e
    const/4 p1, 0x1

    iput-boolean p1, p4, Lnet/youmi/android/ct;->i:Z

    :goto_5
    if-nez p15, :cond_15

    const/16 p1, 0x1f

    if-eq p6, p1, :cond_15

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    const/16 p3, 0x8

    if-ge p2, p3, :cond_9

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    :goto_6
    const/16 p5, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p7

    sub-int/2addr p5, p7

    if-lt p3, p5, :cond_10

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_10
    const/16 p5, 0x30

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_11
    :try_start_2
    const-string p1, "00000000"

    goto/16 :goto_2

    :cond_12
    const-string p1, ""

    goto :goto_3

    :cond_13
    const-string p2, ""

    goto :goto_4

    :cond_14
    const/4 p1, 0x0

    iput-boolean p1, p4, Lnet/youmi/android/ct;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_15
    :try_start_3
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_16

    const/16 p2, 0x1f

    if-eq p6, p2, :cond_16

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_16
    iput-object p1, p4, Lnet/youmi/android/ct;->r:Ljava/lang/String;

    if-eqz p16, :cond_17

    invoke-virtual/range {p16 .. p16}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    invoke-virtual/range {p16 .. p16}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p4, Lnet/youmi/android/ct;->v:[Ljava/lang/String;

    const/4 p1, 0x0

    move p2, p1

    :goto_7
    invoke-virtual/range {p16 .. p16}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1b

    :cond_17
    invoke-virtual {p4}, Lnet/youmi/android/ct;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_18

    if-nez p10, :cond_1c

    const/4 p1, 0x0

    iput p1, p4, Lnet/youmi/android/ct;->k:I

    :cond_18
    :goto_8
    if-eqz p11, :cond_19

    invoke-virtual {p11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result p2

    if-lez p2, :cond_19

    :try_start_4
    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/youmi/android/eb;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/youmi/android/eb;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p4, Lnet/youmi/android/ct;->x:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_19
    :goto_9
    if-nez p12, :cond_22

    :try_start_5
    const-string p1, ""

    :goto_a
    iget p2, p4, Lnet/youmi/android/ct;->k:I

    packed-switch p2, :pswitch_data_0

    :cond_1a
    :goto_b
    move-object p0, p4

    goto/16 :goto_0

    :cond_1b
    iget-object p3, p4, Lnet/youmi/android/ct;->v:[Ljava/lang/String;

    move-object/from16 v0, p16

    move v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p3, p2

    add-int/lit8 p1, p2, 0x1

    move p2, p1

    goto :goto_7

    :cond_1c
    invoke-virtual {p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result p2

    if-lez p2, :cond_20

    :try_start_6
    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/youmi/android/eb;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/youmi/android/eb;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p4, Lnet/youmi/android/ct;->w:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1d
    :goto_c
    :try_start_7
    iget-object p2, p4, Lnet/youmi/android/ct;->w:Landroid/graphics/Bitmap;

    if-nez p2, :cond_18

    if-eqz v3, :cond_1f

    new-instance p2, Lnet/youmi/android/by;

    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/youmi/android/by;-><init>(Lnet/youmi/android/eb;)V

    invoke-virtual {p2, p0, p1}, Lnet/youmi/android/by;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1e

    invoke-virtual {p2}, Lnet/youmi/android/by;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p4, Lnet/youmi/android/ct;->w:Landroid/graphics/Bitmap;

    iget-object p1, p4, Lnet/youmi/android/ct;->w:Landroid/graphics/Bitmap;

    if-nez p1, :cond_18

    const/4 p1, 0x0

    iput p1, p4, Lnet/youmi/android/ct;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    :try_start_8
    iput p1, p4, Lnet/youmi/android/ct;->k:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_8

    :cond_1e
    const/4 p1, 0x0

    :try_start_9
    iput p1, p4, Lnet/youmi/android/ct;->k:I

    goto/16 :goto_8

    :cond_1f
    const/4 p1, 0x0

    iput p1, p4, Lnet/youmi/android/ct;->k:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_8

    :cond_20
    const/4 p1, 0x0

    :try_start_a
    iput p1, p4, Lnet/youmi/android/ct;->k:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_8

    :cond_21
    if-eqz v3, :cond_19

    :try_start_b
    new-instance p2, Lnet/youmi/android/by;

    invoke-static {}, Lnet/youmi/android/bb;->a()Lnet/youmi/android/eb;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/youmi/android/by;-><init>(Lnet/youmi/android/eb;)V

    invoke-virtual {p2, p0, p1}, Lnet/youmi/android/by;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x6

    if-ne p1, p3, :cond_19

    invoke-virtual {p2}, Lnet/youmi/android/by;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p4, Lnet/youmi/android/ct;->x:Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception p1

    :try_start_c
    invoke-static {p1}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_22
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_23

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_23
    new-instance p2, Lnet/youmi/android/by;

    invoke-static {}, Lnet/youmi/android/bb;->b()Lnet/youmi/android/eb;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/youmi/android/by;-><init>(Lnet/youmi/android/eb;)V

    invoke-virtual {p2, p0, p1}, Lnet/youmi/android/by;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_24

    invoke-virtual {p2}, Lnet/youmi/android/by;->c()Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p4, Lnet/youmi/android/ct;->y:Landroid/graphics/Bitmap;

    :cond_24
    iget-object p0, p4, Lnet/youmi/android/ct;->y:Landroid/graphics/Bitmap;

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_25

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_25
    new-instance p2, Lnet/youmi/android/dc;

    invoke-static {}, Lnet/youmi/android/bb;->c()Lnet/youmi/android/eb;

    move-result-object p3

    invoke-direct {p2, p3}, Lnet/youmi/android/dc;-><init>(Lnet/youmi/android/eb;)V

    invoke-virtual {p2, p0, p1}, Lnet/youmi/android/dc;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_26

    invoke-virtual {p2}, Lnet/youmi/android/dc;->c()Lnet/youmi/android/cq;

    move-result-object p0

    iput-object p0, p4, Lnet/youmi/android/ct;->B:Lnet/youmi/android/cq;

    :cond_26
    iget-object p0, p4, Lnet/youmi/android/ct;->B:Lnet/youmi/android/cq;

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_2
    const/4 p2, 0x0

    new-instance p3, Lnet/youmi/android/bk;

    invoke-direct {p3}, Lnet/youmi/android/bk;-><init>()V

    invoke-virtual {p3, p0, p1}, Lnet/youmi/android/bk;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_28

    invoke-virtual {p3}, Lnet/youmi/android/bk;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p3}, Lnet/youmi/android/bk;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/youmi/android/az;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    new-instance p1, Lnet/youmi/android/ek;

    invoke-virtual {p3}, Lnet/youmi/android/bk;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/youmi/android/ek;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    :goto_d
    if-nez p0, :cond_27

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_27
    iput-object p0, p4, Lnet/youmi/android/ct;->A:Lnet/youmi/android/ek;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_b

    :catch_3
    move-exception p2

    goto/16 :goto_c

    :catch_4
    move-exception p2

    goto/16 :goto_2

    :cond_28
    move-object p0, p2

    goto :goto_d

    :cond_29
    move-object p1, p7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method A()J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/ct;->b:J

    return-wide v0
.end method

.method B()J
    .locals 2

    iget-wide v0, p0, Lnet/youmi/android/ct;->c:J

    return-wide v0
.end method

.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ct;->j:I

    return v0
.end method

.method a(Lnet/youmi/android/ek;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ct;->z:Lnet/youmi/android/ek;

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ct;->k:I

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->p:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->q:Ljava/lang/String;

    return-object v0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lnet/youmi/android/ct;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ct;->w:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lnet/youmi/android/ct;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/ct;->y:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->o:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->s:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->t:Ljava/lang/String;

    return-object v0
.end method

.method i()Lnet/youmi/android/ek;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->z:Lnet/youmi/android/ek;

    return-object v0
.end method

.method j()Lnet/youmi/android/ek;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->A:Lnet/youmi/android/ek;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->n:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->m:Ljava/lang/String;

    return-object v0
.end method

.method m()Lnet/youmi/android/cq;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->B:Lnet/youmi/android/cq;

    return-object v0
.end method

.method n()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->l:Ljava/lang/String;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->r:Ljava/lang/String;

    return-object v0
.end method

.method q()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->h:Z

    return v0
.end method

.method r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ct;->h:Z

    return-void
.end method

.method s()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    return v0
.end method

.method t()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->e:Z

    return v0
.end method

.method u()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->g:Z

    return v0
.end method

.method v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    return-void
.end method

.method w()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ct;->e:Z

    return-void
.end method

.method x()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->v:[Ljava/lang/String;

    return-object v0
.end method

.method y()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->f:Z

    return v0
.end method

.method z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->u:Ljava/lang/String;

    return-object v0
.end method
