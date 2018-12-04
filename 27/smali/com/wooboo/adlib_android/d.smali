.class public final Lcom/wooboo/adlib_android/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/wooboo/adlib_android/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wooboo/adlib_android/d;->a:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/d;->b:Lcom/wooboo/adlib_android/d;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/wooboo/adlib_android/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 69
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 64
    sget-object v0, Lcom/wooboo/adlib_android/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcom/wooboo/adlib_android/d;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 26
    const-class v0, Lcom/wooboo/adlib_android/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wooboo/adlib_android/d;->b:Lcom/wooboo/adlib_android/d;

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/wooboo/adlib_android/d;->b:Lcom/wooboo/adlib_android/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :goto_0
    monitor-exit v0

    return-object v1

    .line 32
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "wooboo_ua.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 33
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 39
    new-instance v3, Lcom/wooboo/adlib_android/d;

    invoke-direct {v3}, Lcom/wooboo/adlib_android/d;-><init>()V

    sput-object v3, Lcom/wooboo/adlib_android/d;->b:Lcom/wooboo/adlib_android/d;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 44
    if-eqz v1, :cond_1

    .line 45
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 53
    :cond_2
    :goto_2
    :try_start_5
    sget-object v1, Lcom/wooboo/adlib_android/d;->b:Lcom/wooboo/adlib_android/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 36
    :cond_3
    :try_start_6
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "="

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/wooboo/adlib_android/d;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 40
    :catch_0
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    .line 41
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 44
    if-eqz v2, :cond_4

    .line 45
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    :cond_4
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 48
    :catch_1
    move-exception v1

    goto :goto_2

    .line 42
    :catchall_0
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    .line 44
    :goto_4
    if-eqz v2, :cond_5

    .line 45
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    :cond_5
    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 52
    :cond_6
    :goto_5
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 26
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_5

    .line 42
    :catchall_2
    move-exception v2

    move-object v3, v4

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_4

    :catchall_4
    move-exception v1

    goto :goto_4

    .line 40
    :catch_4
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v3, v4

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3
.end method
