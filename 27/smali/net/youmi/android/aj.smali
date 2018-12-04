.class Lnet/youmi/android/aj;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/view/animation/Animation;

.field private static b:Landroid/view/animation/Animation;

.field private static c:Landroid/view/animation/Animation;

.field private static d:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method static a(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/aj;->c:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/aj;->e(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/aj;->c:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/aj;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static b(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/aj;->d:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/y;->a()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/aj;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/aj;->d:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/aj;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static c(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/aj;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/aj;->f(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/aj;->a:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/aj;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static d(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 1

    sget-object v0, Lnet/youmi/android/aj;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/aj;->g(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/aj;->b:Landroid/view/animation/Animation;

    :cond_0
    sget-object v0, Lnet/youmi/android/aj;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static e(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lnet/youmi/android/ca;->a()Lnet/youmi/android/y;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/y;->a()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private static f(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private static g(Lnet/youmi/android/ca;)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method
