.class final Lnet/youmi/android/dt;
.super Ljava/lang/Object;


# static fields
.field static final a:Lnet/youmi/android/dt;

.field static final b:Lnet/youmi/android/dt;

.field static final c:Lnet/youmi/android/dt;

.field static final d:Lnet/youmi/android/dt;


# instance fields
.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/youmi/android/dt;

    const/16 v1, 0xf0

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/dt;-><init>(II)V

    sput-object v0, Lnet/youmi/android/dt;->a:Lnet/youmi/android/dt;

    new-instance v0, Lnet/youmi/android/dt;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/dt;-><init>(II)V

    sput-object v0, Lnet/youmi/android/dt;->b:Lnet/youmi/android/dt;

    new-instance v0, Lnet/youmi/android/dt;

    const/16 v1, 0x1e0

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/dt;-><init>(II)V

    sput-object v0, Lnet/youmi/android/dt;->c:Lnet/youmi/android/dt;

    new-instance v0, Lnet/youmi/android/dt;

    const/16 v1, 0x280

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/dt;-><init>(II)V

    sput-object v0, Lnet/youmi/android/dt;->d:Lnet/youmi/android/dt;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/youmi/android/dt;->e:I

    iput p2, p0, Lnet/youmi/android/dt;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/dt;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/dt;->f:I

    return v0
.end method
