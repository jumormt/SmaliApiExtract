.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;
.source "XmlPullParserFactory.java"


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

.field static final referenceContextClass:Ljava/lang/Class;


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;

.field protected parserClasses:Ljava/util/Vector;

.field protected serializerClasses:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 41
    .local v0, "f":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    .line 76
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-static {v0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 11
    .param p0, "classNames"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 269
    sget-object p1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    .line 272
    :cond_0
    const/4 v1, 0x0

    .line 274
    .local v1, "classNamesLocation":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1    # "classNamesLocation":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v1, "DEFAULT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    :cond_1
    :try_start_0
    const-string p0, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    .end local p0    # "classNames":Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 278
    .local p1, "is":Ljava/io/InputStream;
    if-nez p1, :cond_2

    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    .end local p1    # "is":Ljava/io/InputStream;
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :catch_0
    move-exception p0

    .line 294
    .local p0, "e":Ljava/lang/Exception;
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 281
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v1, "sb":Ljava/lang/StringBuffer;
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 285
    .local p0, "ch":I
    if-gez p0, :cond_5

    .line 289
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 296
    .local p0, "classNames":Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "is":Ljava/io/InputStream;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    .end local v1    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "classNamesLocation":Ljava/lang/String;
    move-object v1, p1

    .line 302
    .end local p1    # "classNamesLocation":Ljava/lang/String;
    .local v1, "classNamesLocation":Ljava/lang/String;
    :goto_1
    const/4 p1, 0x0

    .line 303
    .local p1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v6, "parserClasses":Ljava/util/Vector;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 305
    .local v8, "serializerClasses":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "pos":I
    move v4, v2

    .end local v2    # "pos":I
    .local v4, "pos":I
    move-object v3, p1

    .line 307
    .end local p1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_9

    .line 308
    const/16 p1, 0x2c

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 310
    .local p1, "cut":I
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    move v2, p1

    .line 311
    .end local p1    # "cut":I
    .local v2, "cut":I
    :goto_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "name":Ljava/lang/String;
    const/4 p1, 0x0

    .line 314
    .local p1, "candidate":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 317
    .local v4, "instance":Ljava/lang/Object;
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 323
    .end local v4    # "instance":Ljava/lang/Object;
    :goto_4
    if-eqz p1, :cond_7

    .line 324
    const/4 v7, 0x0

    .line 325
    .local v7, "recognized":Z
    instance-of v9, v4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v9, :cond_4

    .line 326
    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 327
    const/4 v7, 0x1

    .line 329
    :cond_4
    instance-of v9, v4, Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v9, :cond_d

    .line 330
    invoke-virtual {v8, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 331
    const/4 p1, 0x1

    .line 333
    .end local v7    # "recognized":Z
    .local p1, "recognized":Z
    :goto_5
    instance-of v7, v4, Lorg/xmlpull/v1/XmlPullParserFactory;

    if-eqz v7, :cond_c

    .line 334
    if-nez v3, :cond_b

    .line 335
    move-object v0, v4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    move-object p1, v0

    .line 337
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_6
    const/4 v3, 0x1

    .line 339
    .local v3, "recognized":Z
    :goto_7
    if-nez v3, :cond_8

    .line 340
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .end local p0    # "classNames":Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incompatible class: "

    .end local v1    # "classNamesLocation":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    .end local v2    # "cut":I
    .end local v3    # "recognized":Z
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parserClasses":Ljava/util/Vector;
    .end local v8    # "serializerClasses":Ljava/util/Vector;
    .local v1, "sb":Ljava/lang/StringBuffer;
    .local p0, "ch":I
    .local p1, "is":Ljava/io/InputStream;
    :cond_5
    const/16 v2, 0x20

    if-le p0, v2, :cond_3

    .line 287
    int-to-char p0, p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 298
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .local p0, "classNames":Ljava/lang/String;
    .local p1, "context":Ljava/lang/Class;
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "context":Ljava/lang/Class;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter classNames to newInstance() that contained \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "classNamesLocation":Ljava/lang/String;
    move-object v1, p1

    .end local p1    # "classNamesLocation":Ljava/lang/String;
    .local v1, "classNamesLocation":Ljava/lang/String;
    goto/16 :goto_1

    .restart local v2    # "cut":I
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parserClasses":Ljava/util/Vector;
    .restart local v8    # "serializerClasses":Ljava/util/Vector;
    .local p1, "candidate":Ljava/lang/Class;
    :cond_7
    move-object p1, v3

    .line 343
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .local v2, "pos":I
    move v4, v2

    .end local v2    # "pos":I
    .local v4, "pos":I
    move-object v3, p1

    .line 344
    .end local p1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    goto/16 :goto_2

    .line 346
    .end local v5    # "name":Ljava/lang/String;
    :cond_9
    if-nez v3, :cond_a

    .line 347
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserFactory;

    .end local p0    # "classNames":Ljava/lang/String;
    invoke-direct {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 349
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_8
    iput-object v6, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 350
    iput-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 351
    iput-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    .line 352
    return-object p0

    .line 321
    .local v2, "cut":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v4, "instance":Ljava/lang/Object;
    .restart local v5    # "name":Ljava/lang/String;
    .local p0, "classNames":Ljava/lang/String;
    .local p1, "candidate":Ljava/lang/Class;
    :catch_1
    move-exception v7

    goto :goto_4

    .end local v2    # "cut":I
    .end local v5    # "name":Ljava/lang/String;
    .end local p1    # "candidate":Ljava/lang/Class;
    .local v4, "pos":I
    :cond_a
    move-object p0, v3

    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    goto :goto_8

    .end local v4    # "pos":I
    .restart local v2    # "cut":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "name":Ljava/lang/String;
    .local p0, "classNames":Ljava/lang/String;
    .local p1, "recognized":Z
    :cond_b
    move-object p1, v3

    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    goto :goto_6

    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p1, "recognized":Z
    :cond_c
    move v10, p1

    .end local p1    # "recognized":Z
    .local v10, "recognized":Z
    move-object p1, v3

    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local p1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    move v3, v10

    .end local v10    # "recognized":Z
    .local v3, "recognized":Z
    goto :goto_7

    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "recognized":Z
    .local p1, "candidate":Ljava/lang/Class;
    :cond_d
    move p1, v7

    .end local v7    # "recognized":Z
    .local p1, "recognized":Z
    goto :goto_5

    .end local v2    # "cut":I
    .end local v5    # "name":Ljava/lang/String;
    .restart local v4    # "pos":I
    .local p1, "cut":I
    :cond_e
    move v2, p1

    .end local p1    # "cut":I
    .restart local v2    # "cut":I
    goto/16 :goto_3
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 132
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 158
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    if-nez v8, :cond_0

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Factory initialization was incomplete - has not tried "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No valid parser classes found in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 178
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v3, "issues":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 181
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 183
    .local v6, "ppClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlpull/v1/XmlPullParser;

    .line 188
    .local v5, "pp":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 189
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "key":Ljava/lang/String;
    iget-object v8, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 191
    .local v7, "value":Ljava/lang/Boolean;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    const/4 v8, 0x1

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "value":Ljava/lang/Boolean;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 198
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v6    # "ppClass":Ljava/lang/Class;
    :cond_3
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not create parser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 195
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v5    # "pp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "ppClass":Ljava/lang/Class;
    :cond_4
    return-object v5
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 219
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Factory initialization incomplete - has not tried "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :cond_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 223
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No valid serializer classes found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v2, "issues":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 230
    iget-object v5, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 232
    .local v3, "ppClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v4, "ser":Lorg/xmlpull/v1/XmlSerializer;
    return-object v4

    .line 243
    .end local v4    # "ser":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 244
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "ppClass":Ljava/lang/Class;
    :cond_2
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not create serializer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 3
    .param p1, "awareness"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public setValidating(Z)V
    .locals 3
    .param p1, "validating"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#validation"

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method
