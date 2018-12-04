.class public Lorg/ksoap2/serialization/SoapObject;
.super Ljava/lang/Object;
.source "SoapObject.java"

# interfaces
.implements Lorg/ksoap2/serialization/KvmSerializable;


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected properties:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    .line 57
    iput-object p1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 323
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    .line 324
    if-nez p2, :cond_0

    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    .line 325
    iput-object p2, v0, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    .line 326
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    return-object v1

    .line 324
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 338
    return-object p0
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 277
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 278
    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 279
    if-nez p2, :cond_0

    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 280
    iput-object p2, v0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 281
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    return-object v1

    .line 279
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 309
    return-object p0
.end method

.method public addProperty(Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 295
    invoke-virtual {p1, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 297
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 15
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v14, 0x0

    .line 63
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/ksoap2/serialization/SoapObject;

    move v13, v0

    if-nez v13, :cond_0

    move v13, v14

    .line 102
    :goto_0
    return v13

    .line 66
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    move-object v7, v0

    .line 68
    .local v7, "otherSoapObject":Lorg/ksoap2/serialization/SoapObject;
    iget-object v13, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    .line 69
    .local v4, "numProperties":I
    iget-object v13, v7, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-eq v4, v13, :cond_1

    move v13, v14

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v13, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v3

    .line 72
    .local v3, "numAttributes":I
    iget-object v13, v7, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-eq v3, v13, :cond_2

    move v13, v14

    .line 73
    goto :goto_0

    .line 77
    :cond_2
    const/4 v8, 0x0

    .local v8, "propIndex":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 79
    :try_start_0
    iget-object v13, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v13, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/ksoap2/serialization/PropertyInfo;

    .line 80
    .local v11, "thisProp":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v11}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 81
    .local v12, "thisPropValue":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 82
    .local v6, "otherPropValue":Ljava/lang/Object;
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move v13, v14

    .line 84
    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 87
    .end local v6    # "otherPropValue":Ljava/lang/Object;
    .end local v11    # "thisProp":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v12    # "thisPropValue":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    .local v1, "attribIndex":I
    :goto_2
    if-ge v1, v3, :cond_6

    .line 89
    iget-object v13, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v13, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ksoap2/serialization/AttributeInfo;

    .line 90
    .local v9, "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v9}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 91
    .local v10, "thisAttribValue":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/ksoap2/serialization/SoapObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 92
    .local v5, "otherAttribValue":Ljava/lang/Object;
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_5

    move v13, v14

    .line 94
    goto :goto_0

    .line 87
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    .end local v1    # "attribIndex":I
    .end local v5    # "otherAttribValue":Ljava/lang/Object;
    .end local v9    # "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v10    # "thisAttribValue":Ljava/lang/Object;
    :catch_0
    move-exception v13

    move-object v2, v13

    .local v2, "e":Ljava/lang/Exception;
    move v13, v14

    .line 100
    goto :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "attribIndex":I
    :cond_6
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    check-cast p0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {p0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->getAttribute(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    .prologue
    .line 157
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    .line 158
    .local v0, "p":Lorg/ksoap2/serialization/AttributeInfo;
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    .line 159
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    .line 160
    iget v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    iput v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    .line 161
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    .line 162
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 163
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    check-cast p0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 211
    invoke-virtual {p0, p1, p3}, Lorg/ksoap2/serialization/SoapObject;->getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V

    .line 212
    return-void
.end method

.method public getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 224
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .line 225
    .local v0, "p":Lorg/ksoap2/serialization/PropertyInfo;
    iget-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 226
    iget-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 227
    iget v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    iput v1, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    .line 228
    iget-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object v1, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 229
    iget-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v1, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 230
    return-void
.end method

.method public newInstance()Lorg/ksoap2/serialization/SoapObject;
    .locals 7

    .prologue
    .line 240
    new-instance v2, Lorg/ksoap2/serialization/SoapObject;

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v6, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v2, "o":Lorg/ksoap2/serialization/SoapObject;
    const/4 v3, 0x0

    .local v3, "propIndex":I
    :goto_0
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 243
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ksoap2/serialization/PropertyInfo;

    .line 244
    .local v4, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v2, v4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v4    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    const/4 v0, 0x0

    .local v0, "attribIndex":I
    :goto_1
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 248
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/AttributeInfo;

    .line 249
    .local v1, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v2, v1}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v1    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_1
    return-object v2
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    check-cast p0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, ""

    .line 343
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {v2}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
