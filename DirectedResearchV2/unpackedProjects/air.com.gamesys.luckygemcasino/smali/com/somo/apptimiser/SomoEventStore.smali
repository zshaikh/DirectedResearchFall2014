.class Lcom/somo/apptimiser/SomoEventStore;
.super Ljava/lang/Object;
.source "SomoEventStore.java"

# interfaces
.implements Lcom/somo/apptimiser/SomoEventStorer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoEventStore$1;,
        Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;
    }
.end annotation


# static fields
.field public static final SELECTION_EVENT_BY_ID:Ljava/lang/String; = "_id=?"

.field private static final SOMO_DATABASE_VERSION:I = 0x7

.field private static final SQL_EVENT_COUNT:Ljava/lang/String; = "select count(*) from events"

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private eventCountStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEventsLimit:J

.field private mSqlite:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoEventStore;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->eventCountStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 30
    iget-wide v0, p2, Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;->maxSize:J

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mEventsLimit:J

    .line 31
    new-instance v0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;

    invoke-direct {v0, p1}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mSqlite:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;

    .line 32
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mSqlite:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method

.method static synthetic access$200()Lcom/somo/apptimiser/SomoLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/somo/apptimiser/SomoEventStore;->log:Lcom/somo/apptimiser/SomoLogger;

    return-object v0
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteOldestsEvents(I)I
    .locals 14
    .param p1, "number"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/somo/apptimiser/SomoEventStore;->getEvents(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 85
    .local v8, "deleted":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 87
    .local v11, "idIdx":I
    sget-object v0, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 89
    .local v13, "tsIdx":I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "firstTs":Ljava/lang/String;
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "eventId":Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "lastTs":Ljava/lang/String;
    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/somo/apptimiser/SomoEventStore;->deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 100
    sget-object v0, Lcom/somo/apptimiser/SomoEventStore;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v1, "Discarded %d events (%s - %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    .end local v9    # "eventId":Ljava/lang/String;
    .end local v10    # "firstTs":Ljava/lang/String;
    .end local v11    # "idIdx":I
    .end local v12    # "lastTs":Ljava/lang/String;
    .end local v13    # "tsIdx":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    return v8

    .line 102
    .restart local v10    # "firstTs":Ljava/lang/String;
    .restart local v11    # "idIdx":I
    .restart local v13    # "tsIdx":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 47
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/somo/apptimiser/SomoEventStore;->getContentValues(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getContentValues(Landroid/database/Cursor;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 53
    array-length v1, p1

    .line 54
    .local v1, "size":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 55
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    aget-object v3, p1, v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v2
.end method

.method static getSQLiteOpenHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    new-instance v0, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;

    invoke-direct {v0, p0}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addEvent(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "event"    # Landroid/content/ContentValues;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/somo/apptimiser/SomoEventStore;->putEvent(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mSqlite:Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoEventStore$EventStoreHelper;->close()V

    .line 38
    return-void
.end method

.method public deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEvent(J)Landroid/content/ContentValues;
    .locals 1
    .param p1, "eventId"    # J

    .prologue
    .line 136
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/somo/apptimiser/SomoEventStore;->getEvent(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "event":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 143
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/somo/apptimiser/SomoEventStore;->getEvents(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    new-instance v3, Landroid/content/ContentValues;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v2    # "event":Landroid/content/ContentValues;
    .local v3, "event":Landroid/content/ContentValues;
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v0

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 152
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 154
    aget-object v7, v0, v4

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 159
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "event":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v5    # "size":I
    .restart local v2    # "event":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v1}, Lcom/somo/apptimiser/SomoEventStore;->close(Landroid/database/Cursor;)V

    .line 161
    return-object v2

    .line 159
    :catchall_0
    move-exception v7

    :goto_1
    invoke-static {v1}, Lcom/somo/apptimiser/SomoEventStore;->close(Landroid/database/Cursor;)V

    throw v7

    .end local v2    # "event":Landroid/content/ContentValues;
    .restart local v3    # "event":Landroid/content/ContentValues;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "event":Landroid/content/ContentValues;
    .restart local v2    # "event":Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public getEventCount()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->eventCountStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select count(*) from events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->eventCountStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->eventCountStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEvents(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    const/4 v3, 0x0

    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/somo/apptimiser/SomoEventStore;->getEvents(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEvents(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "limit"    # I

    .prologue
    .line 248
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/somo/apptimiser/SomoEventStore;->getEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    const/4 v2, 0x0

    if-lez p7, :cond_0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getEvents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/somo/apptimiser/SomoEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/somo/apptimiser/SomoEvent;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v5, v5, v3}, Lcom/somo/apptimiser/SomoEventStore;->getEvents(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 168
    .local v2, "eventsCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 170
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eq v3, v4, :cond_0

    .line 171
    invoke-static {v2}, Lcom/somo/apptimiser/SomoEvent;->fromCursor(Landroid/database/Cursor;)Lcom/somo/apptimiser/SomoEvent;

    move-result-object v0

    .line 172
    .local v0, "event":Lcom/somo/apptimiser/SomoEvent;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 176
    .end local v0    # "event":Lcom/somo/apptimiser/SomoEvent;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    return-object v1
.end method

.method public getMaxCapacity()J
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/somo/apptimiser/SomoEventStore;->mEventsLimit:J

    return-wide v0
.end method

.method public putEvent(Landroid/content/ContentValues;)J
    .locals 10
    .param p1, "event"    # Landroid/content/ContentValues;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoEventStore;->getEventCount()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/somo/apptimiser/SomoEventStore;->mEventsLimit:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoEventStore;->getEventCount()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/somo/apptimiser/SomoEventStore;->mEventsLimit:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v0, v4, 0x1

    .line 123
    .local v0, "delete":I
    invoke-direct {p0, v0}, Lcom/somo/apptimiser/SomoEventStore;->deleteOldestsEvents(I)I

    move-result v1

    .line 124
    .local v1, "discarded":I
    sget-object v4, Lcom/somo/apptimiser/SomoEventStore;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v5, "Offline limit %d reached, discarded %d events"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/somo/apptimiser/SomoEventStore;->mEventsLimit:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/somo/apptimiser/SomoLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    .end local v0    # "delete":I
    .end local v1    # "discarded":I
    :cond_0
    iget-object v4, p0, Lcom/somo/apptimiser/SomoEventStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 128
    .local v2, "id":J
    return-wide v2
.end method

.method public removeEvent(J)V
    .locals 4
    .param p1, "Id"    # J

    .prologue
    .line 114
    const-string v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/somo/apptimiser/SomoEventStore;->deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method
