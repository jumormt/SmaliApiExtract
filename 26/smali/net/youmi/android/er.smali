.class Lnet/youmi/android/er;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:J

.field private static g:I

.field private static h:I

.field private static i:Z

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, ""

    sput-boolean v2, Lnet/youmi/android/er;->a:Z

    const-string v0, ""

    sput-object v1, Lnet/youmi/android/er;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lnet/youmi/android/er;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lnet/youmi/android/er;->d:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lnet/youmi/android/er;->e:I

    const-wide/16 v0, 0x7530

    sput-wide v0, Lnet/youmi/android/er;->f:J

    const/16 v0, 0x1e

    sput v0, Lnet/youmi/android/er;->g:I

    sput v2, Lnet/youmi/android/er;->h:I

    sput-boolean v3, Lnet/youmi/android/er;->i:Z

    sput-boolean v3, Lnet/youmi/android/er;->j:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 3

    sget v0, Lnet/youmi/android/er;->e:I

    if-gez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    mul-int/lit8 v0, v0, 0x64

    sput v0, Lnet/youmi/android/er;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lnet/youmi/android/er;->e:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(I)V
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lnet/youmi/android/er;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lnet/youmi/android/er;->f:J

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sput-object v0, Lnet/youmi/android/er;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/er;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lnet/youmi/android/er;->a:Z

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/er;->a:Z

    return v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/er;->b:Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sput-object v0, Lnet/youmi/android/er;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/er;->c:Ljava/lang/String;

    return-object v0
.end method

.method static d()Z
    .locals 1

    :try_start_0
    sget-object v0, Lnet/youmi/android/er;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/er;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lnet/youmi/android/er;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/er;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/er;->d:Ljava/lang/String;

    return-object v0
.end method

.method static f()I
    .locals 1

    sget v0, Lnet/youmi/android/er;->g:I

    return v0
.end method

.method static g()J
    .locals 2

    sget-wide v0, Lnet/youmi/android/er;->f:J

    return-wide v0
.end method

.method static h()I
    .locals 1

    sget v0, Lnet/youmi/android/er;->h:I

    return v0
.end method

.method static i()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/er;->i:Z

    return v0
.end method

.method static j()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/youmi/android/er;->i:Z

    return-void
.end method

.method static k()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lnet/youmi/android/er;->j:Z

    return-void
.end method

.method static l()Z
    .locals 1

    sget-boolean v0, Lnet/youmi/android/er;->j:Z

    return v0
.end method
