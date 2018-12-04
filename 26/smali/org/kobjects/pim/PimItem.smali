.class public abstract Lorg/kobjects/pim/PimItem;
.super Ljava/lang/Object;
.source "PimItem.java"


# static fields
.field public static final TYPE_STRING:I = 0x0

.field public static final TYPE_STRING_ARRAY:I = 0x1


# instance fields
.field fields:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/kobjects/pim/PimItem;)V
    .locals 3
    .param p1, "orig"    # Lorg/kobjects/pim/PimItem;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    .line 46
    invoke-virtual {p1}, Lorg/kobjects/pim/PimItem;->fields()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v2, Lorg/kobjects/pim/PimField;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kobjects/pim/PimField;

    invoke-direct {v2, v1}, Lorg/kobjects/pim/PimField;-><init>(Lorg/kobjects/pim/PimField;)V

    invoke-virtual {p0, v2}, Lorg/kobjects/pim/PimItem;->addField(Lorg/kobjects/pim/PimField;)V

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public addField(Lorg/kobjects/pim/PimField;)V
    .locals 3
    .param p1, "field"    # Lorg/kobjects/pim/PimField;

    .prologue
    .line 56
    iget-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    iget-object v2, p1, Lorg/kobjects/pim/PimField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 58
    .local v0, "v":Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "v":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 60
    .restart local v0    # "v":Ljava/util/Vector;
    iget-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    iget-object v2, p1, Lorg/kobjects/pim/PimField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public fieldNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public fields()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 67
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 68
    .local v3, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Lorg/kobjects/pim/PimItem;->fieldNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/kobjects/pim/PimItem;->fields(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "f":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v1    # "f":Ljava/util/Enumeration;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    return-object v4
.end method

.method public fields(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 79
    .local v0, "v":Ljava/util/Vector;
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    .end local v0    # "v":Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 80
    .restart local v0    # "v":Ljava/util/Vector;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public abstract getArraySize(Ljava/lang/String;)I
.end method

.method public getField(Ljava/lang/String;I)Lorg/kobjects/pim/PimField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/kobjects/pim/PimItem;
    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/kobjects/pim/PimField;

    return-object p0
.end method

.method public getFieldCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 91
    .local v0, "v":Ljava/util/Vector;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/kobjects/pim/PimItem;->getArraySize(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public removeField(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/kobjects/pim/PimItem;
    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kobjects/pim/PimItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/kobjects/pim/PimItem;->fields:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
