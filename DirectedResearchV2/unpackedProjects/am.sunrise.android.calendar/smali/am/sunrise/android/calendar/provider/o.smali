.class Lam/sunrise/android/calendar/provider/o;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private a:Lam/sunrise/android/calendar/provider/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1257
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "kv_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kv_value"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/provider/o;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lam/sunrise/android/calendar/provider/n;)V
    .locals 0

    .prologue
    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/o;->a:Lam/sunrise/android/calendar/provider/n;

    .line 1240
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1263
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/o;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1267
    const-string v1, "kv_store"

    sget-object v2, Lam/sunrise/android/calendar/provider/o;->b:[Ljava/lang/String;

    const-string v3, "kv_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1268
    if-eqz v0, :cond_1

    .line 1269
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    const-string v1, "kv_value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1272
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1275
    :cond_1
    return-object v5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1244
    const-string v1, "kv_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v1, "kv_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/o;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1250
    :try_start_0
    const-string v2, "kv_store"

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1251
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1255
    return-void

    .line 1253
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
