.class Lcom/dolphin/browser/pagedrop/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseOperation.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    const-string v0, "pagedrop.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "CREATE TABLE user_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,userID TEXT,userName TEXT,imageName TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE TABLE tabmessage_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,userID TEXT,userName TEXT,type TEXT,messageID INTEGER,title TEXT,url TEXT,imageName TEXT,time TEXT,del INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 55
    if-eq p2, p3, :cond_0

    .line 56
    const-string v0, "DROP TABLE IF EXISTS user_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "DROP TABLE IF EXISTS tabmessage_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
