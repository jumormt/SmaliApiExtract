.class Lcom/casee/adsdk/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/casee/adsdk/w;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/w$a;->a:Lcom/casee/adsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/w$a;->a:Lcom/casee/adsdk/w;

    iput-object p1, v0, Lcom/casee/adsdk/w;->a:Landroid/location/Location;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
