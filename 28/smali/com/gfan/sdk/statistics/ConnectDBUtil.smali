.class public Lcom/gfan/sdk/statistics/ConnectDBUtil;
.super Ljava/lang/Object;
.source "ConnectDBUtil.java"


# static fields
.field private static connects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/gfan/sdk/statistics/ConnectDBUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->connects:Ljava/util/Vector;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/gfan/sdk/statistics/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/gfan/sdk/statistics/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;

    .line 26
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method

.method public static declared-synchronized getConnection(Landroid/content/Context;)Lcom/gfan/sdk/statistics/ConnectDBUtil;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v2, Lcom/gfan/sdk/statistics/ConnectDBUtil;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/gfan/sdk/statistics/ConnectDBUtil;->connects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    new-instance v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;

    invoke-direct {v0, p0}, Lcom/gfan/sdk/statistics/ConnectDBUtil;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "connect":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    sget-object v3, Lcom/gfan/sdk/statistics/ConnectDBUtil;->connects:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 38
    .end local v0    # "connect":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    .local v1, "connect":Ljava/lang/Object;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 30
    .end local v1    # "connect":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;

    .line 31
    .restart local v0    # "connect":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    iget-object v4, v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    iget-object v3, v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;

    invoke-virtual {v3}, Lcom/gfan/sdk/statistics/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 33
    .restart local v1    # "connect":Ljava/lang/Object;
    goto :goto_0

    .line 30
    .end local v0    # "connect":Lcom/gfan/sdk/statistics/ConnectDBUtil;
    .end local v1    # "connect":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public declared-synchronized AppClear(J)Z
    .locals 4
    .param p1, "appStartTime"    # J

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appbase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_start_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized AppInsert(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "clickname"    # Ljava/lang/String;
    .param p2, "appStartTime"    # J
    .param p4, "clickcount"    # I

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "clickname"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "clickcount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "app_start_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    iget-object v1, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appbase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    monitor-exit p0

    return-wide v1

    .line 106
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized AppSelect(J)Landroid/database/Cursor;
    .locals 8
    .param p1, "appStartTime"    # J

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appbase"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "clickname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "clickcount"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 80
    const-string v4, "app_start_time"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app_start_time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized AppSelectClickname(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .param p1, "clickname"    # Ljava/lang/String;
    .param p2, "appStartTime"    # J

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appbase"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "clickcount"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clickname =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and app_start_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 92
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized AppUpdate(Ljava/lang/String;JI)J
    .locals 5
    .param p1, "clickname"    # Ljava/lang/String;
    .param p2, "appStartTime"    # J
    .param p4, "count"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "clickcount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-object v1, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appbase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clickname = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    const-string v4, "\' and app_start_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v1, v1

    monitor-exit p0

    return-wide v1

    .line 126
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized BackupAppInfoClear(J)I
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_backup_base"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized BackupAppInfoInsert(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "starttime"    # J
    .param p4, "endtime"    # J
    .param p6, "timesum"    # J
    .param p8, "mac"    # Ljava/lang/String;
    .param p9, "cpidmac"    # Ljava/lang/String;
    .param p10, "opid"    # Ljava/lang/String;
    .param p11, "sdkVersion"    # Ljava/lang/String;
    .param p12, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v4, "version"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "starttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v4, "endtime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v4, "timesum"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v4, "mac"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "cpidmac"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "opid"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "sdk_version"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "sdk_type"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "app_backup_base"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 196
    .end local v3    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized BackupAppInfoSelect()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_backup_base"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized BackupStartInfoClear(J)I
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_backup_start"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized BackupStartInfoInsert(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "starttime"    # J
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "cpidmac"    # Ljava/lang/String;
    .param p6, "opid"    # Ljava/lang/String;
    .param p7, "sdkVersion"    # Ljava/lang/String;
    .param p8, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "starttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string v1, "mac"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "cpidmac"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "opid"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "sdk_type"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "app_backup_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    monitor-exit p0

    return-wide v1

    .line 257
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized BackupStartInfoSelect()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "app_backup_start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->mDatabaseHelper:Lcom/gfan/sdk/statistics/DatabaseHelper;

    invoke-virtual {v0}, Lcom/gfan/sdk/statistics/DatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ridInsert(Ljava/lang/String;)J
    .locals 10
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ridbase"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 229
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 228
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    const-wide/16 v0, -0x1

    .line 239
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 234
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 237
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v0, "rid"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ridbase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 228
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ridSelect()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gfan/sdk/statistics/ConnectDBUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ridbase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
