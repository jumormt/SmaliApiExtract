.class public Lorg/ksoap2/transport/ServiceConnectionSE;
.super Ljava/lang/Object;
.source "ServiceConnectionSE.java"

# interfaces
.implements Lorg/ksoap2/transport/ServiceConnection;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    .line 40
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 41
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "soapAction"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
