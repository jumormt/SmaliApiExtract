.class final Lcom/wooboo/adlib_android/ImpressionAdView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/ImpressionAdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/wooboo/adlib_android/a;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/ImpressionAdView$1;Lcom/wooboo/adlib_android/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/wooboo/adlib_android/ImpressionAdView$1$1;->a:Lcom/wooboo/adlib_android/a;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-string v5, "Wooboo SDK 1.2"

    .line 282
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 283
    iget-object v0, p0, Lcom/wooboo/adlib_android/ImpressionAdView$1$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0}, Lcom/wooboo/adlib_android/a;->d()V

    .line 284
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    const/4 v1, -0x1

    .line 286
    const/4 v2, -0x2

    .line 284
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    iget-object v1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$1$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/widget/RelativeLayout;)V

    .line 289
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->d()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/wooboo/adlib_android/ImpressionAdView$1$1;->a:Lcom/wooboo/adlib_android/a;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 290
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getBtnWidth()I

    move-result v1

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getBtnHeight()I

    move-result v2

    .line 290
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    new-instance v1, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->a(Landroid/widget/ImageButton;)V

    .line 294
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 296
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 303
    :goto_0
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/wooboo/adlib_android/ImpressionAdView$1$1$1;

    invoke-direct {v2, p0}, Lcom/wooboo/adlib_android/ImpressionAdView$1$1$1;-><init>(Lcom/wooboo/adlib_android/ImpressionAdView$1$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->e()Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :try_start_1
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->g()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 314
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/ImpressionAdView;->setContentView(Landroid/view/View;)V

    .line 315
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->g()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 316
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 317
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->h()I

    move-result v3

    .line 318
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->i()I

    move-result v4

    .line 315
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->showAtLocation(Landroid/view/View;III)V

    .line 319
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->g()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->h()I

    move-result v1

    .line 321
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->i()I

    move-result v2

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdWidth()I

    move-result v3

    .line 322
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->getAdHeight()I

    move-result v4

    .line 319
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wooboo/adlib_android/ImpressionAdView;->update(IIII)V

    .line 323
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->j()Lcom/wooboo/adlib_android/AdListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    :try_start_2
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->j()Lcom/wooboo/adlib_android/AdListener;

    move-result-object v0

    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->g()Lcom/wooboo/adlib_android/ImpressionAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wooboo/adlib_android/AdListener;->onReceiveAd(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    :cond_0
    :goto_1
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :try_start_3
    const-string v1, "Wooboo SDK 1.2"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 331
    :catch_1
    move-exception v0

    const-string v0, "Wooboo SDK 1.2"

    .line 332
    const-string v0, "Can not display an impressionAdView,please check params."

    .line 331
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
