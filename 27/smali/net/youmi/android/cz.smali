.class Lnet/youmi/android/cz;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/cz;->a:I

    sput v0, Lnet/youmi/android/cz;->b:I

    sput v0, Lnet/youmi/android/cz;->c:I

    sput v0, Lnet/youmi/android/cz;->d:I

    sput v0, Lnet/youmi/android/cz;->e:I

    sput v0, Lnet/youmi/android/cz;->f:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget v0, Lnet/youmi/android/cz;->a:I

    if-ne v0, v7, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_15

    move v1, v6

    move v2, v6

    :goto_0
    :try_start_1
    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v3, :cond_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    sput v6, Lnet/youmi/android/cz;->a:I

    const/4 v0, 0x5

    :goto_2
    return v0

    :cond_0
    :try_start_2
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "net.youmi.android.AdActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sput v5, Lnet/youmi/android/cz;->a:I

    :cond_3
    sget v0, Lnet/youmi/android/cz;->b:I

    if-ne v0, v7, :cond_7

    invoke-static {p0}, Lnet/youmi/android/dq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sput v6, Lnet/youmi/android/cz;->b:I

    move v0, v5

    goto :goto_2

    :cond_4
    sget v0, Lnet/youmi/android/cz;->a:I

    if-nez v0, :cond_3

    const/4 v0, 0x5

    goto :goto_2

    :cond_5
    sput v5, Lnet/youmi/android/cz;->b:I

    :cond_6
    sget v0, Lnet/youmi/android/cz;->c:I

    if-ne v0, v7, :cond_a

    invoke-static {p0}, Lnet/youmi/android/dq;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    sput v6, Lnet/youmi/android/cz;->c:I

    move v0, v8

    goto :goto_2

    :cond_7
    sget v0, Lnet/youmi/android/cz;->b:I

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_2

    :cond_8
    sput v5, Lnet/youmi/android/cz;->c:I

    :cond_9
    sget v0, Lnet/youmi/android/cz;->d:I

    if-ne v0, v7, :cond_d

    invoke-static {p0}, Lnet/youmi/android/dq;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    sput v6, Lnet/youmi/android/cz;->d:I

    move v0, v9

    goto :goto_2

    :cond_a
    sget v0, Lnet/youmi/android/cz;->c:I

    if-nez v0, :cond_9

    move v0, v8

    goto :goto_2

    :cond_b
    sput v5, Lnet/youmi/android/cz;->d:I

    :cond_c
    sget v0, Lnet/youmi/android/cz;->e:I

    if-ne v0, v7, :cond_11

    invoke-static {p0}, Lnet/youmi/android/dq;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    sput v6, Lnet/youmi/android/cz;->e:I

    const/4 v0, 0x4

    goto :goto_2

    :cond_d
    sget v0, Lnet/youmi/android/cz;->d:I

    if-nez v0, :cond_c

    move v0, v9

    goto :goto_2

    :cond_e
    sput v5, Lnet/youmi/android/cz;->e:I

    :cond_f
    sget v0, Lnet/youmi/android/cz;->f:I

    if-ne v0, v7, :cond_14

    invoke-static {p0}, Lnet/youmi/android/dq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    sput v5, Lnet/youmi/android/cz;->f:I

    :cond_10
    :goto_3
    move v0, v6

    goto :goto_2

    :cond_11
    sget v0, Lnet/youmi/android/cz;->e:I

    if-nez v0, :cond_f

    const/4 v0, 0x4

    goto :goto_2

    :cond_12
    invoke-static {p0}, Lnet/youmi/android/dq;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    sput v6, Lnet/youmi/android/cz;->f:I

    const/4 v0, 0x6

    goto/16 :goto_2

    :cond_13
    sput v5, Lnet/youmi/android/cz;->f:I

    goto :goto_3

    :cond_14
    sget v0, Lnet/youmi/android/cz;->f:I

    if-nez v0, :cond_10

    const/4 v0, 0x6

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v0, v6

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_1

    :cond_15
    move v0, v6

    goto/16 :goto_1
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;
    .locals 26

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "<html><head><title>\u6709\u7c73\u5e7f\u544a\u914d\u7f6e</title></head><body><h2>\u6709\u7c73\u5e7f\u544aAndroid Banner Ad SDk\u914d\u7f6e\u7b80\u6613\u6559\u7a0b</h2>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<h3>1.\u8bf7\u52a1\u5fc5\u4e3a\u60a8\u7684\u5e94\u7528\u7a0b\u5e8f\u914d\u7f6e\u6b63\u786e\u7684AppId\u548c\u5e94\u7528\u5bc6\u7801</h3>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<label style=\'color:green\'>//\u8bf7\u4f7f\u7528\u9759\u6001\u7684\u65b9\u6cd5\u8c03\u7528AdManager.init(),\u8bbe\u7f6eAppId\u3001\u5bc6\u7801\u3001\u5e7f\u544a\u8bf7\u6c42\u95f4\u9694\u548c\u6d4b\u8bd5\u6a21\u5f0f\u7b49\u53c2\u6570(\u5728\u4efb\u610fAdView\u521d\u59cb\u5316\u524d\u8c03\u7528\u4e00\u6b21\u5373\u53ef)</label><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "static{<br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<label style=\'color:green\'>//\u7b2c\u4e00\u4e2a\u53c2\u6570\u4e3a\u60a8\u7684\u5e94\u7528AppId</label><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<label style=\'color:green\'>//\u7b2c\u4e8c\u4e2a\u53c2\u6570\u4e3a\u60a8\u7684\u5e94\u7528\u5bc6\u7801</label><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<label style=\'color:green\'>//\u7b2c\u4e09\u4e2a\u53c2\u6570\u662f\u8bf7\u6c42\u5e7f\u544a\u7684\u95f4\u9694\uff0c\u6709\u6548\u7684\u8bbe\u7f6e\u503c\u4e3a30\u81f3200\uff0c\u5355\u4f4d\u4e3a\u79d2</label><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<label style=\'color:green\'>//\u7b2c\u56db\u4e2a\u53c2\u6570\u662f\u8bbe\u7f6e\u6d4b\u8bd5\u6a21\u5f0f\uff0c\u8bbe\u7f6e\u4e3atrue\u65f6\uff0c\u53ef\u4ee5\u83b7\u53d6\u6d4b\u8bd5\u5e7f\u544a\uff0c\u6b63\u5f0f\u53d1\u5e03\u8bf7\u8bbe\u7f6e\u6b64\u53c2\u6570\u4e3afalse</label><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "net.youmi.android.AdManager.init(String appid, String appsec, int intervalSecond,boolean isTestMode);<br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}<br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<h3>2.\u8bf7\u52a1\u5fc5\u4e3a\u60a8\u7684\u5e94\u7528\u7a0b\u5e8f\u914d\u7f6e\u4ee5\u4e0b\u6743\u9650:</h3>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE_PERMISSION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<h3>3.\u8bf7\u52a1\u5fc5\u5728Androidmanifest.xml\u4e2d\u6dfb\u52a0\u4ee5\u4e0bActivity:</h3>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:blue\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&#60;activity android:name=\"net.youmi.android.AdActivity\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android:configChanges=\"keyboard|keyboardHidden|orientation\"/&#62;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</body></html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v3, 0xb

    const/4 v4, 0x5

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_0

    const/16 p3, -0x1

    move/from16 v9, p3

    :goto_0
    const/4 v4, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "sample"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/youmi/android/bn;->a()I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FABC"

    const-string v7, "FABC"

    const/4 v8, 0x0

    const-string v10, "00000000"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "#"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static/range {v3 .. v24}, Lnet/youmi/android/cu;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;J)Lnet/youmi/android/cu;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lnet/youmi/android/cu;->v()V

    invoke-virtual/range {p0 .. p0}, Lnet/youmi/android/cu;->w()V

    new-instance p1, Lnet/youmi/android/em;

    const-string p2, "#"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/em;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lnet/youmi/android/cu;->a(Lnet/youmi/android/em;)V

    return-object p0

    :cond_0
    move v9, v3

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u914d\u7f6e\u76f8\u5e94\u6743\u9650"

    const-string v1, "\u7f3a\u5c11INTERNET\u6743\u9650"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u914d\u7f6e\u76f8\u5e94\u6743\u9650"

    const-string v1, "\u7f3a\u5c11READ_PHONE_STATE\u6743\u9650"

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u914d\u7f6e\u76f8\u5e94\u6743\u9650"

    const-string v1, "\u7f3a\u5c11ACCESS_COARSE_LOCATION\u6743\u9650"

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u914d\u7f6e\u76f8\u5e94\u6743\u9650"

    const-string v1, "\u7f3a\u5c11ACCESS_NETWORK_STATE\u6743\u9650"

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u914d\u7f6e\u76f8\u5e94\u6743\u9650"

    const-string v1, "\u7f3a\u5c11WRITE_EXTERNAL_STORAGE_PERMISSION\u6743\u9650"

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method

.method static g(Landroid/app/Activity;)Lnet/youmi/android/cu;
    .locals 3

    const-string v0, "\u8bf7\u4e3a\u60a8\u7684\u5e94\u7528\u7a0b\u5e8f\u6dfb\u52a0AdActivity,\u5426\u5219\u65e0\u6cd5\u663e\u793a\u5e7f\u544a\u8be6\u60c5"

    const-string v1, "\u7f3a\u5c11net.youmi.android.AdActivity"

    const/4 v2, 0x5

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/cz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lnet/youmi/android/cu;

    move-result-object v0

    return-object v0
.end method
