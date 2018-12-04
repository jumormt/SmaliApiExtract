.class public Lorg/kobjects/pim/PimField;
.super Ljava/lang/Object;
.source "PimField.java"


# instance fields
.field name:Ljava/lang/String;

.field properties:Ljava/util/Hashtable;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/kobjects/pim/PimField;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/kobjects/pim/PimField;)V
    .locals 6
    .param p1, "orig"    # Lorg/kobjects/pim/PimField;

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/kobjects/pim/PimField;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    instance-of v3, v3, [Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .line 41
    .local v2, "val":[Ljava/lang/String;
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iput-object v2, p0, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    .line 47
    .end local v2    # "val":[Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    .line 48
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    .line 49
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 50
    .local v0, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    iget-object v4, p1, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    iput-object v3, p0, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/kobjects/pim/PimField;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lorg/kobjects/pim/PimField;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lorg/kobjects/pim/PimField;
    :cond_0
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/kobjects/pim/PimField;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const-string v4, "type"

    .line 108
    invoke-virtual {p0, p1}, Lorg/kobjects/pim/PimField;->getAttribute(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v2, "type"

    invoke-virtual {p0, v4}, Lorg/kobjects/pim/PimField;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "s":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 113
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 114
    :cond_1
    move-object v1, p1

    .line 126
    :cond_2
    :goto_1
    const-string v2, "type"

    invoke-virtual {p0, v4, v1}, Lorg/kobjects/pim/PimField;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "i":I
    if-lez v0, :cond_5

    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    :cond_5
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 68
    if-nez p2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    .line 73
    :cond_1
    if-nez p2, :cond_2

    .line 74
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/kobjects/pim/PimField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/kobjects/pim/PimField;->properties:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/kobjects/pim/PimField;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
