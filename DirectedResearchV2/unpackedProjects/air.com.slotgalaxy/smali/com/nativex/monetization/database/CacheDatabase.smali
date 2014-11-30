.class public Lcom/nativex/monetization/database/CacheDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheDatabase.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "nativex_cache.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "nativex_cache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const-string v0, "Create table file_status(status_id INTEGER PRIMARY KEY AUTOINCREMENT,status TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "Create table cache_files(cache_id INTEGER PRIMARY KEY AUTOINCREMENT,OfferId INTEGER NOT NULL,ExpirationDateUTC INTEGER NOT NULL,RelativeUrl TEXT NOT NULL,MD5 TEXT NOT NULL,CDN TEXT NOT NULL,Ext TEXT NOT NULL,FileSize INTEGER NOT NULL,FileStatus INTEGER NOT NULL,FOREIGN KEY (FileStatus) REFERENCES file_status(status_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "Create table cache_utils(cache_utils_id INTEGER PRIMARY KEY AUTOINCREMENT,cache_util_value_int INTEGER,cache_util TEXT NOT NULL UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "Create table download_map(download_map_id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL UNIQUE,cachefile TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "Create table downloaded_files(downloaded_files_id INTEGER PRIMARY KEY AUTOINCREMENT,downloaded_file_name TEXT NOT NULL UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "Create table cache_error(error_id INTEGER PRIMARY KEY AUTOINCREMENT,error_code INTEGER,cdn_url TEXT NOT NULL,UNIQUE(error_code,cdn_url));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/database/CacheDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    return-void
.end method
