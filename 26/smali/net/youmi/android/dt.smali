.class Lnet/youmi/android/dt;
.super Landroid/widget/FrameLayout;


# static fields
.field static e:I


# instance fields
.field a:Landroid/app/Activity;

.field b:Lnet/youmi/android/ca;

.field c:Lnet/youmi/android/g;

.field d:Lnet/youmi/android/cb;

.field protected f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/dt;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/co;Lnet/youmi/android/ca;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/dt;->h:I

    sget v0, Lnet/youmi/android/dt;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/youmi/android/dt;->e:I

    iput v0, p0, Lnet/youmi/android/dt;->f:I

    iput-object p1, p0, Lnet/youmi/android/dt;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/ca;

    new-instance v0, Lnet/youmi/android/g;

    iget-object v1, p0, Lnet/youmi/android/dt;->a:Landroid/app/Activity;

    iget-object v2, p0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/ca;

    invoke-direct {v0, v1, p2, v2}, Lnet/youmi/android/g;-><init>(Landroid/app/Activity;Lnet/youmi/android/co;Lnet/youmi/android/ca;)V

    iput-object v0, p0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/g;

    iget-object v0, p0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/g;

    invoke-virtual {p0, v0}, Lnet/youmi/android/dt;->addView(Landroid/view/View;)V

    new-instance v0, Lnet/youmi/android/cb;

    iget-object v1, p0, Lnet/youmi/android/dt;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lnet/youmi/android/cb;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/cb;

    iget-object v0, p0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/cb;

    invoke-virtual {p0, v0}, Lnet/youmi/android/dt;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/dt;->h:I

    return-void
.end method

.method a(Lnet/youmi/android/ci;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/dt;->g:I

    iget-object v0, p0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/cb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/cb;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/g;

    invoke-virtual {v0, p1}, Lnet/youmi/android/g;->a(Lnet/youmi/android/ci;)V

    return-void
.end method

.method a(Lnet/youmi/android/m;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/dt;->g:I

    iget-object v0, p0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/youmi/android/g;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/cb;

    invoke-virtual {v0, p1}, Lnet/youmi/android/cb;->a(Lnet/youmi/android/m;)V

    return-void
.end method
