.class public Lorg/apache/commons/httpclient/methods/DeleteMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "DeleteMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "DELETE"

    return-object v0
.end method
