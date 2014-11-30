.class public Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PrefsDbOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end param

    .prologue
    .line 29
    const-string v0, "prefs_db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "CREATE TABLE preferences (key TEXT PRIMARY KEY, type INTEGER, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
