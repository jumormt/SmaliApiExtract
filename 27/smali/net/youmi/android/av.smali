.class Lnet/youmi/android/av;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_0
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v1}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;JLnet/youmi/android/AdView;)Lnet/youmi/android/cu;
    .locals 26

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "c"

    const/16 v4, -0x3e7

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_6

    const-string p1, "rsd"

    const/16 p4, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string p1, "rt"

    const/16 p4, 0x1e

    move-object v0, v3

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/bk;->a(I)V

    const-string p1, "cc"

    const/16 p4, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string p1, "d"

    const/16 p4, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p4, "id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string p4, "t"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v8

    const/16 p4, -0x1

    move v0, v8

    move/from16 v1, p4

    if-le v0, v1, :cond_7

    const-string p4, "ot"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    const/16 p4, -0x1

    move v0, v9

    move/from16 v1, p4

    if-le v0, v1, :cond_7

    const-string p4, "e"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string p4, "src"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_7

    const-string v3, "iu"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "mu"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "cu"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "st"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "su"

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v11, "text"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_b

    const-string v3, "tt"

    const/4 v4, 0x0

    invoke-static {v11, v3, v4}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "st"

    const/4 v12, 0x0

    invoke-static {v11, v4, v12}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    move-object v11, v3

    :goto_0
    const-string v3, "dest"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v3, "js"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v3}, Lnet/youmi/android/ak;->a(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v22, v3

    const-string v3, "tu"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    const-string v3, "imgs"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-lez v19, :cond_9

    const/16 v19, 0x0

    move/from16 v25, v19

    move-object/from16 v19, v4

    move/from16 v4, v25

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    move v0, v4

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    move-object/from16 v3, v19

    :goto_2
    move-object/from16 v19, v3

    :goto_3
    :try_start_2
    const-string v3, "ic"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_3

    const/16 p1, 0x0

    move/from16 v20, p1

    :goto_4
    const-string p1, "il"

    const/4 v3, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x0

    move/from16 v21, p1

    :goto_5
    invoke-static {}, Lnet/youmi/android/ak;->a()Lnet/youmi/android/cu;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 p1, 0x1

    move/from16 v4, p1

    :goto_6
    move-object/from16 v3, p0

    move-wide/from16 v23, p2

    invoke-static/range {v3 .. v24}, Lnet/youmi/android/cu;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;J)Lnet/youmi/android/cu;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p0

    :goto_7
    return-object p0

    :cond_1
    if-nez v19, :cond_2

    :try_start_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v21

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v19, v20

    :cond_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0x1

    move/from16 v20, p1

    goto :goto_4

    :cond_4
    const/16 p1, 0x1

    move/from16 v21, p1

    goto :goto_5

    :cond_5
    const/16 p1, 0x0

    move/from16 v4, p1

    goto :goto_6

    :cond_6
    const/16 p0, -0x3e7

    move/from16 v0, p1

    move/from16 v1, p0

    if-ne v0, v1, :cond_8

    :try_start_4
    const-string p0, "Unable to connect to the server, please check your network configuration!"

    invoke-static/range {p0 .. p0}, Lnet/youmi/android/f;->b(Ljava/lang/String;)V

    :goto_8
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Lnet/youmi/android/AdView;->i()V

    :cond_7
    :goto_9
    const/16 p0, 0x0

    goto :goto_7

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Request Ad Error Code : "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lnet/youmi/android/f;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_9

    :catch_1
    move-exception v3

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_9
    move-object v3, v4

    goto/16 :goto_2

    :cond_a
    move-object/from16 v19, v4

    goto/16 :goto_3

    :cond_b
    move-object v12, v4

    move-object v11, v3

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;Lnet/youmi/android/AdView;)Lnet/youmi/android/cu;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x2

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/youmi/android/n;->a()V

    invoke-static {}, Lnet/youmi/android/eh;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x4

    invoke-static {v3}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnet/youmi/android/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lnet/youmi/android/er;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static {p0}, Lnet/youmi/android/bv;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_6

    or-int v7, v10, v8

    :goto_1
    :try_start_1
    invoke-static {p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "3gnet"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "3gwap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    or-int/2addr v5, v7

    :goto_2
    :try_start_2
    invoke-static {p0}, Lnet/youmi/android/ei;->a(Landroid/content/Context;)Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    if-eqz v7, :cond_2

    or-int/2addr v5, v11

    :cond_2
    :goto_3
    or-int/2addr v5, v6

    const/4 v6, 0x2

    :try_start_3
    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->b()Lnet/youmi/android/ca;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/y;->a()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->b()Lnet/youmi/android/ca;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/y;->b()Lnet/youmi/android/dv;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/dv;->a()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/er;->h()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->a()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/eh;->f()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 v5, 0x4

    invoke-static {v0, v1, v5, v4}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->h()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->e()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {p0}, Lnet/youmi/android/eh;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v10

    :goto_4
    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->c()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object v5

    invoke-virtual {v5}, Lnet/youmi/android/el;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Lnet/youmi/android/el;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lnet/youmi/android/eh;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lnet/youmi/android/eh;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Lnet/youmi/android/el;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v6, ""

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lnet/youmi/android/eh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v6, ""

    invoke-static {v6, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v6, 0x26

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Lnet/youmi/android/el;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    const-string v3, "req ps"

    invoke-static {v3}, Lnet/youmi/android/n;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/youmi/android/bl;

    invoke-direct {v3}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v3, p0, v2}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    const-string v2, "req net"

    invoke-static {v2}, Lnet/youmi/android/n;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1, p1}, Lnet/youmi/android/av;->a(Landroid/content/Context;Ljava/lang/String;JLnet/youmi/android/AdView;)Lnet/youmi/android/cu;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move v5, v7

    goto/16 :goto_2

    :cond_3
    move v5, v12

    goto/16 :goto_4

    :cond_4
    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->i()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v7

    goto/16 :goto_3

    :catch_3
    move-exception v3

    goto :goto_5

    :cond_5
    move v5, v7

    goto/16 :goto_2

    :cond_6
    move v7, v12

    goto/16 :goto_1
.end method

.method static a(Landroid/content/Context;)Lnet/youmi/android/dm;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v1}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/bl;

    invoke-direct {v1}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v1, p0, v0}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cy;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "c"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "n"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "v"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const-string v2, "pn"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v1, v3, :cond_1

    const-string v3, "u"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "vn"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "m"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lnet/youmi/android/dm;

    invoke-direct {v5}, Lnet/youmi/android/dm;-><init>()V

    iput-object v3, v5, Lnet/youmi/android/dm;->d:Ljava/lang/String;

    iput-object v2, v5, Lnet/youmi/android/dm;->c:Ljava/lang/String;

    iput v1, v5, Lnet/youmi/android/dm;->a:I

    iput-object v4, v5, Lnet/youmi/android/dm;->b:Ljava/lang/String;

    iput-object v0, v5, Lnet/youmi/android/dm;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v7

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method static a(Landroid/app/Activity;Lnet/youmi/android/AdView;Lnet/youmi/android/cu;)V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x31

    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/youmi/android/cu;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/eh;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lnet/youmi/android/cu;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lnet/youmi/android/ao;->a:Lnet/youmi/android/du;

    invoke-virtual {v0}, Lnet/youmi/android/du;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lnet/youmi/android/cu;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Lnet/youmi/android/cu;->l()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lnet/youmi/android/j;->a(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x4

    invoke-static {v5}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/youmi/android/w;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "00000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v7, 0x1f

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_3

    invoke-static {p0}, Lnet/youmi/android/er;->a(Landroid/content/Context;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_3
    const/16 v7, 0x1e

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    invoke-static {}, Lnet/youmi/android/er;->h()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_4
    invoke-virtual {v0}, Lnet/youmi/android/du;->b()Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x1d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_5

    const/16 v7, 0x1d

    const/16 v8, 0x1e

    const-string v9, "1"

    invoke-virtual {v1, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_5
    const/16 v7, 0x1c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_6

    const/16 v7, 0x1c

    const/16 v8, 0x1d

    const-string v9, "1"

    invoke-virtual {v1, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_6
    invoke-virtual {v0}, Lnet/youmi/android/du;->a()V

    :cond_7
    iget v7, v0, Lnet/youmi/android/du;->a:I

    iget v0, v0, Lnet/youmi/android/du;->b:I

    const/16 v8, 0x1d

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_8

    const/4 v8, 0x4

    invoke-static {v7, v8, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_8
    const/16 v8, 0x1c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_9

    sub-int/2addr v0, v7

    const/4 v7, 0x2

    invoke-static {v0, v7, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_9
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_a

    const/4 v0, 0x4

    invoke-static {v2, v3, v0, v6}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    :cond_a
    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_b

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->b()Lnet/youmi/android/ca;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ca;->h()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_b
    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_c

    invoke-static {}, Lnet/youmi/android/bq;->e()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_c
    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_d

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->b()Lnet/youmi/android/ca;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ca;->g()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_d
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_e

    invoke-static {}, Lnet/youmi/android/bq;->c()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v6}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    :cond_e
    const/4 v0, 0x0

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_f

    invoke-static {p0}, Lnet/youmi/android/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    move v0, v11

    :cond_f
    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_10

    if-eqz v0, :cond_28

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    invoke-virtual {v2}, Lnet/youmi/android/el;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_10
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_11

    if-eqz v0, :cond_29

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    invoke-virtual {v2}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_11
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_12

    if-eqz v0, :cond_2a

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    invoke-static {p0}, Lnet/youmi/android/eh;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_12
    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_13

    if-eqz v0, :cond_2b

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    invoke-static {}, Lnet/youmi/android/eh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_13
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_14

    if-eqz v0, :cond_2c

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_5
    invoke-static {}, Lnet/youmi/android/eh;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_14
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_15

    if-eqz v0, :cond_2d

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_6
    invoke-virtual {v2}, Lnet/youmi/android/el;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_15
    invoke-static {p0}, Lnet/youmi/android/ei;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    const/16 v7, 0xf

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_16

    if-eqz v0, :cond_2e

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_7
    if-eqz v3, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_16
    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_17

    if-eqz v0, :cond_2f

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_8
    if-eqz v3, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_17
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_18

    if-eqz v0, :cond_30

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_9
    invoke-static {}, Lnet/youmi/android/eh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_18
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_19

    if-eqz v0, :cond_31

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_19
    :goto_a
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_1a

    if-eqz v0, :cond_32

    const/16 v3, 0x26

    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_b
    invoke-virtual {v2}, Lnet/youmi/android/el;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1a
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_1b

    if-eqz v0, :cond_33

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_c
    const-string v2, "21"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1b
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_1c

    if-eqz v0, :cond_34

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_d
    const-string v2, "22"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1c
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_1d

    if-eqz v0, :cond_35

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_e
    const-string v2, "23"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1d
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_1e

    if-eqz v0, :cond_36

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_f
    const-string v2, "24"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1e
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_1f

    if-eqz v0, :cond_37

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_10
    const-string v2, "25"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_1f
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_20

    if-eqz v0, :cond_38

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_11
    const-string v2, "26"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_20
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_21

    if-eqz v0, :cond_39

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_12
    const-string v2, "27"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_21
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_22

    if-eqz v0, :cond_3a

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_13
    const-string v2, "28"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_22
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_23

    if-eqz v0, :cond_3b

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_14
    const-string v2, "29"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_23
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_24

    if-eqz v0, :cond_3c

    const/16 v2, 0x26

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_15
    const-string v2, "30"

    invoke-static {v2, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_26

    if-eqz v0, :cond_25

    const/16 v0, 0x26

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_25
    const-string v0, "31"

    invoke-static {v0, v6}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v0}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_16
    const/16 v0, 0x2c

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lnet/youmi/android/j;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/bl;

    invoke-direct {v1}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v1, p0, v0}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_27

    invoke-virtual {v1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cy;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "c"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_27
    :goto_17
    invoke-virtual {p2}, Lnet/youmi/android/cu;->r()V

    goto/16 :goto_0

    :cond_28
    move v0, v11

    goto/16 :goto_1

    :cond_29
    move v0, v11

    goto/16 :goto_2

    :cond_2a
    move v0, v11

    goto/16 :goto_3

    :cond_2b
    move v0, v11

    goto/16 :goto_4

    :cond_2c
    move v0, v11

    goto/16 :goto_5

    :cond_2d
    move v0, v11

    goto/16 :goto_6

    :cond_2e
    move v0, v11

    goto/16 :goto_7

    :cond_2f
    move v0, v11

    goto/16 :goto_8

    :cond_30
    move v0, v11

    goto/16 :goto_9

    :cond_31
    move v0, v11

    goto/16 :goto_a

    :cond_32
    move v0, v11

    goto/16 :goto_b

    :cond_33
    move v0, v11

    goto/16 :goto_c

    :cond_34
    move v0, v11

    goto/16 :goto_d

    :cond_35
    move v0, v11

    goto/16 :goto_e

    :cond_36
    move v0, v11

    goto/16 :goto_f

    :cond_37
    move v0, v11

    goto/16 :goto_10

    :cond_38
    move v0, v11

    goto/16 :goto_11

    :cond_39
    move v0, v11

    goto/16 :goto_12

    :cond_3a
    move v0, v11

    goto/16 :goto_13

    :cond_3b
    move v0, v11

    goto/16 :goto_14

    :cond_3c
    move v0, v11

    goto/16 :goto_15

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16
.end method

.method static a(Landroid/app/Activity;Lnet/youmi/android/cu;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->B()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Lnet/youmi/android/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {}, Lnet/youmi/android/bq;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5, v3}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v3}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {v3}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/youmi/android/cu;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v0}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/16 v0, 0x2c

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/youmi/android/cu;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/bl;

    invoke-direct {v1}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v1, p0, v0}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {p1}, Lnet/youmi/android/cu;->w()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/eh;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 p1, 0x1

    invoke-static {p2, p1, v2}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 p1, 0x4

    invoke-static {p3, p1, v2}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 p1, 0x4

    invoke-static {p4, p1, v2}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 p1, 0x4

    invoke-static {p5, p1, v2}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object p1

    invoke-virtual {p1}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p6, :cond_1

    move-object p1, p6

    :goto_1
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p7, :cond_2

    move-object p1, p7

    :goto_2
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p8, :cond_3

    move-object p1, p8

    :goto_3
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p9, :cond_4

    move-object p1, p9

    :goto_4
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p10, :cond_5

    move-object p1, p10

    :goto_5
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p11, :cond_6

    invoke-static {p11}, Lnet/youmi/android/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p11, :cond_7

    invoke-static/range {p12 .. p12}, Lnet/youmi/android/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p13, :cond_8

    move-object/from16 p1, p13

    :goto_8
    invoke-static {p1, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 p1, 0x26

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2, p1}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    :try_start_2
    invoke-static {}, Lnet/youmi/android/w;->f()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance p3, Lorg/apache/http/message/BasicNameValuePair;

    const-string p4, "s"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lnet/youmi/android/aq;

    invoke-direct {p3, p0, p1}, Lnet/youmi/android/aq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lnet/youmi/android/aq;->a(Ljava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    :try_start_3
    const-string p1, ""

    goto/16 :goto_1

    :cond_2
    const-string p1, ""

    goto/16 :goto_2

    :cond_3
    const-string p1, ""

    goto/16 :goto_3

    :cond_4
    const-string p1, ""

    goto/16 :goto_4

    :cond_5
    const-string p1, ""

    goto/16 :goto_5

    :cond_6
    const-string p1, ""

    goto/16 :goto_6

    :cond_7
    const-string p1, ""

    goto/16 :goto_7

    :cond_8
    const-string p1, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_9
.end method

.method static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJJ)V
    .locals 4

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Lnet/youmi/android/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x4

    invoke-static {p5, p6, v2, v1}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    const/4 v2, 0x4

    invoke-static {p7, p8, v2, v1}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    const/4 v2, 0x4

    invoke-static {p9, p10, v2, v1}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v1}, Lnet/youmi/android/al;->a(JILjava/io/ByteArrayOutputStream;)V

    invoke-static {}, Lnet/youmi/android/bq;->c()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lnet/youmi/android/al;->a(IILjava/io/ByteArrayOutputStream;)V

    invoke-static {v1}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v2}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/16 v1, 0x2c

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/youmi/android/bl;

    invoke-direct {v1}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v1, p0, v0}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/er;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lnet/youmi/android/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/youmi/android/bl;

    invoke-direct {v1}, Lnet/youmi/android/bl;-><init>()V

    invoke-virtual {v1, p0, v0}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-virtual {v1}, Lnet/youmi/android/bl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cy;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "c"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "d"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v8

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_4

    :cond_2
    new-instance v0, Lnet/youmi/android/bl;

    invoke-direct {v0}, Lnet/youmi/android/bl;-><init>()V

    invoke-static {p0, v1}, Lnet/youmi/android/av;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p0, v1}, Lnet/youmi/android/bl;->a(Landroid/content/Context;Ljava/lang/String;)I

    invoke-virtual {v0}, Lnet/youmi/android/bl;->g()I

    move-result v0

    if-ne v0, v9, :cond_3

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/cy;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5

    const-string v5, "v"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "s"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lnet/youmi/android/cy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {v5, v3}, Lnet/youmi/android/de;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_7
    move v0, v8

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lnet/youmi/android/cq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/youmi/android/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/er;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0}, Lnet/youmi/android/eh;->a(Landroid/content/Context;)Lnet/youmi/android/el;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/el;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/youmi/android/al;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v2}, Lnet/youmi/android/av;->a(Ljava/io/ByteArrayOutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/bq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/er;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v1}, Lnet/youmi/android/cq;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
