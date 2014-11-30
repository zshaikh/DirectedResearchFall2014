.class public Lcom/dolphin/browser/l/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PasswordDbHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/l/k;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/l/k;->a:Lcom/dolphin/browser/l/k;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "password.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/l/k;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/dolphin/browser/l/k;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/dolphin/browser/l/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/k;->a:Lcom/dolphin/browser/l/k;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/dolphin/browser/l/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/l/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/l/k;->a:Lcom/dolphin/browser/l/k;

    .line 32
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/k;->a:Lcom/dolphin/browser/l/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    const-string v0, "CREATE TABLE password (_id INTEGER PRIMARY KEY, host TEXT, username TEXT, password TEXT, sync_id TEXT, date INTEGER DEFAULT 0, sync_status INTEGER DEFAULT 0, deleted INTEGER DEFAULT 0, email TEXT, logintype TEXT,  UNIQUE (host, username));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "CREATE TABLE userinfo (_id INTEGER PRIMARY KEY, email TEXT, logintype INTEGER, is_sync_on INTEGER DEFAULT 0, version INTEGER DEFAULT 0, is_err INTEGER DEFAULT 0, current_key TEXT, current_key_sid INTEGER DEFAULT 0,current_key_syncid TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/l/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/l/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/o;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "PasswordHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/l/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/l/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/o;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/o;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    :cond_0
    return-void
.end method
