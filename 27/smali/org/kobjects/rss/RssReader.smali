.class public Lorg/kobjects/rss/RssReader;
.super Ljava/lang/Object;
.source "RssReader.java"


# static fields
.field public static final AUTHOR:I = 0x4

.field public static final DATE:I = 0x3

.field public static final DESCRIPTION:I = 0x2

.field public static final LINK:I = 0x1

.field public static final TITLE:I


# instance fields
.field xr:Lorg/kobjects/xml/XmlReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/kobjects/xml/XmlReader;

    invoke-direct {v0, p1}, Lorg/kobjects/xml/XmlReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    .line 33
    return-void
.end method


# virtual methods
.method public next()[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 48
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/String;

    .line 50
    .local v2, "item":[Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v6

    if-eq v6, v8, :cond_8

    .line 51
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 52
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "n":Ljava/lang/String;
    const-string v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ":item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v6

    if-eq v6, v9, :cond_7

    .line 55
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 56
    iget-object v6, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v6}, Lorg/kobjects/xml/XmlReader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "name":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "cut":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 59
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lorg/kobjects/rss/RssReader;->readText(Ljava/lang/StringBuffer;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "text":Ljava/lang/String;
    const-string v6, "title"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const/4 v6, 0x0

    aput-object v5, v2, v6

    goto :goto_0

    .line 65
    :cond_3
    const-string v6, "link"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    aput-object v5, v2, v8

    goto :goto_0

    .line 67
    :cond_4
    const-string v6, "description"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 68
    aput-object v5, v2, v7

    goto :goto_0

    .line 69
    :cond_5
    const-string v6, "date"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 70
    aput-object v5, v2, v9

    goto :goto_0

    .line 71
    :cond_6
    const-string v6, "author"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const/4 v6, 0x4

    aput-object v5, v2, v6

    goto :goto_0

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "cut":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_7
    move-object v6, v2

    .line 79
    .end local v3    # "n":Ljava/lang/String;
    :goto_1
    return-object v6

    :cond_8
    const/4 v6, 0x0

    goto :goto_1
.end method

.method readText(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    :goto_0
    iget-object v0, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v0}, Lorg/kobjects/xml/XmlReader;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v0}, Lorg/kobjects/xml/XmlReader;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 39
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/kobjects/rss/RssReader;->readText(Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lorg/kobjects/rss/RssReader;->xr:Lorg/kobjects/xml/XmlReader;

    invoke-virtual {v0}, Lorg/kobjects/xml/XmlReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
