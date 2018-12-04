.class Lnet/youmi/android/bc;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/youmi/android/ed;

.field private static b:Lnet/youmi/android/ed;

.field private static c:Lnet/youmi/android/ed;

.field private static d:Lnet/youmi/android/ed;

.field private static e:Lnet/youmi/android/ed;

.field private static f:Lnet/youmi/android/ed;

.field private static g:Lnet/youmi/android/ed;

.field private static h:Lnet/youmi/android/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide v12, 0x9a7ec800L

    const-wide/32 v10, 0x4d3f6400

    const-wide/32 v8, 0x12c00000

    const-wide/32 v6, 0xc800000

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F"

    const-wide/32 v2, 0xa00000

    const-wide/32 v4, 0x19bfcc00

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->a:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CBB27B6EF764459EAEEE877D9DA42B6D"

    const-wide/32 v2, 0x3200000

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->b:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/1BD3ACC63FA94E5B99B5479664B9CE69"

    const-wide/32 v4, 0x337f9800

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->c:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9"

    move-wide v2, v6

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->d:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/C8F62501155F41fbBBAA47A53C7F1A9B"

    const-wide/32 v4, 0xa4cb800

    move-wide v2, v8

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->e:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CC39825145FD4445ADD9860797CA5744"

    move-wide v2, v6

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->f:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CDDA55C678C34d07957074BF6956862F"

    move-wide v2, v8

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->g:Lnet/youmi/android/ed;

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/D080F8A1E1134cabA1910B7129A75B44"

    const-wide/32 v4, 0xf731400

    move-wide v2, v8

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->h:Lnet/youmi/android/ed;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->a:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F"

    const-wide/32 v2, 0xa00000

    const-wide/32 v4, 0x19bfcc00

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->a:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->a:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->a:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static b()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->b:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CBB27B6EF764459EAEEE877D9DA42B6D"

    const-wide/32 v2, 0x3200000

    const-wide/32 v4, 0x4d3f6400

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->b:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->b:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->b:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static c()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->c:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/1BD3ACC63FA94E5B99B5479664B9CE69"

    const-wide/32 v2, 0xc800000

    const-wide/32 v4, 0x337f9800

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->c:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->c:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->c:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static d()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->d:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9"

    const-wide/32 v2, 0xc800000

    const-wide/32 v4, 0x4d3f6400

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->d:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->d:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->d:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static e()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->e:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/C8F62501155F41fbBBAA47A53C7F1A9B"

    const-wide/32 v2, 0x12c00000

    const-wide/32 v4, 0xa4cb800

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->e:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->e:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->e:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static f()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->f:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CC39825145FD4445ADD9860797CA5744"

    const-wide/32 v2, 0xc800000

    const-wide v4, 0x9a7ec800L

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->f:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->f:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->f:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static g()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->g:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/CDDA55C678C34d07957074BF6956862F"

    const-wide/32 v2, 0x12c00000

    const-wide v4, 0x9a7ec800L

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->g:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->g:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->g:Lnet/youmi/android/ed;

    return-object v0
.end method

.method static h()Lnet/youmi/android/ed;
    .locals 6

    sget-object v0, Lnet/youmi/android/bc;->h:Lnet/youmi/android/ed;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/ed;

    const-string v1, "youmicache/D080F8A1E1134cabA1910B7129A75B44"

    const-wide/32 v2, 0x12c00000

    const-wide/32 v4, 0xf731400

    invoke-direct/range {v0 .. v5}, Lnet/youmi/android/ed;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lnet/youmi/android/bc;->h:Lnet/youmi/android/ed;

    :cond_0
    sget-object v0, Lnet/youmi/android/bc;->h:Lnet/youmi/android/ed;

    invoke-virtual {v0}, Lnet/youmi/android/ed;->a()V

    sget-object v0, Lnet/youmi/android/bc;->h:Lnet/youmi/android/ed;

    return-object v0
.end method
