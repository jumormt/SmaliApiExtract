.class public Lorg/ksoap2/transport/AndroidHttpTransport;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "AndroidHttpTransport.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/ksoap2/transport/AndroidServiceConnection;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ksoap2/transport/AndroidServiceConnection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
