.class public Lcom/wiyun/ad/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wiyun/ad/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/wiyun/ad/l;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/wiyun/ad/l$a;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/wiyun/ad/l$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/wiyun/ad/g;

    invoke-direct {v0, p0}, Lcom/wiyun/ad/g;-><init>(Lcom/wiyun/ad/l;)V

    iput-object v0, p0, Lcom/wiyun/ad/l;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wiyun/ad/l;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/wiyun/ad/l;->d:Lcom/wiyun/ad/l$a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wiyun/ad/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/wiyun/ad/l;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/wiyun/ad/m;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wiyun/ad/l;->c:Z

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    iget-object v0, v0, Lcom/wiyun/ad/l;->b:Landroid/content/Context;

    sget-object v1, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    iget-object v1, v1, Lcom/wiyun/ad/l;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    iput-object v2, v0, Lcom/wiyun/ad/l;->b:Landroid/content/Context;

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    iput-object v2, v0, Lcom/wiyun/ad/l;->d:Lcom/wiyun/ad/l$a;

    sput-object v2, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wiyun/ad/l$a;)V
    .locals 1

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wiyun/ad/l;

    invoke-direct {v0, p0, p1}, Lcom/wiyun/ad/l;-><init>(Landroid/content/Context;Lcom/wiyun/ad/l$a;)V

    sput-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wiyun/ad/l;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wiyun/ad/l;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/wiyun/ad/l;)Lcom/wiyun/ad/l$a;
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/l;->d:Lcom/wiyun/ad/l$a;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/wiyun/ad/l;->a:Lcom/wiyun/ad/l;

    iget-boolean v0, v0, Lcom/wiyun/ad/l;->c:Z

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d()Lorg/apache/http/HttpHost;
    .locals 3

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
