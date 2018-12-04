.class public final Lcom/wooboo/adlib_android/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/wooboo/adlib_android/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/wooboo/adlib_android/i;->a:Lcom/wooboo/adlib_android/i;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/wooboo/adlib_android/i;
    .locals 4

    .prologue
    .line 30
    sget-object v0, Lcom/wooboo/adlib_android/i;->a:Lcom/wooboo/adlib_android/i;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/wooboo/adlib_android/i;

    const-string v1, "woobooad.db"

    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x2

    .line 31
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/wooboo/adlib_android/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/wooboo/adlib_android/i;->a:Lcom/wooboo/adlib_android/i;

    .line 34
    :cond_0
    sget-object v0, Lcom/wooboo/adlib_android/i;->a:Lcom/wooboo/adlib_android/i;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;[B)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string v0, "woobooad"

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v2, "imgName"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "downloadTime"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "imgData"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 86
    const-string v2, "woobooad"

    const-string v3, "ID"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    const-string v1, "woobooad"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete from woobooad where ID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    :cond_2
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    move-object v1, v5

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string v10, "Wooboo SDK 1.2"

    .line 100
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 104
    :try_start_1
    const-string v1, "woobooad"

    const/4 v2, 0x0

    const-string v3, "imgName=?"

    .line 105
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_4

    move v2, v9

    .line 109
    :goto_0
    if-eqz v1, :cond_0

    .line 110
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v0, v2

    .line 118
    :goto_1
    if-eqz v0, :cond_3

    .line 122
    const-string v1, "Wooboo SDK 1.2"

    const-string v1, "Ad Image already exists"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_2
    return v0

    .line 113
    :catch_0
    move-exception v0

    move v2, v8

    .line 114
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v2

    .line 118
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    :goto_4
    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_2
    throw v0

    .line 124
    :cond_3
    const-string v1, "Wooboo SDK 1.2"

    const-string v1, "Ad Image does not exists"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 115
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_4

    .line 113
    :catch_1
    move-exception v1

    move v2, v8

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :cond_4
    move v2, v8

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 165
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 169
    :try_start_1
    const-string v1, "woobooad"

    .line 170
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "imgData"

    aput-object v4, v2, v3

    const-string v3, "imgName=?"

    .line 171
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 169
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 176
    :goto_0
    if-eqz v1, :cond_0

    .line 177
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move-object v0, v2

    .line 185
    :goto_1
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 181
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v2

    .line 185
    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 183
    :goto_3
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_2
    throw v0

    .line 182
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 180
    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_3
    move-object v2, v8

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 47
    .line 48
    const-string v0, "CREATE TABLE IF NOT EXISTS woobooad( ID integer primary key,imgName varchar,downloadTime date,imgData blob)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 58
    const-string v0, "DROP TABLE IF EXISTS woobooad"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS woobooad( ID integer primary key,imgName varchar,downloadTime date,imgData blob)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method
