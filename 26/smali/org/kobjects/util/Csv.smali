.class public Lorg/kobjects/util/Csv;
.super Ljava/lang/Object;
.source "Csv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x5e

    const/16 v13, 0x2c

    const/16 v12, 0x20

    const/16 v11, 0x22

    .line 75
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 77
    .local v9, "tmp":Ljava/util/Vector;
    const/4 v5, 0x0

    .line 78
    .local v5, "p0":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 85
    .local v4, "len":I
    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v12, :cond_0

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    :cond_0
    if-lt v5, v4, :cond_2

    .line 134
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    .line 135
    .local v8, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .end local p0    # "line":Ljava/lang/String;
    .local v3, "i":I
    :goto_2
    array-length v10, v8

    if-ge v3, v10, :cond_b

    .line 136
    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v8, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90
    .end local v3    # "i":I
    .end local v8    # "result":[Ljava/lang/String;
    .restart local p0    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_9

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "p0":I
    .local v6, "p0":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 96
    .local v1, "c":C
    if-ne v1, v14, :cond_4

    if-ge v6, v4, :cond_4

    .line 97
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "p0":I
    .restart local v5    # "p0":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 98
    .local v2, "c2":C
    if-ne v2, v14, :cond_3

    move v10, v2

    :goto_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/16 v10, 0x40

    sub-int v10, v2, v10

    int-to-char v10, v10

    goto :goto_4

    .line 101
    .end local v2    # "c2":C
    .end local v5    # "p0":I
    .restart local v6    # "p0":I
    :cond_4
    if-ne v1, v11, :cond_c

    .line 102
    if-eq v6, v4, :cond_5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v11, :cond_6

    .line 112
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v6

    .line 114
    .end local v6    # "p0":I
    .restart local v5    # "p0":I
    :goto_5
    if-ge v5, v4, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v12, :cond_7

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 105
    .end local v5    # "p0":I
    .restart local v6    # "p0":I
    :cond_6
    add-int/lit8 v5, v6, 0x1

    .line 108
    .end local v6    # "p0":I
    .restart local v5    # "p0":I
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 116
    :cond_7
    if-ge v5, v4, :cond_1

    .line 118
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v13, :cond_8

    .line 119
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Comma expected at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " line: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 121
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 122
    goto/16 :goto_0

    .line 124
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "c":C
    :cond_9
    invoke-virtual {p0, v13, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 125
    .local v7, "p1":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_a

    .line 126
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 129
    :cond_a
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v5, v7, 0x1

    .line 131
    goto/16 :goto_0

    .line 138
    .end local v7    # "p1":I
    .end local p0    # "line":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v8    # "result":[Ljava/lang/String;
    :cond_b
    return-object v8

    .end local v3    # "i":I
    .end local v5    # "p0":I
    .end local v8    # "result":[Ljava/lang/String;
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v6    # "p0":I
    .restart local p0    # "line":Ljava/lang/String;
    :cond_c
    move v5, v6

    .end local v6    # "p0":I
    .restart local v5    # "p0":I
    goto :goto_6
.end method

.method public static encode(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "quote"    # C

    .prologue
    const/16 v4, 0x5e

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 36
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 37
    .local v1, "c":C
    if-eq v1, p1, :cond_0

    if-ne v1, v4, :cond_1

    .line 38
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/16 v3, 0x20

    if-ge v1, v3, :cond_2

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v3, v1, 0x40

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 47
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static encode([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/16 v4, 0x22

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 56
    if-eqz v1, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    aget-object v2, p0, v1

    .line 59
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/kobjects/util/Csv;->encode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 68
    .end local v2    # "v":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
