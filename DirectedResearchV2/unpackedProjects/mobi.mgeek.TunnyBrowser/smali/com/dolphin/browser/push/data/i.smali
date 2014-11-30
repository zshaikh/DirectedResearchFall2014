.class Lcom/dolphin/browser/push/data/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PushMessageDabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "push_message.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/data/i;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/push/data/j;->a:Lcom/dolphin/browser/push/data/i;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 41
    const-string v0, "PushMessageDabaseHelper onCreate"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 42
    const-string v1, "CREATE TABLE IF NOT EXISTS push_message_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id TEXT, url TEXT, title TEXT, type INTEGER DEFAULT 0,  UNIQUE (message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 44
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
