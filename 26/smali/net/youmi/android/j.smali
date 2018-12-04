.class Lnet/youmi/android/j;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)C
    .locals 2

    const/16 v1, 0x30

    const-string v0, "0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "0001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    goto :goto_0

    :cond_1
    const-string v0, "0010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    goto :goto_0

    :cond_2
    const-string v0, "0011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x33

    goto :goto_0

    :cond_3
    const-string v0, "0100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x34

    goto :goto_0

    :cond_4
    const-string v0, "0101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x35

    goto :goto_0

    :cond_5
    const-string v0, "0110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x36

    goto :goto_0

    :cond_6
    const-string v0, "0111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x37

    goto :goto_0

    :cond_7
    const-string v0, "1000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x38

    goto :goto_0

    :cond_8
    const-string v0, "1001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x39

    goto :goto_0

    :cond_9
    const-string v0, "1010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x61

    goto :goto_0

    :cond_a
    const-string v0, "1011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x62

    goto :goto_0

    :cond_b
    const-string v0, "1100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_c
    const-string v0, "1101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x64

    goto/16 :goto_0

    :cond_d
    const-string v0, "1110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x65

    goto/16 :goto_0

    :cond_e
    const-string v0, "1111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x66

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method static a(C)Ljava/lang/String;
    .locals 2

    const-string v1, "0000"

    sparse-switch p0, :sswitch_data_0

    const-string v0, "0000"

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "0000"

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "0001"

    goto :goto_0

    :sswitch_2
    const-string v0, "0010"

    goto :goto_0

    :sswitch_3
    const-string v0, "0011"

    goto :goto_0

    :sswitch_4
    const-string v0, "0100"

    goto :goto_0

    :sswitch_5
    const-string v0, "0101"

    goto :goto_0

    :sswitch_6
    const-string v0, "0110"

    goto :goto_0

    :sswitch_7
    const-string v0, "0111"

    goto :goto_0

    :sswitch_8
    const-string v0, "1000"

    goto :goto_0

    :sswitch_9
    const-string v0, "1001"

    goto :goto_0

    :sswitch_a
    const-string v0, "1010"

    goto :goto_0

    :sswitch_b
    const-string v0, "1011"

    goto :goto_0

    :sswitch_c
    const-string v0, "1100"

    goto :goto_0

    :sswitch_d
    const-string v0, "1101"

    goto :goto_0

    :sswitch_e
    const-string v0, "1110"

    goto :goto_0

    :sswitch_f
    const-string v0, "1111"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method

.method static a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const-string v6, ""

    if-nez p0, :cond_0

    const-string v0, ""

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    :goto_1
    if-lt v3, v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int v1, v0, v1

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_1

    const/4 v3, 0x0

    const/16 v4, 0x30

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_3
    if-ge v1, v0, :cond_1

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    if-lt v4, v5, :cond_5

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/youmi/android/j;->a(Ljava/lang/String;)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    move-object v0, v6

    goto :goto_0
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 8

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    sub-int/2addr v2, v6

    :goto_0
    if-gez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_1
    if-gez v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnet/youmi/android/j;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int v1, p1, v1

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_3
    if-ge v1, p1, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
