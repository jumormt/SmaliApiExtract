.class Lcom/casee/adsdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/i$b;,
        Lcom/casee/adsdk/i$a;
    }
.end annotation


# instance fields
.field private A:Lcom/casee/adsdk/i$b;

.field private B:Lcom/casee/adsdk/i$b;

.field private C:Lcom/casee/adsdk/i$a;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private G:Ljava/util/ArrayList;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/ImageButton;

.field private J:I

.field private K:Landroid/os/Handler;

.field private a:Landroid/content/Context;

.field private b:Lcom/casee/adsdk/o;

.field private c:Lcom/casee/adsdk/CaseeAdView;

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Lcom/casee/adsdk/i$b;

.field private v:Lcom/casee/adsdk/i$b;

.field private w:Lcom/casee/adsdk/i$b;

.field private x:Lcom/casee/adsdk/i$b;

.field private y:Lcom/casee/adsdk/i$b;

.field private z:Lcom/casee/adsdk/i$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/casee/adsdk/o;Lcom/casee/adsdk/CaseeAdView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/casee/adsdk/i;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/casee/adsdk/i;->e:I

    const-string v0, "http://myapk.cn/sdkapi.php"

    iput-object v0, p0, Lcom/casee/adsdk/i;->f:Ljava/lang/String;

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/casee/adsdk/i;->g:I

    iput-object v3, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iput-boolean v2, p0, Lcom/casee/adsdk/i;->F:Z

    iput v1, p0, Lcom/casee/adsdk/i;->J:I

    new-instance v0, Lcom/casee/adsdk/t;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/t;-><init>(Lcom/casee/adsdk/i;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->K:Landroid/os/Handler;

    iput-object p1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    iput-object p3, p0, Lcom/casee/adsdk/i;->c:Lcom/casee/adsdk/CaseeAdView;

    sput-boolean v1, Lcom/casee/adsdk/e;->a:Z

    invoke-direct {p0, p1, p3}, Lcom/casee/adsdk/i;->a(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)V

    return-void
.end method

.method static synthetic A(Lcom/casee/adsdk/i;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/i;->g:I

    return v0
.end method

.method static synthetic B(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->z:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic C(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->b()V

    return-void
.end method

.method static synthetic D(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->B:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic E(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic F(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$a;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    return-object v0
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Lcom/casee/adsdk/i$a;)Lcom/casee/adsdk/i$a;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/i;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(IIII)V
    .locals 10

    const/16 v9, 0x9

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v7, -0x1000000

    const/4 v6, -0x2

    const/4 v5, 0x0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "bitmap"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v2, v2, 0x96

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v3, v3, 0x96

    div-int/lit8 v3, v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-int v2, p1, p3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x28

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-int v2, p1, p3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_3

    iput-object v0, p0, Lcom/casee/adsdk/i;->I:Landroid/widget/ImageButton;

    :cond_3
    const-class v1, Lcom/casee/adsdk/e;

    const-string v2, "webview_download_icon_up.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v3, p3, 0x1

    mul-int/2addr v3, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/casee/adsdk/q;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/q;-><init>(Lcom/casee/adsdk/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "author"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-int v2, p1, p3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x78

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "fee_type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x78

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-le p1, p2, :cond_7

    const/16 v0, 0x78

    move v1, v0

    :goto_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "content"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "<[^>]*>"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_6

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<font color=\'red\' ><u>\u70b9\u51fb\u4e0b\u8f7d</u></font> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v1, v1, 0x145

    div-int/lit8 v1, v1, 0x64

    invoke-direct {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-int v1, p1, p3

    add-int/2addr v1, p4

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    sub-int/2addr v4, p3

    mul-int/2addr v4, p1

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_7
    const/16 v0, 0x46

    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)V
    .locals 12

    const/4 v3, 0x0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p2}, Lcom/casee/adsdk/CaseeAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/casee/adsdk/i;->E:I

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v10

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/i;->c(Landroid/app/Activity;)I

    move-result v11

    new-instance v1, Lcom/casee/adsdk/i$b;

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x4

    sub-int v4, v10, v2

    div-int/lit8 v5, v11, 0x6

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v6, v2, 0x4

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v1, p0, Lcom/casee/adsdk/i;->z:Lcom/casee/adsdk/i$b;

    new-instance v4, Lcom/casee/adsdk/i$b;

    div-int/lit8 v6, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x4

    sub-int v7, v10, v1

    div-int/lit8 v8, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v4, p0, Lcom/casee/adsdk/i;->u:Lcom/casee/adsdk/i$b;

    new-instance v4, Lcom/casee/adsdk/i$b;

    mul-int/lit8 v1, v11, 0x2

    div-int/lit8 v6, v1, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x4

    sub-int v7, v10, v1

    div-int/lit8 v8, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v4, p0, Lcom/casee/adsdk/i;->v:Lcom/casee/adsdk/i$b;

    new-instance v4, Lcom/casee/adsdk/i$b;

    mul-int/lit8 v1, v11, 0x3

    div-int/lit8 v6, v1, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x4

    sub-int v7, v10, v1

    div-int/lit8 v8, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v4, p0, Lcom/casee/adsdk/i;->w:Lcom/casee/adsdk/i$b;

    new-instance v4, Lcom/casee/adsdk/i$b;

    mul-int/lit8 v1, v11, 0x4

    div-int/lit8 v6, v1, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x4

    sub-int v7, v10, v1

    div-int/lit8 v8, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v4, p0, Lcom/casee/adsdk/i;->x:Lcom/casee/adsdk/i$b;

    new-instance v4, Lcom/casee/adsdk/i$b;

    mul-int/lit8 v1, v11, 0x5

    div-int/lit8 v6, v1, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x4

    sub-int v7, v10, v1

    div-int/lit8 v8, v11, 0x6

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v9, v1, 0x4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v4, p0, Lcom/casee/adsdk/i;->y:Lcom/casee/adsdk/i$b;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v7, v1, Landroid/graphics/Rect;->top:I

    new-instance v1, Lcom/casee/adsdk/i$b;

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v2, v2, 0x271

    div-int/lit8 v2, v2, 0x64

    sub-int v2, v10, v2

    sub-int v4, v2, v7

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit8 v6, v2, 0x64

    move-object v2, p0

    move v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v1, p0, Lcom/casee/adsdk/i;->A:Lcom/casee/adsdk/i$b;

    new-instance v1, Lcom/casee/adsdk/i$b;

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v2, v2, 0x271

    div-int/lit8 v2, v2, 0x64

    sub-int v6, v10, v2

    move-object v2, p0

    move v4, v7

    move v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/casee/adsdk/i$b;-><init>(Lcom/casee/adsdk/i;IIII)V

    iput-object v1, p0, Lcom/casee/adsdk/i;->B:Lcom/casee/adsdk/i$b;

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p2, v3, v3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/casee/adsdk/i;->e(Landroid/app/Activity;)V

    return-void
.end method

.method private a()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "android.intent.action.SENDTO"

    const-string v0, ""

    :try_start_0
    iget-object v0, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    const-string v2, "tel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.CALL_PHONE"

    iget-object v3, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_a

    move v0, v4

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v2, "smsto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    iget-object v2, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v2}, Lcom/casee/adsdk/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1

    :cond_4
    const-string v2, "mailto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    const-string v2, "geo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/casee/adsdk/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v0}, Lcom/casee/adsdk/o;->n()Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "$(ssq)"

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$(sid)"

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$(asq)"

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$(aid)"

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    sget-boolean v2, Lcom/casee/adsdk/e;->a:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/casee/adsdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v5

    goto/16 :goto_0

    :cond_9
    move v0, v4

    goto/16 :goto_0

    :cond_a
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CASEE-AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open new activity error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    invoke-virtual {v3}, Lcom/casee/adsdk/o;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/casee/adsdk/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/casee/adsdk/i;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/casee/adsdk/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 13

    const/16 v11, 0x64

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-class v12, Lcom/casee/adsdk/e;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v7

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/i;->c(Landroid/app/Activity;)I

    move-result v8

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v2, v8, 0x5

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v3, v3, 0x271

    div-int/lit8 v3, v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    neg-int v2, v8

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v3, v3, 0x91

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    const/16 v3, 0xfa

    const/16 v4, 0x4d

    const/16 v5, 0x76

    const/16 v6, 0xbd

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_side_page.png"

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v5, v1

    :goto_0
    iget-object v6, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-direct {p0, v8, v7, v5, v3}, Lcom/casee/adsdk/i;->a(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    iget v6, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v6, v6, 0x1d1

    div-int/lit8 v6, v6, 0x64

    sub-int v6, v7, v6

    invoke-virtual {v5, v0, v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/casee/adsdk/i;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v2, v2, 0x1d1

    div-int/lit8 v2, v2, 0x64

    sub-int v2, v7, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/casee/adsdk/i;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_hand.png"

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-int/lit8 v2, v8, 0x3

    div-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit16 v3, v3, 0x1d1

    div-int/lit8 v3, v3, 0x64

    sub-int v3, v7, v3

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClickable(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v9, v9, v9, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->I:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v8

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v9, v1, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/casee/adsdk/j;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/j;-><init>(Lcom/casee/adsdk/i;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/casee/adsdk/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/casee/adsdk/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_2

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    invoke-static {v1}, Lcom/casee/adsdk/i$a;->a(Lcom/casee/adsdk/i$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v1, "result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---55---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->e()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/casee/adsdk/e;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/casee/adsdk/p;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/p;-><init>(Lcom/casee/adsdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/casee/adsdk/i;->J:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/casee/adsdk/i;->F:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->d()V

    return-void
.end method

.method static synthetic e(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/o;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->b:Lcom/casee/adsdk/o;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    invoke-static {v0}, Lcom/casee/adsdk/i$a;->b(Lcom/casee/adsdk/i$a;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/i;->G:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    invoke-static {v1, v3}, Lcom/casee/adsdk/i$a;->a(Lcom/casee/adsdk/i$a;Z)Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/casee/adsdk/i;->q:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private e(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic f(Lcom/casee/adsdk/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 3

    const-class v2, Lcom/casee/adsdk/e;

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_last_on.png"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_next_on.png"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_last_off.png"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/casee/adsdk/e;

    const-string v0, "webview_next_off.png"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1
.end method

.method static synthetic g(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/CaseeAdView;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->c:Lcom/casee/adsdk/CaseeAdView;

    return-object v0
.end method

.method private g()V
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x45610000    # 3600.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/casee/adsdk/i;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic h(Lcom/casee/adsdk/i;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->g()V

    return-void
.end method

.method static synthetic j(Lcom/casee/adsdk/i;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/casee/adsdk/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/casee/adsdk/i;->F:Z

    return v0
.end method

.method static synthetic l(Lcom/casee/adsdk/i;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic m(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->f()V

    return-void
.end method

.method static synthetic n(Lcom/casee/adsdk/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->K:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/casee/adsdk/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/casee/adsdk/i;->c()V

    return-void
.end method

.method static synthetic q(Lcom/casee/adsdk/i;)I
    .locals 1

    iget v0, p0, Lcom/casee/adsdk/i;->J:I

    return v0
.end method

.method static synthetic r(Lcom/casee/adsdk/i;)I
    .locals 2

    iget v0, p0, Lcom/casee/adsdk/i;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/casee/adsdk/i;->J:I

    return v0
.end method

.method static synthetic s(Lcom/casee/adsdk/i;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->H:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->A:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic u(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->u:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic v(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->v:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic w(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->w:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic x(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->x:Lcom/casee/adsdk/i$b;

    return-object v0
.end method

.method static synthetic y(Lcom/casee/adsdk/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/casee/adsdk/i;)Lcom/casee/adsdk/i$b;
    .locals 1

    iget-object v0, p0, Lcom/casee/adsdk/i;->y:Lcom/casee/adsdk/i$b;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    iput-object p2, p0, Lcom/casee/adsdk/i;->D:Ljava/lang/String;

    const-string v0, "result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/casee/adsdk/i$a;

    invoke-direct {v0, p0, p1}, Lcom/casee/adsdk/i$a;-><init>(Lcom/casee/adsdk/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    iget-object v1, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/casee/adsdk/i$a;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    invoke-virtual {v0}, Lcom/casee/adsdk/i$a;->show()V

    sput-boolean v5, Lcom/casee/adsdk/e;->a:Z

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/casee/adsdk/m;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/m;-><init>(Lcom/casee/adsdk/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/casee/adsdk/l;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/l;-><init>(Lcom/casee/adsdk/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/adsdk/i;->k:Landroid/widget/ImageView;

    const-class v0, Lcom/casee/adsdk/e;

    const-string v1, "webview_background.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/i;->k:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/casee/adsdk/i;->h:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v4

    sub-int v0, v4, v0

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    invoke-direct {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/casee/adsdk/i;->a(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/casee/adsdk/i;->d(Landroid/app/Activity;)V

    iput-boolean v5, p0, Lcom/casee/adsdk/i;->F:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/casee/adsdk/k;

    invoke-direct {v1, p0, p2}, Lcom/casee/adsdk/k;-><init>(Lcom/casee/adsdk/i;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/casee/adsdk/i;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "result"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method protected a(Landroid/app/Activity;)V
    .locals 5

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/i;->b(Landroid/app/Activity;)I

    move-result v1

    iget-object v0, p0, Lcom/casee/adsdk/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/casee/adsdk/i;->c(Landroid/app/Activity;)I

    move-result v0

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xc

    :goto_0
    const-string v2, "webview_introduce_logo.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->q:Landroid/widget/ImageView;

    const-string v2, "webview_last_off.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    const-string v2, "webview_next_off.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    const-string v2, "webview_web_refresh.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->n:Landroid/widget/ImageView;

    const-string v2, "webview_open_web.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->o:Landroid/widget/ImageView;

    const-string v2, "webview_exit.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->p:Landroid/widget/ImageView;

    const-string v2, "webview_loading.png"

    invoke-direct {p0, v2}, Lcom/casee/adsdk/i;->d(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/i;->j:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/casee/adsdk/i;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v4, v4, 0x6

    div-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/casee/adsdk/i;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/casee/adsdk/i;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->q:Landroid/widget/ImageView;

    iget v3, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v3, v3, 0x1c

    div-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v2, v1, v3}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->C:Lcom/casee/adsdk/i$a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/casee/adsdk/i$a;->a(Lcom/casee/adsdk/i$a;Z)Z

    iget-object v2, p0, Lcom/casee/adsdk/i;->l:Landroid/widget/ImageView;

    div-int/lit8 v3, v0, 0x6

    add-int/2addr v3, v1

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->m:Landroid/widget/ImageView;

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v1

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->n:Landroid/widget/ImageView;

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v1

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->o:Landroid/widget/ImageView;

    mul-int/lit8 v3, v0, 0x4

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v1

    iget v4, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v2, v3, v4}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/casee/adsdk/i;->p:Landroid/widget/ImageView;

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    div-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/casee/adsdk/i;->a(Landroid/view/View;II)V

    return-void

    :cond_0
    iget v1, p0, Lcom/casee/adsdk/i;->E:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xc

    goto/16 :goto_0
.end method

.method public b(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1388

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "result"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_1
.end method

.method public c(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "CASEE-AD"

    const-string v1, "click ad."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/casee/adsdk/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/casee/adsdk/s;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/s;-><init>(Lcom/casee/adsdk/i;)V

    invoke-virtual {v0}, Lcom/casee/adsdk/s;->start()V

    :cond_0
    return-void
.end method
