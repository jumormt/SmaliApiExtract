.class public Lorg/kobjects/xmlrpc/Driver;
.super Ljava/lang/Object;
.source "Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Lorg/kobjects/xml/XmlReader;

    new-instance v2, Ljava/io/FileReader;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/kobjects/xml/XmlReader;-><init>(Ljava/io/Reader;)V

    .line 10
    .local v0, "parser":Lorg/kobjects/xml/XmlReader;
    new-instance v1, Lorg/kobjects/xmlrpc/XmlRpcParser;

    invoke-direct {v1, v0}, Lorg/kobjects/xmlrpc/XmlRpcParser;-><init>(Lorg/kobjects/xml/XmlReader;)V

    .line 11
    .local v1, "rpcParser":Lorg/kobjects/xmlrpc/XmlRpcParser;
    invoke-virtual {v1}, Lorg/kobjects/xmlrpc/XmlRpcParser;->parseResponse()Ljava/lang/Object;

    .line 12
    return-void
.end method
