.class Lcom/wiyun/ad/AdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wiyun/ad/AdView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wiyun/ad/AdView;

.field private final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    iput-object p2, p0, Lcom/wiyun/ad/AdView$2;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wiyun/ad/AdView$2;)Lcom/wiyun/ad/AdView;
    .locals 1

    iget-object v0, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    return-object v0
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v1}, Lcom/wiyun/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wiyun/ad/AdView$2$1;

    invoke-direct {v2, p0, v1}, Lcom/wiyun/ad/AdView$2$1;-><init>(Lcom/wiyun/ad/AdView$2;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/wiyun/ad/AdView$2$1;->start()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v3}, Lcom/wiyun/ad/AdView;->e(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/i;

    move-result-object v3

    iget-object v3, v3, Lcom/wiyun/ad/i;->q:Ljava/lang/String;

    const-string v4, "%query%"

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->f(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/AdView$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v0}, Lcom/wiyun/ad/AdView;->f(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/AdView$AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/wiyun/ad/AdView$AdListener;->onAdClicked()V

    :cond_0
    iget-object v0, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$2;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    :cond_1
    move v0, v6

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "WiYun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open browser on ad click to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    invoke-static {v3}, Lcom/wiyun/ad/AdView;->e(Lcom/wiyun/ad/AdView;)Lcom/wiyun/ad/i;

    move-result-object v3

    iget-object v3, v3, Lcom/wiyun/ad/i;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/wiyun/ad/AdView$2;->a:Lcom/wiyun/ad/AdView;

    iget-object v1, p0, Lcom/wiyun/ad/AdView$2;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/wiyun/ad/AdView;->a(Lcom/wiyun/ad/AdView;Landroid/widget/LinearLayout;)V

    move v0, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
