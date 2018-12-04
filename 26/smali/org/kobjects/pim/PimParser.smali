.class public Lorg/kobjects/pim/PimParser;
.super Ljava/lang/Object;
.source "PimParser.java"


# instance fields
.field reader:Lorg/kobjects/io/LookAheadReader;

.field type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/Class;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/kobjects/io/LookAheadReader;

    invoke-direct {v0, p1}, Lorg/kobjects/io/LookAheadReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    .line 42
    iput-object p2, p0, Lorg/kobjects/pim/PimParser;->type:Ljava/lang/Class;

    .line 43
    return-void
.end method


# virtual methods
.method readArrayValue(I)[Ljava/lang/String;
    .locals 8
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 100
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 102
    .local v4, "values":Ljava/util/Vector;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 105
    .local v3, "stay":Z
    :cond_0
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const-string v6, ";\n\r"

    invoke-virtual {v5, v6}, Lorg/kobjects/io/LookAheadReader;->readTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v5}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 121
    :goto_0
    if-nez v3, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    :cond_1
    new-array v2, p1, [Ljava/lang/String;

    .line 127
    .local v2, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .end local p0    # "this":Lorg/kobjects/pim/PimParser;
    .local v1, "i":I
    :goto_1
    array-length v5, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 128
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    .end local v2    # "ret":[Ljava/lang/String;
    .restart local p0    # "this":Lorg/kobjects/pim/PimParser;
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v5, v7}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 113
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v5}, Lorg/kobjects/io/LookAheadReader;->read()I

    .line 115
    :cond_2
    :sswitch_2
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v5, v7}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    .line 116
    const/4 v3, 0x0

    goto :goto_0

    .line 118
    :cond_3
    iget-object v5, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v5}, Lorg/kobjects/io/LookAheadReader;->read()I

    goto :goto_0

    .line 130
    .end local p0    # "this":Lorg/kobjects/pim/PimParser;
    .restart local v1    # "i":I
    .restart local v2    # "ret":[Ljava/lang/String;
    :cond_4
    return-object v2

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

.method public readItem()Lorg/kobjects/pim/PimItem;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/kobjects/pim/PimParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "beg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 49
    const/4 v6, 0x0

    .line 90
    :goto_0
    return-object v6

    .line 51
    :cond_0
    const-string v6, "begin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "\'begin:\' expected"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/kobjects/pim/PimParser;->type:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/kobjects/pim/PimItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v3, "item":Lorg/kobjects/pim/PimItem;
    iget-object v6, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v6}, Lorg/kobjects/io/LookAheadReader;->read()I

    .line 64
    invoke-virtual {v3}, Lorg/kobjects/pim/PimItem;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/kobjects/pim/PimParser;->readStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 65
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "item types do not match!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    .end local v3    # "item":Lorg/kobjects/pim/PimItem;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "field":Lorg/kobjects/pim/PimField;
    .restart local v3    # "item":Lorg/kobjects/pim/PimItem;
    .local v4, "name":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v3, v4}, Lorg/kobjects/pim/PimItem;->getArraySize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/kobjects/pim/PimParser;->readArrayValue(I)[Ljava/lang/String;

    move-result-object v5

    .line 82
    :goto_1
    invoke-virtual {v2, v5}, Lorg/kobjects/pim/PimField;->setValue(Ljava/lang/Object;)V

    .line 83
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v2}, Lorg/kobjects/pim/PimItem;->addField(Lorg/kobjects/pim/PimField;)V

    .line 68
    .end local v2    # "field":Lorg/kobjects/pim/PimField;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/kobjects/pim/PimParser;->readName()Ljava/lang/String;

    move-result-object v4

    .line 69
    .restart local v4    # "name":Ljava/lang/String;
    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    iget-object v6, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v6}, Lorg/kobjects/io/LookAheadReader;->read()I

    .line 88
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/kobjects/pim/PimParser;->readStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v3

    .line 90
    goto/16 :goto_0

    .line 72
    :cond_3
    new-instance v2, Lorg/kobjects/pim/PimField;

    invoke-direct {v2, v4}, Lorg/kobjects/pim/PimField;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v2    # "field":Lorg/kobjects/pim/PimField;
    invoke-virtual {p0, v2}, Lorg/kobjects/pim/PimParser;->readProperties(Lorg/kobjects/pim/PimField;)V

    .line 75
    invoke-virtual {v3, v4}, Lorg/kobjects/pim/PimItem;->getType(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 80
    invoke-virtual {p0}, Lorg/kobjects/pim/PimParser;->readStringValue()Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method readName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const-string v2, ":;"

    invoke-virtual {v1, v2}, Lorg/kobjects/io/LookAheadReader;->readTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method readProperties(Lorg/kobjects/pim/PimField;)V
    .locals 4
    .param p1, "field"    # Lorg/kobjects/pim/PimField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v2}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v0

    .line 145
    .local v0, "c":I
    :goto_0
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v2}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_0
    :goto_1
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 150
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const-string v3, ":;="

    invoke-virtual {v2, v3}, Lorg/kobjects/io/LookAheadReader;->readTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v2}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v0

    .line 152
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const-string v3, ":;"

    invoke-virtual {v2, v3}, Lorg/kobjects/io/LookAheadReader;->readTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/kobjects/pim/PimField;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v2}, Lorg/kobjects/io/LookAheadReader;->read()I

    move-result v0

    goto :goto_1

    .line 157
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/kobjects/pim/PimField;->setAttribute(Ljava/lang/String;Z)V

    goto :goto_1

    .line 160
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readStringValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v1}, Lorg/kobjects/io/LookAheadReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/kobjects/io/LookAheadReader;->peek(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v1}, Lorg/kobjects/io/LookAheadReader;->read()I

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kobjects/pim/PimParser;->reader:Lorg/kobjects/io/LookAheadReader;

    invoke-virtual {v2}, Lorg/kobjects/io/LookAheadReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method
