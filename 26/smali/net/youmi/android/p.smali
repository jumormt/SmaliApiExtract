.class Lnet/youmi/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/eo;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/youmi/android/eo;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/p;->a:Lnet/youmi/android/eo;

    iput-object p2, p0, Lnet/youmi/android/p;->b:Landroid/content/Intent;

    iput-object p3, p0, Lnet/youmi/android/p;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/p;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/p;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/p;->c:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lnet/youmi/android/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
