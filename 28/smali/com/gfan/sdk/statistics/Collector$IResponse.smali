.class public interface abstract Lcom/gfan/sdk/statistics/Collector$IResponse;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gfan/sdk/statistics/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResponse"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lorg/apache/http/HttpResponse;)V
.end method
