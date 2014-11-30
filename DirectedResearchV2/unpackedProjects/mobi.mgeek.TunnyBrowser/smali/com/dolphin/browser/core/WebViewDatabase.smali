.class public Lcom/dolphin/browser/core/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/WebViewDatabase;

.field private static d:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private b:Lcom/dolphin/browser/core/IWebViewDatabase;

.field private c:Lcom/dolphin/browser/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->b(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    .line 42
    invoke-static {}, Lcom/dolphin/browser/l/h;->a()Lcom/dolphin/browser/l/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->c:Lcom/dolphin/browser/l/h;

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 146
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/core/WebViewDatabase;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const-string v1, "password"

    monitor-enter v1

    .line 152
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    const-string v2, "host"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "username"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "password"

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 296
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 322
    :goto_0
    return v0

    .line 300
    :cond_1
    const-string v0, "(host == ?)"

    .line 304
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "password"

    const/4 v2, 0x0

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 309
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    if-eqz v1, :cond_3

    .line 314
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move v0, v9

    .line 315
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 318
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    if-eqz v1, :cond_4

    .line 320
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 322
    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static adbClearSavedPasswords()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 221
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 222
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v1, "webview.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 229
    :cond_2
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "password"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static adbGetSavedPasswords()Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/l/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 237
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 238
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 239
    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v3

    .line 243
    :cond_1
    const-string v1, "webview.db"

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 246
    :cond_2
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 253
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 258
    :goto_1
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "password"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "host"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "password"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_5

    .line 267
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    new-instance v0, Lcom/dolphin/browser/l/n;

    invoke-direct {v0}, Lcom/dolphin/browser/l/n;-><init>()V

    .line 269
    const-string v2, "host"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/l/n;->a:Ljava/lang/String;

    .line 271
    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/l/n;->b:Ljava/lang/String;

    .line 273
    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    .line 275
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 278
    :catch_0
    move-exception v0

    .line 281
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 284
    :goto_3
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 285
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 286
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 287
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 288
    sput-object v3, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    move-object v3, v8

    .line 291
    goto/16 :goto_0

    .line 255
    :cond_4
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    .line 281
    :cond_5
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static databaseMigration(Ljava/util/ArrayList;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/l/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 164
    sget-object v1, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 165
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 166
    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v2, "webview.db"

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    :cond_2
    sget-object v1, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 177
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 178
    :cond_3
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 179
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 180
    :cond_4
    sput-object v5, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 184
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 185
    sget-object v1, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :goto_1
    move v1, v0

    .line 190
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 191
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/l/n;

    .line 192
    iget-object v2, v0, Lcom/dolphin/browser/l/n;->a:Ljava/lang/String;

    .line 193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 190
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 187
    :cond_6
    sget-object v1, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    .line 198
    :cond_7
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v3, v0, Lcom/dolphin/browser/l/n;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/core/WebViewDatabase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    sput-object v5, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_0

    .line 211
    :cond_8
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 213
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 215
    sput-object v5, Lcom/dolphin/browser/core/WebViewDatabase;->d:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/dolphin/browser/core/WebViewDatabase;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/dolphin/browser/core/WebViewDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->a:Lcom/dolphin/browser/core/WebViewDatabase;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/core/WebViewDatabase;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/WebViewDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->a:Lcom/dolphin/browser/core/WebViewDatabase;

    .line 48
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/WebViewDatabase;->a:Lcom/dolphin/browser/core/WebViewDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearADBUsernamePassword()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->clearUsernamePassword()V

    .line 74
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->clearCookies()V

    .line 126
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->clearFormData()V

    .line 122
    return-void
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 102
    return-void
.end method

.method public clearUsernamePassword()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->clearUsernamePassword()V

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->c:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->b()V

    .line 82
    return-void
.end method

.method public hasADBUsernamePassword()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasFormData()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->b:Lcom/dolphin/browser/core/IWebViewDatabase;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/core/WebViewDatabase;->c:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->c()Z

    move-result v0

    return v0
.end method
