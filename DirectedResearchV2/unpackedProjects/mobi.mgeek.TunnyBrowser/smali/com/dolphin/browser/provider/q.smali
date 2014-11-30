.class public Lcom/dolphin/browser/provider/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static volatile b:Lcom/dolphin/browser/provider/q;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 250
    const-string v0, "browser.db"

    const/4 v1, 0x0

    const/16 v2, 0x3a

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 251
    iput-object p1, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    .line 252
    return-void
.end method

.method private A(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method private B(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 960
    return-void
.end method

.method private C(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 981
    return-void
.end method

.method private D(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 986
    return-void
.end method

.method private E(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 990
    return-void
.end method

.method private F(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method private G(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$array;->new_bookmarks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-static {p1, v0}, Lcom/dolphin/browser/provider/q;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public static a()Lcom/dolphin/browser/provider/q;
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lcom/dolphin/browser/provider/q;->b:Lcom/dolphin/browser/provider/q;

    if-nez v0, :cond_1

    .line 239
    const-class v1, Lcom/dolphin/browser/provider/q;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/provider/q;->b:Lcom/dolphin/browser/provider/q;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/dolphin/browser/provider/q;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/provider/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/provider/q;->b:Lcom/dolphin/browser/provider/q;

    .line 243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    sget-object v0, Lcom/dolphin/browser/provider/q;->b:Lcom/dolphin/browser/provider/q;

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1037
    invoke-static {p2}, Lcom/dolphin/browser/provider/p;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1038
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1043
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/provider/p;

    .line 1044
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    const-string v6, "title"

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v6, "url"

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v6, "date"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1048
    const-string v6, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1049
    const-string v6, "visits"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    const-string v6, "pin"

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const-string v6, "permanent"

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    const-string v6, "most_visited"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1054
    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->c()I

    move-result v5

    .line 1055
    if-eqz v5, :cond_2

    .line 1056
    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1057
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    invoke-static {v5}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    .line 1059
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1060
    const-string v5, "url_key"

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v0, "favicon"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1062
    const-string v0, "images"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1064
    :cond_2
    const-wide/16 v5, 0x1

    sub-long v0, v1, v5

    move-wide v1, v0

    .line 1065
    goto/16 :goto_1

    .line 1066
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    :try_start_1
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on add most visited"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1008
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1009
    array-length v3, p1

    .line 1010
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1011
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1012
    const-string v5, "title"

    aget-object v6, p1, v0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v5, "url"

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v5, "_order"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1015
    const-string v5, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1016
    const-string v5, "folder"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string v5, "is_folder"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string v5, "is_build_in"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    const-string v5, "bookmarks"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1020
    const-wide/16 v4, 0x1

    sub-long/2addr v1, v4

    .line 1010
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1028
    :goto_1
    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    :try_start_1
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on add bookmarks"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1075
    const-string v1, "DatabaseHelper"

    const-string v2, "add speeddial to db"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1080
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1081
    array-length v5, p2

    .line 1082
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1083
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    add-int/lit8 v7, v0, 0x1

    aget-object v7, p2, v7

    .line 1085
    const-string v8, "title"

    aget-object v9, p2, v0

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v8, "_order"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1088
    const-string v8, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1089
    const-string v8, "folder"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    const-string v8, "is_folder"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string v8, "is_build_in"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    const-string v8, "bookmarks"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1094
    add-int/lit8 v6, v0, 0x3

    aget-object v6, p2, v6

    const-string v8, "drawable"

    invoke-virtual {v3, v6, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1095
    if-eqz v6, :cond_0

    .line 1096
    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1097
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1098
    invoke-static {v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v9

    .line 1099
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1100
    const-string v6, "url_key"

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v6, "favicon"

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1102
    const-string v6, "images"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1105
    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v1, v6

    .line 1082
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1107
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1113
    :goto_1
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    :try_start_1
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on add bookmarks"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 476
    const-string v0, "DatabaseHelper"

    const-string v1, "clear database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v1, "sqlite_master"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "type"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 478
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v2, "android_metadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sqlite_sequence"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    const-string v3, "drop %s if exists %s;"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 491
    const-string v0, "CREATE TABLE IF NOT EXISTS recent_tabs(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 495
    const-string v0, "other_devices"

    const-string v1, "sync_time"

    const-string v2, "LONG"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    const-string v0, "searches"

    const-string v1, "search_engine_name"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "searches"

    const-string v1, "_title"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "searches"

    const-string v1, "_url"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 510
    const-string v1, "sqlite_master"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sql"

    aput-object v0, v2, v8

    const-string v3, "tbl_name=\'history\' and type=\'table\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "add_to_launcher_showed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const-string v0, "history"

    const-string v1, "add_to_launcher_showed"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v4}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 522
    const-string v0, "top_sites"

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 523
    const-string v0, "CREATE TABLE IF NOT EXISTS top_sites (_id INTEGER PRIMARY KEY AUTOINCREMENT,sid INTEGER,url TEXT NOT NULL, color TEXT NOT NULL, icon TEXT NOT NULL,  UNIQUE (sid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->r()V

    .line 525
    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 528
    const-string v0, "CREATE TABLE IF NOT EXISTS top_sites (_id INTEGER PRIMARY KEY AUTOINCREMENT,sid INTEGER,url TEXT NOT NULL, color TEXT NOT NULL, icon TEXT NOT NULL,  UNIQUE (sid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 529
    const-string v0, "CREATE TABLE IF NOT EXISTS site_color (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL, color INTEGER,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 533
    const-string v0, "most_visited"

    const-string v1, "permanent"

    const-string v2, "INTEGER NOT NULL DEFAULT -1"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "searches"

    const-string v1, "_category"

    const-string v2, "INTEGER "

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "addon_update_table"

    const-string v1, "_category"

    const-string v2, "INTEGER "

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private k(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 545
    const-string v0, "CREATE TABLE IF NOT EXISTS common_white_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL, value TEXT NOT NULL,  UNIQUE (key,value) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 549
    const-string v0, "bookmarks"

    const-string v1, "type"

    const-string v2, " INTEGER NOT NULL DEFAULT 0"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "CREATE TABLE IF NOT EXISTS addon_update_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,downloadurl TEXT NOT NULL, packagename TEXT NOT NULL, versioncode INTEGER, versionname TEXT NOT NULL, canupdate INTEGER DEFAULT 0, packagesize INTEGER DEFAULT 0, increment INTEGER DEFAULT 0,  UNIQUE (packagename) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 558
    const-string v0, "history"

    const-string v1, "type_visit"

    const-string v3, " INTEGER NOT NULL DEFAULT 0"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "other_devices"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 565
    const-string v0, "other_devices"

    const-string v1, "device_type"

    const-string v3, " INTEGER DEFAULT 0"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "other_devices"

    const-string v1, "deleted"

    const-string v3, " INTEGER DEFAULT 0"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "other_devices"

    const-string v1, "tab_count"

    const-string v3, " INTEGER DEFAULT 1"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 575
    const-string v0, "CREATE TABLE IF NOT EXISTS security_white_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    const-string v0, "CREATE TABLE IF NOT EXISTS security_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL, date INTEGER , UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 580
    const-string v0, "ALTER TABLE images ADD COLUMN thumbnail_url TEXT;"

    .line 581
    const-string v0, "ALTER TABLE images ADD COLUMN thumbnail_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    const-string v0, "other_devices"

    const-string v1, "device_type"

    const-string v2, " INTEGER DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "other_devices"

    const-string v1, "deleted"

    const-string v2, " INTEGER DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "other_devices"

    const-string v1, "tab_count"

    const-string v2, " INTEGER DEFAULT 1"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 593
    return-void
.end method

.method private q(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    .line 597
    const-string v0, "bookmarks"

    const-string v1, "url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "http://www.dolphin-browser.com/apps/aphone.htm/"

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hot_app_item"

    const-string v2, "array"

    iget-object v3, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 601
    if-gtz v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/ui/b/a;->a()Lcom/dolphin/browser/ui/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 609
    if-eqz v8, :cond_0

    .line 610
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const-string v3, "folder=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "is_folder DESC, _order DESC, title COLLATE UNICODE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 611
    const/4 v4, 0x0

    .line 612
    const/4 v3, -0x1

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 614
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 616
    :cond_2
    const/4 v4, 0x0

    .line 641
    :cond_3
    if-eqz v6, :cond_4

    .line 642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_4
    if-eqz v4, :cond_a

    .line 645
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 646
    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v4, "_order"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    const-string v1, "bookmarks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_5
    const/4 v0, 0x0

    .line 619
    :cond_6
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 620
    const-string v5, "deleted"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 621
    const-string v5, "url"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 622
    const-string v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 623
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 624
    if-nez v0, :cond_7

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 629
    :cond_7
    const/4 v4, 0x1

    move v3, v5

    .line 632
    :cond_8
    const/4 v5, 0x1

    if-eq v7, v5, :cond_6

    .line 635
    const/4 v5, 0x1

    if-ne v0, v5, :cond_9

    .line 636
    const-string v1, "_order"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 638
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 639
    goto :goto_1

    .line 650
    :cond_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 651
    const-string v3, "title"

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v3, "url"

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v3, "_order"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 654
    const-string v3, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    const-string v1, "folder"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v1, "is_folder"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v1, "is_build_in"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 660
    const/4 v1, 0x3

    aget-object v1, v8, v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 661
    if-eqz v1, :cond_0

    .line 662
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 664
    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 665
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 666
    const-string v0, "url_key"

    const/4 v3, 0x1

    aget-object v3, v8, v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "favicon"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 668
    const-string v0, "images"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private r(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 675
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 676
    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v1, "bookmarks"

    const-string v2, "url=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "http://www.dolphin-browser.com/apps/aphone.htm"

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method private s(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 684
    const-string v0, "CREATE TABLE IF NOT EXISTS other_devices (_id INTEGER PRIMARY KEY AUTOINCREMENT,sync_time LONG, deviceid TEXT NOT NULL, sync_id TEXT, device_type INTEGER DEFAULT 0, deleted INTEGER DEFAULT 0, tab_count INTEGER DEFAULT 1, name TEXT NOT NULL, UNIQUE (deviceid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    const-string v0, "CREATE TABLE IF NOT EXISTS tabs (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,deviceid TEXT NOT NULL, name TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    const-string v0, "history"

    const-string v1, "deleted"

    const-string v2, "INTEGER DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "history"

    const-string v1, "sync_id"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "history"

    const-string v1, "sync_status"

    const-string v2, "INTEGER"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "history"

    const-string v1, "last_visit"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "history"

    const-string v1, "total_visit"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 712
    const-string v0, "UPDATE %s SET %s=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "history"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "total_visit"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "visits"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 721
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    :try_start_1
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on upgradeFromVersion42"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private t(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 725
    const-string v0, "http://chomp.com?utm_campaign=partner&utm_source=dolphin&utm_medium=browser_bookmark"

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM bookmarks WHERE url=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 728
    :try_start_0
    const-string v0, "CREATE TABLE most_visited(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,pin INTEGER NOT NULL DEFAULT -1,permanent INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 735
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isExpandedSpeedDialEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "INSERT INTO bookmarks(_id, title, folder, is_folder) VALUES(%d, \'%s\', 0, 1)"

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dolphin/browser/core/R$string;->speed_dial_folder:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 746
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 747
    const-string v1, "bookmarks"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "created"

    aput-object v3, v2, v0

    const-string v3, "folder=3 and deleted=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_order desc"

    sget v0, Lcom/dolphin/browser/provider/w;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 754
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 756
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 758
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 760
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 761
    const-string v8, "title"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v8, "url"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v8, "date"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v5, "created"

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v5, "visits"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v5, "pin"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v5, "most_visited"

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 769
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 770
    const-string v7, "title"

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v3, "url"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v3, "_order"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 773
    const-string v3, "created"

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v3, "folder"

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v3, "is_folder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v3, "is_build_in"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v3, "bookmarks"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    .line 780
    goto/16 :goto_1

    .line 729
    :catch_0
    move-exception v0

    .line 731
    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 781
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 785
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 788
    :cond_1
    :goto_2
    return-void

    .line 782
    :catch_1
    move-exception v0

    .line 783
    :try_start_3
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on upgradeFromVersion41"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 785
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private u(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 792
    :try_start_0
    const-string v0, "CREATE TABLE saved_pages(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,date_created INTEGER,readed INTEGER DEFAULT 0,favicon BLOB,thumbnail BLOB,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 795
    const-string v1, "DatabaseHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private v(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 800
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN is_build_in INTEGER DEFAULT 0;"

    .line 801
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN is_build_in INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method private w(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 805
    const-string v0, "bookmarkSyncStatus"

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 806
    const-string v0, "CREATE TABLE bookmarkSyncStatus (kind INTEGER PRIMARY KEY, data1 INTEGER, data2 INTEGER, data3 TEXT, data4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 807
    const-string v0, "bookmarks"

    const-string v1, "sync_id"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v0, "bookmarks"

    const-string v1, "parent_sync_id"

    const-string v2, "TEXT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "bookmarks"

    const-string v1, "sync_status"

    const-string v2, "INTEGER"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dolphin/browser/util/aq;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private x(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 813
    const-string v0, "SELECT MAX(_id) AS max_id from bookmarks;"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 816
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE bookmarks SET _id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " WHERE _id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE bookmarks SET folder="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    const-string v0, "INSERT INTO bookmarks (_id, title, folder, is_folder) VALUES(3, \'Speed Dial\', 0, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method private y(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 824
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isExpandedSpeedDialEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$array;->speed_dials:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/provider/q;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/ui/b/a;->a()Lcom/dolphin/browser/ui/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$array;->speed_dials:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/provider/q;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/provider/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$array;->speed_dials_for_small_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/provider/q;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 839
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 840
    const-string v1, "bookmarks"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_folder=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_order desc"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 843
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 844
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 846
    const-string v4, "_order"

    add-int/lit8 v1, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v0, "bookmarks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    .line 849
    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 856
    :goto_1
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    :try_start_1
    const-string v1, "DatabaseHelper"

    const-string v2, "Error on upgradeFromVersion36"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 866
    const-string v0, "bookmarks"

    const-string v1, "bookmark = 0"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    const-string v0, "CREATE TABLE temp_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,date INTEGER,created INTEGER,_order INTEGER,is_folder INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0);"

    .line 878
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v0, "INSERT INTO temp_table SELECT _id, title, NULL AS url, parent AS folder, date, created, 0 AS _order, 1 AS is_folder, 0 AS deleted FROM folders"

    .line 894
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    const-string v0, "INSERT INTO temp_table (title, url, folder, date, created, _order, is_folder, deleted) SELECT title, url, folder, date, created, _order, 0 AS is_folder, 0 AS deleted FROM bookmarks"

    .line 902
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    .line 906
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    const-string v0, "ALTER TABLE temp_table RENAME TO bookmarks"

    .line 910
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    const-string v0, "DROP TABLE IF EXISTS folders"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 915
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 921
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-string v0, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 927
    const-string v0, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 256
    const-string v0, "DatabaseHelper onCreate"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 257
    const-string v1, "CREATE TABLE IF NOT EXISTS addon_update_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,downloadurl TEXT NOT NULL, packagename TEXT NOT NULL, versioncode INTEGER, versionname TEXT NOT NULL, canupdate INTEGER DEFAULT 0, packagesize INTEGER DEFAULT 0, increment INTEGER DEFAULT 0,  UNIQUE (packagename) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v1, "CREATE TABLE IF NOT EXISTS site_color (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL, color INTEGER,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v1, "CREATE TABLE IF NOT EXISTS top_sites (_id INTEGER PRIMARY KEY AUTOINCREMENT,sid INTEGER,url TEXT NOT NULL, color TEXT NOT NULL, icon TEXT NOT NULL,  UNIQUE (sid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v1, "CREATE TABLE IF NOT EXISTS common_white_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT NOT NULL, value TEXT NOT NULL,  UNIQUE (key,value) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v1, "CREATE TABLE IF NOT EXISTS security_white_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v1, "CREATE TABLE IF NOT EXISTS security_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT NOT NULL, date INTEGER , UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v1, "CREATE TABLE IF NOT EXISTS other_devices (_id INTEGER PRIMARY KEY AUTOINCREMENT,sync_time LONG, deviceid TEXT NOT NULL, sync_id TEXT, device_type INTEGER DEFAULT 0, deleted INTEGER DEFAULT 0, tab_count INTEGER DEFAULT 1, name TEXT NOT NULL, UNIQUE (deviceid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v1, "CREATE TABLE IF NOT EXISTS tabs (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,deviceid TEXT NOT NULL, name TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string v1, "CREATE TABLE bookmarks(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,date INTEGER,created INTEGER,_order INTEGER,is_folder INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0, sync_id TEXT, parent_sync_id TEXT, sync_status INTEGER, type INTEGER NOT NULL DEFAULT 0, is_build_in INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string v1, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0, deleted INTEGER DEFAULT 0,sync_id TEXT, sync_status INTEGER, last_visit INTEGER NOT NULL DEFAULT 0, total_visit INTEGER NOT NULL DEFAULT 0, type_visit INTEGER NOT NULL DEFAULT 0, add_to_launcher_showed INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const-string v1, "CREATE TABLE most_visited(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,pin INTEGER NOT NULL DEFAULT -1,permanent INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string v1, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB, thumbnail_url TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v1, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string v1, "CREATE TABLE searches(_id INTEGER PRIMARY KEY AUTOINCREMENT,search TEXT,date LONG,_category INTEGER, search_engine_name TEXT, _title TEXT, _url TEXT  );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v1, "CREATE TABLE bookmarkSyncStatus (kind INTEGER PRIMARY KEY, data1 INTEGER, data2 INTEGER, data3 TEXT, data4 TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string v1, "CREATE TABLE saved_pages(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,date_created INTEGER,readed INTEGER DEFAULT 0,favicon BLOB,thumbnail BLOB,_data TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "INSERT INTO bookmarks(_id, title, folder, is_folder) VALUES(%d, \'%s\', 0, 1)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Speed Dial"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    const-string v1, "CREATE TABLE IF NOT EXISTS recent_tabs(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,date INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 342
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/q;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 348
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .prologue
    const/16 v6, 0x23

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    const-string v2, "DatabaseHelper"

    const-string v3, "onUpgrade from %d to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    const/16 v2, 0x1c

    if-ge p2, v2, :cond_20

    move v2, v0

    .line 359
    :goto_0
    const/16 v3, 0x1d

    if-ge p2, v3, :cond_0

    .line 360
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->F(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 363
    :cond_0
    const/16 v3, 0x1e

    if-ge p2, v3, :cond_1

    .line 364
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->E(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 367
    :cond_1
    const/16 v3, 0x1f

    if-ge p2, v3, :cond_2

    .line 368
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->D(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 371
    :cond_2
    const/16 v3, 0x20

    if-ge p2, v3, :cond_3

    .line 372
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->C(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 375
    :cond_3
    const/16 v3, 0x21

    if-ge p2, v3, :cond_4

    .line 376
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->B(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 378
    :cond_4
    const/16 v3, 0x22

    if-ge p2, v3, :cond_5

    .line 379
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->A(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    :cond_5
    if-ge p2, v6, :cond_6

    .line 382
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->z(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 384
    :cond_6
    if-gt p2, v6, :cond_7

    .line 385
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/provider/q;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 387
    :cond_7
    const/16 v3, 0x24

    if-gt p2, v3, :cond_8

    .line 388
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/provider/q;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    :cond_8
    const/16 v3, 0x25

    if-gt p2, v3, :cond_1f

    .line 392
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->x(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 395
    :goto_1
    const/16 v1, 0x26

    if-gt p2, v1, :cond_9

    .line 396
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->w(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 398
    :cond_9
    const/16 v1, 0x27

    if-gt p2, v1, :cond_a

    .line 399
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    :cond_a
    const/16 v1, 0x28

    if-gt p2, v1, :cond_b

    .line 402
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->u(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 404
    :cond_b
    const/16 v1, 0x29

    if-gt p2, v1, :cond_c

    .line 405
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->t(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 407
    :cond_c
    const/16 v1, 0x2a

    if-gt p2, v1, :cond_d

    .line 408
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 410
    :cond_d
    const/16 v1, 0x2b

    if-gt p2, v1, :cond_e

    .line 411
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    :cond_e
    const/16 v1, 0x2c

    if-gt p2, v1, :cond_f

    .line 415
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 417
    :cond_f
    const/16 v1, 0x2d

    if-gt p2, v1, :cond_10

    .line 418
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->p(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    :cond_10
    const/16 v1, 0x2e

    if-gt p2, v1, :cond_11

    .line 421
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 423
    :cond_11
    const/16 v1, 0x2f

    if-gt p2, v1, :cond_12

    .line 424
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 426
    :cond_12
    const/16 v1, 0x30

    if-gt p2, v1, :cond_13

    .line 427
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 429
    :cond_13
    const/16 v1, 0x31

    if-gt p2, v1, :cond_14

    .line 430
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    :cond_14
    const/16 v1, 0x32

    if-gt p2, v1, :cond_15

    .line 433
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    :cond_15
    const/16 v1, 0x33

    if-gt p2, v1, :cond_16

    .line 436
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 438
    :cond_16
    const/16 v1, 0x34

    if-gt p2, v1, :cond_17

    .line 439
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 441
    :cond_17
    const/16 v1, 0x35

    if-gt p2, v1, :cond_18

    .line 442
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    :cond_18
    const/16 v1, 0x36

    if-gt p2, v1, :cond_19

    .line 446
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 449
    :cond_19
    const/16 v1, 0x37

    if-gt p2, v1, :cond_1a

    .line 450
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 453
    :cond_1a
    const/16 v1, 0x38

    if-gt p2, v1, :cond_1b

    .line 454
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 457
    :cond_1b
    const/16 v1, 0x39

    if-gt p2, v1, :cond_1e

    .line 458
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 467
    :goto_2
    if-eqz v2, :cond_1c

    .line 468
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->G(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 470
    :cond_1c
    if-eqz v0, :cond_1d

    .line 471
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->y(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 473
    :cond_1d
    return-void

    .line 461
    :cond_1e
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/q;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/provider/q;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :cond_1f
    move v0, v1

    goto/16 :goto_1

    :cond_20
    move v2, v1

    goto/16 :goto_0
.end method
