.class public Lcom/wiyun/ad/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/wiyun/ad/o;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a([B)[B
    .locals 1

    invoke-static {}, Lcom/wiyun/ad/o;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/wiyun/ad/o;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/j;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/wiyun/ad/o;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/o;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/wiyun/ad/o;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wiyun/ad/j;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lcom/wiyun/ad/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
