.class public Lorg/apache/commons/httpclient/methods/PutMethod;
.super Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.source "PutMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "PUT"

    return-object v0
.end method
