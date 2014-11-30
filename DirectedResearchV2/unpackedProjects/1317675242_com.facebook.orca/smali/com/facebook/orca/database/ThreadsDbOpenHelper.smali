.class public Lcom/facebook/orca/database/ThreadsDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ThreadsDbOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end param

    .prologue
    .line 100
    const-string v0, "threads_db"

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 101
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const-string v0, "properties"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    const-string v0, "folder_counts"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    const-string v0, "threads"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    const-string v0, "messages"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    const-string v0, "thread_users"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "CREATE TABLE properties (key TEXT PRIMARY KEY, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE folder_counts (folder TEXT PRIMARY KEY, unread_count INTEGER, unseen_count INTEGER, last_seen_time INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE TABLE threads (thread_id TEXT PRIMARY KEY, action_id INTEGER, refetch_action_id INTEGER, last_visible_action_id INTEGER, name TEXT, participants TEXT, former_participants TEXT, object_participants TEXT, senders TEXT, single_recipient_thread INTEGER, single_recipient_id INTEGER, snippet TEXT, snippet_sender TEXT, admin_snippet TEXT, timestamp_ms INTEGER, last_fetch_time_ms INTEGER, unread INTEGER, pic_hash TEXT, pic TEXT, can_reply_to INTEGER, mute_until INTEGER, is_subscribed INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE INDEX threads_timestamp_index ON threads ( timestamp_ms DESC )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE INDEX threads_single_recipient_id_index ON threads ( single_recipient_id )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "CREATE TABLE messages (msg_id TEXT PRIMARY KEY, thread_id TEXT, action_id INTEGER, text TEXT, sender TEXT, timestamp_ms INTEGER, attachments TEXT, shares TEXT, msg_type INTEGER, affected_users TEXT, coordinates TEXT, offline_threading_id TEXT, source TEXT, is_non_authoritative INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE INDEX messages_timestamp_index ON messages ( thread_id, timestamp_ms DESC )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE INDEX messages_offline_threading_id_index ON messages ( offline_threading_id )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE TABLE thread_users (user_id TEXT PRIMARY KEY, first_name TEXT, last_name TEXT, name TEXT, pic_big TEXT, pic_square TEXT, pic_crop TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 118
    const-string v0, "orca:ThreadsDbOpenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "DROP TABLE IF EXISTS folder_counts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP INDEX IF EXISTS threads_timestamp_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "DROP INDEX IF EXISTS threads_single_recipient_id_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "DROP TABLE IF EXISTS properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "DROP INDEX IF EXISTS messages_timestamp_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "DROP INDEX IF EXISTS messages_offline_threading_id_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP INDEX IF EXISTS messages_hashed_msg_id_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "DROP TABLE IF EXISTS users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "DROP TABLE IF EXISTS thread_users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "DROP TABLE IF EXISTS friends"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/facebook/orca/database/ThreadsDbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    return-void
.end method
