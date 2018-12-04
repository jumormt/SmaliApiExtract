.class public Lorg/apache/commons/httpclient/auth/HttpAuthRealm;
.super Lorg/apache/commons/httpclient/auth/AuthScope;
.source "HttpAuthRealm.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, -0x1

    sget-object v1, Lorg/apache/commons/httpclient/auth/HttpAuthRealm;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
