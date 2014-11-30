.class public Lcom/redbox/android/adapter/MovieService;
.super Lcom/redbox/android/adapter/DBAdapter;
.source "MovieService.java"


# static fields
.field public static final CST_2:Ljava/lang/String; = "Cst"

.field public static final DEF_11:Ljava/lang/String; = "Def"

.field public static final FORMAT_ID_9:Ljava/lang/String; = "FormatID"

.field public static final GENRE_IDS_8:Ljava/lang/String; = "GenreIDs"

.field public static final ID_INT_3:Ljava/lang/String; = "ID"

.field public static final IMG_6:Ljava/lang/String; = "Img"

.field public static final IS_GAME_13:Ljava/lang/String; = "isGame"

.field public static final LIMITED_12:Ljava/lang/String; = "Limited"

.field public static final NAME_4:Ljava/lang/String; = "Name"

.field public static final PRODUCT_TYPE_10:Ljava/lang/String; = "ProductType"

.field public static final RELEASE_7:Ljava/lang/String; = "Release"

.field public static final SORT_NAME_5:Ljava/lang/String; = "SortName"

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS movie_table ( Cst TEXT, ID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, SortName TEXT, Img TEXT, Release TEXT, GenreIDs TEXT, FormatID TEXT, ProductType TEXT, Def TEXT, Limited TEXT, isGame INTEGER );"

.field private static final TABLE_DROP:Ljava/lang/String; = "DROP TABLE IF EXISTS movie_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "movie_table"

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/redbox/android/adapter/MovieService;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/redbox/android/adapter/MovieService;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/redbox/android/adapter/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/redbox/android/adapter/MovieService;->createTable()V

    .line 67
    return-void
.end method

.method private closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 376
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/adapter/MovieService;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/redbox/android/adapter/MovieService;->instance:Lcom/redbox/android/adapter/MovieService;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/redbox/android/adapter/MovieService;

    invoke-direct {v0}, Lcom/redbox/android/adapter/MovieService;-><init>()V

    sput-object v0, Lcom/redbox/android/adapter/MovieService;->instance:Lcom/redbox/android/adapter/MovieService;

    .line 59
    :cond_0
    sget-object v0, Lcom/redbox/android/adapter/MovieService;->instance:Lcom/redbox/android/adapter/MovieService;

    return-object v0
.end method

.method private populatePropertyModels(Landroid/database/Cursor;)Ljava/util/List;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v10, "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    :try_start_0
    const-string v15, "Cst"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 330
    .local v2, "cstColumn":I
    const-string v15, "ID"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 331
    .local v6, "idColumn":I
    const-string v15, "Name"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 332
    .local v11, "nameColumn":I
    const-string v15, "SortName"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 333
    .local v14, "sortNameColumn":I
    const-string v15, "Img"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 334
    .local v7, "imgColumn":I
    const-string v15, "Release"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 335
    .local v13, "releaseColumn":I
    const-string v15, "GenreIDs"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 336
    .local v5, "genreIdsColumn":I
    const-string v15, "FormatID"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 337
    .local v4, "formatIdColumn":I
    const-string v15, "ProductType"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 338
    .local v12, "productTypeColumn":I
    const-string v15, "Def"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 339
    .local v3, "defColumn":I
    const-string v15, "Limited"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 342
    .local v8, "limitedColumn":I
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "number of records in db : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 342
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 346
    :cond_0
    new-instance v9, Lcom/redbox/android/model/Movie;

    invoke-direct {v9}, Lcom/redbox/android/model/Movie;-><init>()V

    .line 347
    .local v9, "m":Lcom/redbox/android/model/Movie;
    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setCst(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setId(I)V

    .line 349
    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setName(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setSortName(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setImg(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setRelease(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setGenreIds(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setFormatId(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setProductType(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setDef(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/redbox/android/model/Movie;->setLimited(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v9}, Lcom/redbox/android/model/Movie;->isGame()Z

    move-result v15

    if-nez v15, :cond_1

    .line 359
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 345
    if-nez v15, :cond_0

    .line 365
    .end local v9    # "m":Lcom/redbox/android/model/Movie;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_3

    .line 366
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_3
    return-object v10

    .line 364
    .end local v2    # "cstColumn":I
    .end local v3    # "defColumn":I
    .end local v4    # "formatIdColumn":I
    .end local v5    # "genreIdsColumn":I
    .end local v6    # "idColumn":I
    .end local v7    # "imgColumn":I
    .end local v8    # "limitedColumn":I
    .end local v11    # "nameColumn":I
    .end local v12    # "productTypeColumn":I
    .end local v13    # "releaseColumn":I
    .end local v14    # "sortNameColumn":I
    :catchall_0
    move-exception v15

    .line 365
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-nez v16, :cond_4

    .line 366
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_4
    throw v15
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sput-object p0, Lcom/redbox/android/adapter/MovieService;->context:Landroid/content/Context;

    .line 71
    return-void
.end method


# virtual methods
.method public createTable()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/MovieService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    iget-object v1, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS movie_table ( Cst TEXT, ID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, SortName TEXT, Img TEXT, Release TEXT, GenreIDs TEXT, FormatID TEXT, ProductType TEXT, Def TEXT, Limited TEXT, isGame INTEGER );"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
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

    .line 81
    iget-object v1, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 80
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    .line 81
    iget-object v2, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    throw v1
.end method

.method public encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMoviesByID(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p2, "genre"    # Ljava/lang/String;
    .param p3, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 257
    const-string p2, "0"

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/adapter/MovieService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 260
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v16, ""

    .line 261
    .local v16, "idCond":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 262
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, "ids":Ljava/lang/String;
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v15, v3, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 269
    .end local v15    # "i":I
    .end local v17    # "ids":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    .line 270
    .local v18, "mCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/MovieService;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, "condition":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 275
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 276
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 277
    const-string v7, "Limited"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isGame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 278
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    .line 279
    const/4 v11, 0x0

    .line 274
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 299
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->populatePropertyModels(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v12

    .line 300
    .local v12, "allSetting":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No of movies by ID :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, v12

    .line 308
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "allSetting":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    .end local v13    # "condition":Ljava/lang/String;
    .end local v16    # "idCond":Ljava/lang/String;
    .end local v18    # "mCursor":Landroid/database/Cursor;
    :goto_2
    return-object v3

    .line 264
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15    # "i":I
    .restart local v16    # "idCond":Ljava/lang/String;
    .restart local v17    # "ids":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 263
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 280
    .end local v15    # "i":I
    .end local v17    # "ids":Ljava/lang/String;
    .restart local v13    # "condition":Ljava/lang/String;
    .restart local v18    # "mCursor":Landroid/database/Cursor;
    :cond_3
    const-string v3, "1021"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 284
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 285
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 286
    const-string v7, "Limited"

    aput-object v7, v5, v6

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isGame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 11111"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 288
    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    const/4 v11, 0x0

    .line 283
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto/16 :goto_1

    .line 290
    :cond_4
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 291
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 292
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 293
    const-string v7, "Limited"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GenreIDs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 294
    const-string v7, " like \'%,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    .line 295
    const/4 v11, 0x0

    .line 290
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    goto/16 :goto_1

    .line 303
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "condition":Ljava/lang/String;
    .end local v16    # "idCond":Ljava/lang/String;
    .end local v18    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 304
    .local v14, "e":Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQL exception\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 308
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 305
    .end local v14    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 307
    throw v3
.end method

.method public getMoviesFromTo(IILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "from"    # I
    .param p2, "limit"    # I
    .param p3, "genre"    # Ljava/lang/String;
    .param p4, "searchText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    const-string p3, "0"

    .line 155
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/adapter/MovieService;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 156
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, ""

    .line 157
    .local v11, "limitStr":Ljava/lang/String;
    if-lez p2, :cond_1

    .line 158
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 161
    :cond_1
    const/4 v15, 0x0

    .line 162
    .local v15, "mCursor":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "minus 250= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/redbox/android/utils/Configuration;->TODAYS_DATE_MINUS_250_DAYS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Release >= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v4, Lcom/redbox/android/utils/Configuration;->TODAYS_DATE_MINUS_250_DAYS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string v4, "Name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/MovieService;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "condition":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 172
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 173
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 174
    const-string v7, "Limited"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isGame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    .line 171
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 196
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->populatePropertyModels(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v12

    .line 197
    .local v12, "allSetting":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    const-string v3, "returning movies"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v3, v12

    .line 205
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "limitStr":Ljava/lang/String;
    .end local v12    # "allSetting":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    .end local v13    # "condition":Ljava/lang/String;
    .end local v15    # "mCursor":Landroid/database/Cursor;
    :goto_1
    return-object v3

    .line 177
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "limitStr":Ljava/lang/String;
    .restart local v13    # "condition":Ljava/lang/String;
    .restart local v15    # "mCursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string v3, "1021"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 181
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 182
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 183
    const-string v7, "Limited"

    aput-object v7, v5, v6

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isGame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 11111"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 185
    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    .line 180
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_0

    .line 188
    :cond_3
    const/4 v3, 0x1

    const-string v4, "movie_table"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Cst"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 189
    const-string v7, "ID"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "Name"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "SortName"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Img"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 190
    const-string v7, "GenreIDs"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "FormatID"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "ProductType"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "Def"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 191
    const-string v7, "Limited"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GenreIDs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 192
    const-string v7, " like \'%,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Release desc ,SortName asc"

    .line 188
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    goto/16 :goto_0

    .line 200
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "limitStr":Ljava/lang/String;
    .end local v13    # "condition":Ljava/lang/String;
    .end local v15    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 201
    .local v14, "e":Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQL exception\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 202
    .end local v14    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    throw v3
.end method

.method public insertMovie(Lcom/redbox/android/model/Movie;)J
    .locals 7
    .param p1, "movie"    # Lcom/redbox/android/model/Movie;

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/redbox/android/adapter/MovieService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    invoke-virtual {p0, p1}, Lcom/redbox/android/adapter/MovieService;->prepareContentValue(Lcom/redbox/android/model/Movie;)Landroid/content/ContentValues;

    move-result-object v1

    .line 127
    .local v1, "initialValues":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "movie_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 128
    .local v2, "value":J
    iget-object v4, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v4, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    move-wide v4, v2

    .line 135
    .end local v1    # "initialValues":Landroid/content/ContentValues;
    .end local v2    # "value":J
    :goto_0
    return-wide v4

    .line 130
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 131
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

    .line 133
    iget-object v4, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v4}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 132
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 133
    iget-object v5, p0, Lcom/redbox/android/adapter/MovieService;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v5}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    const-string v0, "CREATE TABLE IF NOT EXISTS movie_table ( Cst TEXT, ID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, SortName TEXT, Img TEXT, Release TEXT, GenreIDs TEXT, FormatID TEXT, ProductType TEXT, Def TEXT, Limited TEXT, isGame INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "DataBase onCreate methode"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upgrading database from version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v0, "DROP TABLE IF EXISTS movie_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/redbox/android/adapter/MovieService;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void
.end method

.method public prepareContentValue(Lcom/redbox/android/model/Movie;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "movie"    # Lcom/redbox/android/model/Movie;

    .prologue
    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "Cst"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getCst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "ID"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "Name"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "SortName"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "Img"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "Release"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "GenreIDs"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getGenreIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "FormatID"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getFormatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "ProductType"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getProductType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "Def"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getDef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "Limited"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getLimited()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "isGame"

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->isGame()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    return-object v0

    .line 117
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveAllMoviesTitles(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Movie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v13, "movies":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Movie;>;"
    :try_start_0
    const-string v18, "Starting to store in db"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    new-instance v4, Lorg/json/JSONArray;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 390
    .local v4, "allTitles":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 392
    .local v12, "movieCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/adapter/MovieService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 393
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 395
    invoke-static {}, Lcom/redbox/android/utils/Utils;->todaysDateMinus250Days()Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, "todayMinus250":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Today - 250: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v12, :cond_0

    .line 425
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 426
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/redbox/android/adapter/MovieService;->closeDataBase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 429
    sget-object v18, Lcom/redbox/android/adapter/MovieService;->context:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/redbox/android/adapter/LocalDataStore;->setCacheExists()V

    .line 431
    const-string v18, "Saved in db"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    .end local v4    # "allTitles":Lorg/json/JSONArray;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "i":I
    .end local v12    # "movieCount":I
    .end local v15    # "todayMinus250":Ljava/lang/String;
    :goto_1
    return-object v13

    .line 402
    .restart local v4    # "allTitles":Lorg/json/JSONArray;
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "i":I
    .restart local v12    # "movieCount":I
    .restart local v15    # "todayMinus250":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    .line 404
    .local v10, "movie":Lcom/redbox/android/model/Movie;
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 405
    .local v14, "obj":Lorg/json/JSONObject;
    new-instance v11, Lcom/redbox/android/model/Movie;

    invoke-direct {v11, v14}, Lcom/redbox/android/model/Movie;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    .end local v10    # "movie":Lcom/redbox/android/model/Movie;
    .local v11, "movie":Lcom/redbox/android/model/Movie;
    :try_start_2
    invoke-virtual {v11}, Lcom/redbox/android/model/Movie;->getRelease()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 407
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 408
    invoke-virtual {v11}, Lcom/redbox/android/model/Movie;->isGame()Z

    move-result v18

    if-nez v18, :cond_2

    .line 409
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v11

    .line 414
    .end local v11    # "movie":Lcom/redbox/android/model/Movie;
    .end local v14    # "obj":Lorg/json/JSONObject;
    .restart local v10    # "movie":Lcom/redbox/android/model/Movie;
    :goto_2
    if-eqz v10, :cond_1

    .line 415
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/MovieService;->prepareContentValue(Lcom/redbox/android/model/Movie;)Landroid/content/ContentValues;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .line 417
    .local v9, "initialValues":Landroid/content/ContentValues;
    :try_start_4
    const-string v18, "movie_table"

    const/16 v19, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v16

    .line 401
    .end local v9    # "initialValues":Landroid/content/ContentValues;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 412
    .local v6, "e":Lorg/json/JSONException;
    :goto_4
    :try_start_5
    const-string v18, "Ignoring movie"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 432
    .end local v4    # "allTitles":Lorg/json/JSONArray;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v8    # "i":I
    .end local v10    # "movie":Lcom/redbox/android/model/Movie;
    .end local v12    # "movieCount":I
    .end local v15    # "todayMinus250":Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    .line 433
    .local v7, "e1":Lorg/json/JSONException;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Problem with JSON format. : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    .end local v7    # "e1":Lorg/json/JSONException;
    .restart local v4    # "allTitles":Lorg/json/JSONArray;
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "i":I
    .restart local v9    # "initialValues":Landroid/content/ContentValues;
    .restart local v10    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v12    # "movieCount":I
    .restart local v15    # "todayMinus250":Ljava/lang/String;
    :catch_2
    move-exception v18

    move-object/from16 v7, v18

    .line 420
    .local v7, "e1":Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_6
    const-string v18, "Ignoring movie , alread present in database"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 411
    .end local v7    # "e1":Landroid/database/sqlite/SQLiteConstraintException;
    .end local v9    # "initialValues":Landroid/content/ContentValues;
    .end local v10    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v11    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v18

    move-object/from16 v6, v18

    move-object v10, v11

    .end local v11    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v10    # "movie":Lcom/redbox/android/model/Movie;
    goto :goto_4

    .end local v10    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v11    # "movie":Lcom/redbox/android/model/Movie;
    :cond_2
    move-object v10, v11

    .end local v11    # "movie":Lcom/redbox/android/model/Movie;
    .restart local v10    # "movie":Lcom/redbox/android/model/Movie;
    goto :goto_2
.end method
