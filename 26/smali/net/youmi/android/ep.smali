.class Lnet/youmi/android/ep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ep;->a:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ep;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {}, Lnet/youmi/android/ei;->a()Lnet/youmi/android/ew;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
