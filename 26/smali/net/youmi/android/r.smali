.class Lnet/youmi/android/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/Notification;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lnet/youmi/android/r;->b:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    :try_start_0
    sget-object v0, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/AdActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x1869f

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    sget-object v1, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    const v2, 0x1080081

    iput v2, v1, Landroid/app/Notification;->icon:I

    sget-object v1, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v1, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    sget-object v1, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    const-string v4, "\u70b9\u51fb\u67e5\u770b\u4e0b\u8f7d\u72b6\u6001"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lnet/youmi/android/r;->a:Landroid/app/Notification;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-wide/16 v2, 0x1000

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->a([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x8

    :try_start_4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    :cond_1
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v4

    goto :goto_1
.end method

.method static a()Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/bc;->h()Lnet/youmi/android/ed;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ed;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    move-object v2, v8

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-object v3, v0, v1

    invoke-static {v3}, Lnet/youmi/android/r;->a(Ljava/lang/String;)Lnet/youmi/android/ci;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lnet/youmi/android/r;->a(Lnet/youmi/android/ci;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v4, v3, Lnet/youmi/android/ci;->c:Ljava/io/File;

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v3, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :try_start_1
    iget-object v3, v3, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)Lnet/youmi/android/ci;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/16 v0, 0x5f

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-le v0, v4, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnet/youmi/android/ci;

    invoke-direct {v3}, Lnet/youmi/android/ci;-><init>()V

    iput-object p0, v3, Lnet/youmi/android/ci;->b:Ljava/lang/String;

    iput-wide v1, v3, Lnet/youmi/android/ci;->d:J

    iput-object v4, v3, Lnet/youmi/android/ci;->e:Ljava/lang/String;

    iput-object v0, v3, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/youmi/android/bc;->h()Lnet/youmi/android/ed;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lnet/youmi/android/ci;->c:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method static a(Ljava/lang/String;J)Lnet/youmi/android/ci;
    .locals 5

    const/16 v4, 0x5f

    new-instance v0, Lnet/youmi/android/ci;

    invoke-direct {v0}, Lnet/youmi/android/ci;-><init>()V

    iput-wide p1, v0, Lnet/youmi/android/ci;->d:J

    iput-object p0, v0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sdfkoi897hk5490g89dlsd99"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/ci;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lnet/youmi/android/ci;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/ci;->b:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lnet/youmi/android/bc;->h()Lnet/youmi/android/ed;

    move-result-object v2

    iget-object v3, v0, Lnet/youmi/android/ci;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    return-object v0
.end method

.method static a(Lnet/youmi/android/ci;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "sdfkoi897hk5490g89dlsd99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/ci;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method static a(Lnet/youmi/android/m;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-static {v0}, Lnet/youmi/android/r;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/youmi/android/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Ljava/util/ArrayList;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/bc;->g()Lnet/youmi/android/ed;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ed;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move-object v2, v5

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    aget-object v3, v0, v1

    invoke-static {v3}, Lnet/youmi/android/r;->b(Ljava/lang/String;)Lnet/youmi/android/m;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lnet/youmi/android/r;->b(Lnet/youmi/android/m;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_1

    :cond_3
    move-object v0, v5

    goto :goto_1
.end method

.method static b(Ljava/lang/String;)Lnet/youmi/android/m;
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x5f

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x10

    if-lt v1, v2, :cond_2

    new-instance v1, Lnet/youmi/android/m;

    invoke-direct {v1}, Lnet/youmi/android/m;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object p0, v1, Lnet/youmi/android/m;->e:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x9

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/youmi/android/m;->a:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x9

    add-int/lit8 v4, v0, 0x11

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/youmi/android/m;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x11

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lnet/youmi/android/m;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lnet/youmi/android/bc;->g()Lnet/youmi/android/ed;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lnet/youmi/android/m;->c:Ljava/io/File;

    iget-object v0, v1, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v5

    goto :goto_1
.end method

.method static b(Lnet/youmi/android/ci;)Lnet/youmi/android/m;
    .locals 5

    :try_start_0
    new-instance v0, Lnet/youmi/android/m;

    invoke-direct {v0}, Lnet/youmi/android/m;-><init>()V

    iget-object v1, p0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    iput-object v1, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lnet/youmi/android/ci;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "l53d2lj8sdf6jks8lq9efx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/youmi/android/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    invoke-static {v2}, Lnet/youmi/android/r;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/youmi/android/m;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const-string v3, ""

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    iget-object v3, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/youmi/android/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/youmi/android/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/m;->e:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lnet/youmi/android/bc;->g()Lnet/youmi/android/ed;

    move-result-object v2

    iget-object v3, v0, Lnet/youmi/android/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/youmi/android/ed;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    iget-object v1, p0, Lnet/youmi/android/ci;->c:Ljava/io/File;

    iget-object v2, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lnet/youmi/android/r;

    monitor-enter v1

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/youmi/android/r;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lnet/youmi/android/r;->b:I

    if-lez v3, :cond_1

    sget v3, Lnet/youmi/android/r;->b:I

    iput v3, v2, Landroid/app/Notification;->number:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    const v3, 0x1869f

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/16 v3, 0x10

    :try_start_1
    iput v3, v2, Landroid/app/Notification;->flags:I

    const v2, 0x1869f

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const v2, 0x1869f

    :try_start_3
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static b(Lnet/youmi/android/m;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/youmi/android/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/youmi/android/m;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "l53d2lj8sdf6jks8lq9efx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lnet/youmi/android/r;

    monitor-enter v0

    :try_start_0
    sget v1, Lnet/youmi/android/r;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnet/youmi/android/r;->b:I

    invoke-static {p0}, Lnet/youmi/android/r;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized d(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lnet/youmi/android/r;

    monitor-enter v0

    :try_start_0
    sget v1, Lnet/youmi/android/r;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lnet/youmi/android/r;->b:I

    invoke-static {p0}, Lnet/youmi/android/r;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized e(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lnet/youmi/android/r;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lnet/youmi/android/r;->b:I

    invoke-static {p0}, Lnet/youmi/android/r;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
