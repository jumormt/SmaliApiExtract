.class final Lcom/wooboo/adlib_android/WoobooAdView$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/WoobooAdView;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 281
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$1;->a:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/WoobooAdView;->requestFreshAd()V

    .line 284
    return-void
.end method
