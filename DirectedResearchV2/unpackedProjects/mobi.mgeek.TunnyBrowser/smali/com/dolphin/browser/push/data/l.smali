.class public Lcom/dolphin/browser/push/data/l;
.super Ljava/util/Observable;
.source "PushMessageStorage.java"


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 40
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/dolphin/browser/push/data/l;->a:J

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/push/data/m;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/push/data/l;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/dolphin/browser/push/data/i;->a()Lcom/dolphin/browser/push/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    const-string v1, "push_message_table"

    invoke-virtual {v0, v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/dolphin/browser/push/data/i;->a()Lcom/dolphin/browser/push/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    const-string v1, "push_message_table"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-static {}, Lcom/dolphin/browser/push/data/i;->a()Lcom/dolphin/browser/push/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    const-string v1, "push_message_table"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/push/data/l;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/push/data/n;->a:Lcom/dolphin/browser/push/data/l;

    return-object v0
.end method

.method private a(J)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/dolphin/browser/push/data/l;->c()J

    move-result-wide v0

    .line 122
    add-long/2addr v0, p1

    .line 123
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/dolphin/browser/push/data/l;->b()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/push/data/l;->b(J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/push/data/l;->setChanged()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/data/l;->notifyObservers(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 131
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v0, v3

    .line 134
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "_id DESC "

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/dolphin/browser/push/data/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_0

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v2, v0

    .line 137
    const/16 v0, 0xc8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->move(I)Z

    .line 138
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 139
    const-string v0, "_id <? "

    .line 140
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v0, v6}, Lcom/dolphin/browser/push/data/l;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 141
    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/push/data/l;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    :try_start_1
    const-string v2, "PushMessageStorage"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private b(J)V
    .locals 2

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/dolphin/browser/push/data/l;->a:J

    .line 154
    invoke-direct {p0}, Lcom/dolphin/browser/push/data/l;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    const-string v1, "message_count"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 158
    return-void
.end method

.method private c()J
    .locals 4

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/dolphin/browser/push/data/l;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/dolphin/browser/push/data/l;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    const-string v1, "message_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/push/data/l;->a:J

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/push/data/l;->a:J

    return-wide v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "push_message_storage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/h;)V
    .locals 4

    .prologue
    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/push/data/l;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 57
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 58
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/push/data/l;->a(J)V

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/data/l;->a(Ljava/lang/Object;)V

    .line 62
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/push/data/i;->a()Lcom/dolphin/browser/push/data/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 72
    :try_start_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/h;

    .line 74
    const-string v7, "push_message_table"

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/h;->f()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v5, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 75
    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_2

    .line 76
    const-wide/16 v7, 0x1

    add-long v0, v1, v7

    :goto_2
    move-wide v1, v0

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/push/data/l;->a(J)V

    .line 87
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/data/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    :try_start_1
    const-string v1, "PushMessageStorage"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v1, v3

    .line 85
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move-wide v0, v1

    goto :goto_2
.end method
