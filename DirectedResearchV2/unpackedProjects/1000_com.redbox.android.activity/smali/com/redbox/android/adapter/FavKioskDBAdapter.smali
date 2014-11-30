.class public Lcom/redbox/android/adapter/FavKioskDBAdapter;
.super Lcom/redbox/android/adapter/DBAdapter;
.source "FavKioskDBAdapter.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "Addr"

.field public static final CITY:Ljava/lang/String; = "City"

.field public static final DIST:Ljava/lang/String; = "dist"

.field public static final DRV:Ljava/lang/String; = "Drv"

.field private static final FAV:Ljava/lang/String; = "fav"

.field public static final IND:Ljava/lang/String; = "ind"

.field public static final KIOSKID:Ljava/lang/String; = "Id"

.field public static final KIOSKNAME:Ljava/lang/String; = "Name"

.field public static final LATITUDE:Ljava/lang/String; = "Lat"

.field public static final LONGITUDE:Ljava/lang/String; = "Log"

.field private static final MACHINENAME:Ljava/lang/String; = "machineName"

.field public static final STATE:Ljava/lang/String; = "St"

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS kiosk_table (Id INTEGER PRIMARY KEY, Name TEXT, Lat TEXT, Log TEXT, Addr TEXT, City TEXT, St TEXT, Zip TEXT, Drv TEXT, dist TEXT, ind TEXT, fav INTEGER, machineName TEXT )"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS kiosk_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "kiosk_table"

.field public static final ZIP:Ljava/lang/String; = "Zip"

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/redbox/android/adapter/FavKioskDBAdapter;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private listener:Lcom/redbox/android/adapter/FavouriteKioskListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->createTable()V

    .line 49
    return-void
.end method

.method private closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->instance:Lcom/redbox/android/adapter/FavKioskDBAdapter;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/redbox/android/adapter/FavKioskDBAdapter;

    invoke-direct {v0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;-><init>()V

    sput-object v0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->instance:Lcom/redbox/android/adapter/FavKioskDBAdapter;

    .line 43
    :cond_0
    sget-object v0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->instance:Lcom/redbox/android/adapter/FavKioskDBAdapter;

    return-object v0
.end method

.method private populateFavKioskIds(Landroid/database/Cursor;)[I
    .locals 6
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 179
    const/4 v3, 0x0

    check-cast v3, [I

    .line 181
    .local v3, "kiosks":[I
    :try_start_0
    const-string v4, "Id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "kioskIdColumn":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "number of records in db : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v3, v4, [I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "i":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "k":I
    aput v1, v3, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 188
    if-nez v4, :cond_0

    .line 197
    .end local v1    # "k":I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_2
    return-object v3

    .line 196
    .end local v0    # "i":I
    .end local v2    # "kioskIdColumn":I
    :catchall_0
    move-exception v4

    .line 197
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_3
    throw v4
.end method

.method private populateKioskList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 30
    .param p1, "mCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v24, "kiosks":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Kiosk;>;"
    :try_start_0
    const-string v3, "Id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 209
    .local v22, "kioskIdColumn":I
    const-string v3, "Name"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 210
    .local v23, "kioskNameColumn":I
    const-string v3, "Lat"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 211
    .local v25, "latitudeColumn":I
    const-string v3, "Log"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 212
    .local v26, "longitudeColumn":I
    const-string v3, "Addr"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 213
    .local v16, "addressColumn":I
    const-string v3, "City"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 214
    .local v17, "cityColumn":I
    const-string v3, "St"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 215
    .local v28, "stateColumn":I
    const-string v3, "Zip"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 216
    .local v29, "zipColumn":I
    const-string v3, "Drv"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 217
    .local v19, "drvColumn":I
    const-string v3, "ind"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 218
    .local v21, "indColumn":I
    const-string v3, "dist"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 219
    .local v18, "distColumn":I
    const-string v3, "fav"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 220
    .local v20, "favColumn":I
    const-string v3, "machineName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 223
    .local v27, "machineColumn":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number of records in db : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    :cond_0
    new-instance v2, Lcom/redbox/android/model/Kiosk;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 234
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 235
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 237
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 238
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 226
    invoke-direct/range {v2 .. v15}, Lcom/redbox/android/model/Kiosk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    .local v2, "k":Lcom/redbox/android/model/Kiosk;
    move-object/from16 v0, v24

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 225
    if-nez v3, :cond_0

    .line 245
    .end local v2    # "k":Lcom/redbox/android/model/Kiosk;
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    return-object v24

    .line 244
    .end local v16    # "addressColumn":I
    .end local v17    # "cityColumn":I
    .end local v18    # "distColumn":I
    .end local v19    # "drvColumn":I
    .end local v20    # "favColumn":I
    .end local v21    # "indColumn":I
    .end local v22    # "kioskIdColumn":I
    .end local v23    # "kioskNameColumn":I
    .end local v25    # "latitudeColumn":I
    .end local v26    # "longitudeColumn":I
    .end local v27    # "machineColumn":I
    .end local v28    # "stateColumn":I
    .end local v29    # "zipColumn":I
    :catchall_0
    move-exception v3

    .line 245
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 246
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_3
    throw v3
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sput-object p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->context:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public createTable()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS kiosk_table (Id INTEGER PRIMARY KEY, Name TEXT, Lat TEXT, Log TEXT, Addr TEXT, City TEXT, St TEXT, Zip TEXT, Drv TEXT, dist TEXT, ind TEXT, fav INTEGER, machineName TEXT )"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQL exception\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    throw v1
.end method

.method public deleteKiosk(I)Z
    .locals 6
    .param p1, "kioskID"    # I

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, "flag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "kiosk_table"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Id= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted Item : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    invoke-interface {v2}, Lcom/redbox/android/adapter/FavouriteKioskListener;->FavModified()V

    .line 137
    :cond_0
    return v1

    .line 127
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 130
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SQL exception\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 131
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 132
    iget-object v3, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    throw v2
.end method

.method public getAllFavKiosks()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 141
    const-string v1, "recieved request to get all Fav Kiosks"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    const-string v2, "kiosk_table"

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 145
    const-string v5, "Name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Lat"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Log"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "Addr"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "City"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "St"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "Zip"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "Drv"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 146
    const-string v5, "ind"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "dist"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "fav"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "machineName"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 147
    const-string v9, " desc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 144
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 148
    .local v12, "mCursor":Landroid/database/Cursor;
    invoke-direct {p0, v12}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->populateKioskList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v11

    .line 149
    .local v11, "kiosks":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Kiosk;>;"
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 150
    const-string v1, "returning all Kiosks"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v11

    .line 157
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "kiosks":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Kiosk;>;"
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 153
    .local v10, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQL exception\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v13

    .line 157
    goto :goto_0

    .line 154
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 155
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    throw v1
.end method

.method public getAllKioskIds()[I
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 162
    :try_start_0
    const-string v1, "recieved request to get all Fav Kiosks"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    const-string v2, "kiosk_table"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Id"

    aput-object v5, v3, v4

    .line 165
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " desc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 164
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 166
    .local v12, "mCursor":Landroid/database/Cursor;
    invoke-direct {p0, v12}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->populateFavKioskIds(Landroid/database/Cursor;)[I

    move-result-object v11

    .line 167
    .local v11, "kiosks":[I
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    const-string v1, "returning all Kiosks"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v11

    .line 175
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "kiosks":[I
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 171
    .local v10, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SQL exception\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v1, v13

    .line 175
    goto :goto_0

    .line 172
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 173
    iget-object v2, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    throw v1
.end method

.method public insertKiosk(Lcom/redbox/android/model/Kiosk;)J
    .locals 7
    .param p1, "redbox"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    .line 86
    const-wide/16 v2, -0x1

    .line 88
    .local v2, "value":J
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    invoke-virtual {p0, p1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->prepareContentValue(Lcom/redbox/android/model/Kiosk;)Landroid/content/ContentValues;

    move-result-object v1

    .line 92
    .local v1, "initialValues":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "kiosk_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 93
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    .end local v1    # "initialValues":Landroid/content/ContentValues;
    :goto_0
    const-string v4, "Added Item"

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    invoke-interface {v4}, Lcom/redbox/android/adapter/FavouriteKioskListener;->FavModified()V

    .line 102
    :cond_0
    return-wide v2

    .line 94
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 95
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SQL exception\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object v4, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 97
    iget-object v5, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v5}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    throw v4
.end method

.method public prepareContentValue(Lcom/redbox/android/model/Kiosk;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "redbox"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "Id"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "Name"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "Lat"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "Log"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "Addr"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "City"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "St"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "Zip"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "Drv"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getDrv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "ind"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getInd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "dist"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "fav"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v1, "machineName"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getMachineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method public setDBupdateListener(Lcom/redbox/android/adapter/FavouriteKioskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redbox/android/adapter/FavouriteKioskListener;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/redbox/android/adapter/FavKioskDBAdapter;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    .line 255
    return-void
.end method
