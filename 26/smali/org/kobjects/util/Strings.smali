.class public Lorg/kobjects/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beautify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 82
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 87
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int v3, v2, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fill(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "c"    # C

    .prologue
    .line 58
    if-gez p1, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 59
    .local v1, "left":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_1

    move-object v2, p0

    .line 75
    :goto_1
    return-object v2

    .line 58
    .end local v1    # "left":Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 64
    .restart local v1    # "left":Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p1, v2

    .line 66
    :goto_2
    if-lez p1, :cond_2

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 71
    :cond_2
    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 75
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static lTrim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 112
    :cond_2
    if-nez v0, :cond_3

    move-object v2, p0

    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static rTrim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v3

    .line 118
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 121
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    move-object v1, p0

    :goto_1
    return-object v1

    :cond_3
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "by"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 17
    .local v1, "i0":I
    if-ne v1, v4, :cond_0

    move-object v3, p0

    .line 30
    :goto_0
    return-object v3

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 23
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 24
    .local v2, "i1":I
    if-ne v2, v4, :cond_1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    move v1, v2

    .line 27
    goto :goto_1
.end method

.method public static toAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 38
    .local v1, "c":C
    if-gt v1, v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 41
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 49
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 42
    :sswitch_0
    const-string v3, "Ae"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 43
    :sswitch_1
    const-string v3, "ae"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 44
    :sswitch_2
    const-string v3, "Oe"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :sswitch_3
    const-string v3, "oe"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 46
    :sswitch_4
    const-string v3, "Ue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 47
    :sswitch_5
    const-string v3, "ue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 48
    :sswitch_6
    const-string v3, "ss"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 54
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xd6 -> :sswitch_2
        0xdc -> :sswitch_4
        0xdf -> :sswitch_6
        0xe4 -> :sswitch_1
        0xf6 -> :sswitch_3
        0xfc -> :sswitch_5
    .end sparse-switch
.end method
