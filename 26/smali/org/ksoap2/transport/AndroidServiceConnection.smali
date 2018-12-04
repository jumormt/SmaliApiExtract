.class public Lorg/ksoap2/transport/AndroidServiceConnection;
.super Lorg/ksoap2/transport/ServiceConnectionSE;
.source "AndroidServiceConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
