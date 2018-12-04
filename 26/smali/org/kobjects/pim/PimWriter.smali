.class public Lorg/kobjects/pim/PimWriter;
.super Ljava/lang/Object;
.source "PimWriter.java"


# instance fields
.field writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    .line 37
    return-void
.end method


# virtual methods
.method public writeEntry(Lorg/kobjects/pim/PimItem;)V
    .locals 7
    .param p1, "item"    # Lorg/kobjects/pim/PimItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "\r\n"

    .line 41
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const-string v5, "begin:"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lorg/kobjects/pim/PimItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const-string v5, "\r\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lorg/kobjects/pim/PimItem;->fieldNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1, v3}, Lorg/kobjects/pim/PimItem;->getFieldCount(Ljava/lang/String;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 48
    invoke-virtual {p1, v3, v2}, Lorg/kobjects/pim/PimItem;->getField(Ljava/lang/String;I)Lorg/kobjects/pim/PimField;

    move-result-object v1

    .line 49
    .local v1, "field":Lorg/kobjects/pim/PimField;
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 51
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Lorg/kobjects/pim/PimField;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const-string v5, "\r\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "field":Lorg/kobjects/pim/PimField;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const-string v5, "end:"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lorg/kobjects/pim/PimItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lorg/kobjects/pim/PimWriter;->writer:Ljava/io/Writer;

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    return-void
.end method
