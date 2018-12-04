.class Lnet/youmi/android/z;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "sms:"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "sms:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    const-string v1, "sms:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, ""

    array-length v3, v0

    if-le v3, v4, :cond_1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_0
    invoke-static {p0, v1, v0}, Lnet/youmi/android/be;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v1, "mailto:"

    const-string v1, ","

    if-nez p1, :cond_0

    move v1, v9

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "mailto:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    const-string v2, "mailto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lnet/youmi/android/b;

    invoke-direct {v7, v1}, Lnet/youmi/android/b;-><init>([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const/4 v2, 0x4

    const/4 v6, 0x0

    invoke-virtual {v7, v2, v6}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/4 v2, 0x5

    const-string v8, "0"

    invoke-virtual {v7, v2, v8}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    if-nez v1, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    const-string v2, ","

    invoke-static {v1, v2}, Lnet/youmi/android/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-static {v3, v1}, Lnet/youmi/android/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, ","

    invoke-static {v4, v1}, Lnet/youmi/android/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_2

    invoke-static {v5}, Lnet/youmi/android/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :cond_2
    if-eqz v6, :cond_3

    invoke-static {v6}, Lnet/youmi/android/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :cond_3
    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lnet/youmi/android/be;->a(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v10

    goto/16 :goto_0

    :cond_4
    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lnet/youmi/android/be;->b(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_5
    move v1, v9

    goto/16 :goto_0
.end method

.method static c(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const-string v0, "loc:"

    if-nez p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "loc:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    const-string v1, "loc:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-static {v0, v1}, Lnet/youmi/android/j;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnet/youmi/android/b;

    invoke-direct {v3, v0}, Lnet/youmi/android/b;-><init>([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "A"

    invoke-virtual {v3, v2, v4}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lnet/youmi/android/b;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    invoke-static {p0, v1, v0, v2, v3}, Lnet/youmi/android/be;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
