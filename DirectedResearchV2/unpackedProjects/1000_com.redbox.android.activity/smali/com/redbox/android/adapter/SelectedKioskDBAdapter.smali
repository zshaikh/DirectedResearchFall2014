.class public Lcom/redbox/android/adapter/SelectedKioskDBAdapter;
.super Lcom/redbox/android/adapter/DBAdapter;
.source "SelectedKioskDBAdapter.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "Addr"

.field public static final CITY:Ljava/lang/String; = "City"

.field public static final DIST:Ljava/lang/String; = "dist"

.field public static final DRV:Ljava/lang/String; = "Drv"

.field public static final FAV:Ljava/lang/String; = "fav"

.field public static final IND:Ljava/lang/String; = "ind"

.field public static final KIOSKID:Ljava/lang/String; = "Id"

.field public static final KIOSKNAME:Ljava/lang/String; = "Name"

.field public static final LATITUDE:Ljava/lang/String; = "Lat"

.field public static final LONGITUDE:Ljava/lang/String; = "Log"

.field public static final MACHINENAME:Ljava/lang/String; = "machineName"

.field public static final ROWID:Ljava/lang/String; = "_id"

.field public static final STATE:Ljava/lang/String; = "St"

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS selected_kiosk_table (_id INTEGER PRIMARY KEY, Id INTEGER , Name TEXT, Lat TEXT, Log TEXT, Addr TEXT, City TEXT, St TEXT, Zip TEXT, Drv TEXT, dist TEXT, ind TEXT, fav INTEGER, machineName TEXT )"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS selected_kiosk_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "selected_kiosk_table"

.field public static final ZIP:Ljava/lang/String; = "Zip"

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/redbox/android/adapter/SelectedKioskDBAdapter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->createTable()V

    .line 46
    return-void
.end method

.method private closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/adapter/SelectedKioskDBAdapter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->instance:Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    invoke-direct {v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;-><init>()V

    sput-object v0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->instance:Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    .line 40
    :cond_0
    sget-object v0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->instance:Lcom/redbox/android/adapter/SelectedKioskDBAdapter;

    return-object v0
.end method

.method private populateKioskList(Landroid/database/Cursor;)Lcom/redbox/android/model/Kiosk;
    .locals 30
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, "k":Lcom/redbox/android/model/Kiosk;
    :try_start_0
    const-string v3, "Id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 146
    .local v23, "kioskIdColumn":I
    const-string v3, "Name"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 147
    .local v24, "kioskNameColumn":I
    const-string v3, "Lat"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 148
    .local v25, "latitudeColumn":I
    const-string v3, "Log"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 149
    .local v26, "longitudeColumn":I
    const-string v3, "Addr"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 150
    .local v16, "addressColumn":I
    const-string v3, "City"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 151
    .local v17, "cityColumn":I
    const-string v3, "St"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 152
    .local v28, "stateColumn":I
    const-string v3, "Zip"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 153
    .local v29, "zipColumn":I
    const-string v3, "Drv"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 154
    .local v19, "drvColumn":I
    const-string v3, "ind"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 155
    .local v21, "indColumn":I
    const-string v3, "dist"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 156
    .local v18, "distColumn":I
    const-string v3, "fav"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 157
    .local v20, "favColumn":I
    const-string v3, "machineName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 160
    .local v27, "machineColumn":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number of records in db : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v22, v2

    .line 164
    .end local v2    # "k":Lcom/redbox/android/model/Kiosk;
    .local v22, "k":Lcom/redbox/android/model/Kiosk;
    :try_start_1
    new-instance v2, Lcom/redbox/android/model/Kiosk;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 168
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 171
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 172
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 173
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 175
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 176
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 164
    invoke-direct/range {v2 .. v15}, Lcom/redbox/android/model/Kiosk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    .end local v22    # "k":Lcom/redbox/android/model/Kiosk;
    .restart local v2    # "k":Lcom/redbox/android/model/Kiosk;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 163
    if-nez v3, :cond_0

    .line 182
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    return-object v2

    .line 181
    .end local v16    # "addressColumn":I
    .end local v17    # "cityColumn":I
    .end local v18    # "distColumn":I
    .end local v19    # "drvColumn":I
    .end local v20    # "favColumn":I
    .end local v21    # "indColumn":I
    .end local v23    # "kioskIdColumn":I
    .end local v24    # "kioskNameColumn":I
    .end local v25    # "latitudeColumn":I
    .end local v26    # "longitudeColumn":I
    .end local v27    # "machineColumn":I
    .end local v28    # "stateColumn":I
    .end local v29    # "zipColumn":I
    :catchall_0
    move-exception v3

    .line 182
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 183
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_3
    throw v3

    .line 181
    .end local v2    # "k":Lcom/redbox/android/model/Kiosk;
    .restart local v16    # "addressColumn":I
    .restart local v17    # "cityColumn":I
    .restart local v18    # "distColumn":I
    .restart local v19    # "drvColumn":I
    .restart local v20    # "favColumn":I
    .restart local v21    # "indColumn":I
    .restart local v22    # "k":Lcom/redbox/android/model/Kiosk;
    .restart local v23    # "kioskIdColumn":I
    .restart local v24    # "kioskNameColumn":I
    .restart local v25    # "latitudeColumn":I
    .restart local v26    # "longitudeColumn":I
    .restart local v27    # "machineColumn":I
    .restart local v28    # "stateColumn":I
    .restart local v29    # "zipColumn":I
    :catchall_1
    move-exception v3

    move-object/from16 v2, v22

    .end local v22    # "k":Lcom/redbox/android/model/Kiosk;
    .restart local v2    # "k":Lcom/redbox/android/model/Kiosk;
    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sput-object p0, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->context:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public createTable()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 66
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "CREATE TABLE IF NOT EXISTS selected_kiosk_table (_id INTEGER PRIMARY KEY, Id INTEGER , Name TEXT, Lat TEXT, Log TEXT, Addr TEXT, City TEXT, St TEXT, Zip TEXT, Drv TEXT, dist TEXT, ind TEXT, fav INTEGER, machineName TEXT )"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    return-void
.end method

.method public deleteSelectedKiosk()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "selected_kiosk_table"

    const-string v4, "_id= 1"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .line 111
    .local v2, "flag":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 118
    .end local v2    # "flag":Z
    :goto_1
    return v3

    :cond_0
    move v2, v6

    .line 110
    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const-string v3, "Exception while deleting kiosk"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move v3, v6

    .line 118
    goto :goto_1
.end method

.method public getSelectedKiosk()Lcom/redbox/android/model/Kiosk;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 122
    const-string v2, "recieved request to get all Fav Kiosks"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "selected_kiosk_table"

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "Id"

    aput-object v6, v3, v4

    .line 125
    const-string v4, "Name"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "Lat"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "Log"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "Addr"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "City"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "St"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v6, "Zip"

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v6, "Drv"

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 126
    const-string v6, "ind"

    aput-object v6, v3, v4

    const/16 v4, 0xa

    const-string v6, "dist"

    aput-object v6, v3, v4

    const/16 v4, 0xb

    const-string v6, "fav"

    aput-object v6, v3, v4

    const/16 v4, 0xc

    const-string v6, "machineName"

    aput-object v6, v3, v4

    const-string v4, "_id= 1"

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    move-object v7, v5

    move-object v9, v5

    .line 124
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 128
    .local v11, "mCursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const-string v1, "Seclected Kiosk Empty"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    .line 139
    :goto_0
    return-object v1

    .line 131
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 133
    const-string v1, "Seclected Kiosk DB courrepted , more than one exists"

    .line 132
    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v5

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, v11}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->populateKioskList(Landroid/database/Cursor;)Lcom/redbox/android/model/Kiosk;

    move-result-object v10

    .line 137
    .local v10, "kiosks":Lcom/redbox/android/model/Kiosk;
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    const-string v1, "returning all Kiosks"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v10

    .line 139
    goto :goto_0
.end method

.method public prepareContentValue(Lcom/redbox/android/model/Kiosk;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "redbox"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    const/4 v3, 0x1

    .line 88
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "Id"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "Name"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "Lat"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "Log"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "Addr"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "City"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "St"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "Zip"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "Drv"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getDrv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "ind"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getInd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "dist"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "fav"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "machineName"

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getMachineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public selectKiosk(Lcom/redbox/android/model/Kiosk;)J
    .locals 6
    .param p1, "redbox"    # Lcom/redbox/android/model/Kiosk;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->deleteSelectedKiosk()Z

    .line 79
    invoke-virtual {p0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, p1}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->prepareContentValue(Lcom/redbox/android/model/Kiosk;)Landroid/content/ContentValues;

    move-result-object v1

    .line 81
    .local v1, "initialValues":Landroid/content/ContentValues;
    const-string v4, "selected_kiosk_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 82
    .local v2, "value":J
    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/SelectedKioskDBAdapter;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Added Item : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    return-wide v2
.end method
