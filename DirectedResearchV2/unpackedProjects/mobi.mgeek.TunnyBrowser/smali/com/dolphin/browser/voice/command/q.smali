.class Lcom/dolphin/browser/voice/command/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VoiceCommandProvider.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "voiceactions.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/q;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 96
    .line 98
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "topen"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/bn;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/BufferedReader;

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/InputStream;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Lcom/dolphin/browser/voice/command/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v3, "url"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "name"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "build_in"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 122
    :goto_2
    return-void

    .line 111
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    .line 113
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 120
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 115
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 120
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 117
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 79
    array-length v1, p2

    .line 80
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v3, "voice"

    aget-object v4, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "action"

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "actions"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 80
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 93
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    const-string v1, "VoiceCommandProvider"

    const-string v2, "Error on add commands"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "CREATE TABLE actions(_id INTEGER PRIMARY KEY AUTOINCREMENT,voice TEXT,action TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE build_in(_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,url TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/q;->a:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    sget v1, Lcom/dolphin/browser/voice/command/R$array;->build_in_voice_actions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/voice/command/q;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/q;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
