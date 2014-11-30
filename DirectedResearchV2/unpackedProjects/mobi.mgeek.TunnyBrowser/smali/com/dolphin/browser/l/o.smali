.class public Lcom/dolphin/browser/l/o;
.super Ljava/lang/Object;
.source "WebViewDatabaseHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/webkit/WebViewDatabase;

.field private static c:Lcom/dolphin/browser/l/o;

.field private static d:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private e:Ljava/lang/Object;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "WebViewDatabaseHelper"

    sput-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    .line 19
    sput-object v1, Lcom/dolphin/browser/l/o;->c:Lcom/dolphin/browser/l/o;

    .line 20
    sput-object v1, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lcom/dolphin/browser/l/o;->f:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/dolphin/browser/l/o;->g:Ljava/lang/reflect/Method;

    .line 46
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/l/o;->f:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/o;->a(Landroid/webkit/WebViewDatabase;)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/o;->b(Landroid/webkit/WebViewDatabase;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/dolphin/browser/l/o;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/dolphin/browser/l/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/o;->c:Lcom/dolphin/browser/l/o;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/dolphin/browser/l/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/l/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/l/o;->c:Lcom/dolphin/browser/l/o;

    .line 42
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/o;->c:Lcom/dolphin/browser/l/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 198
    .line 199
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object p0

    .line 202
    :cond_1
    const-string v1, "https"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "http"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 29
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "checkInitialized"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/o;->g:Ljava/lang/reflect/Method;

    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->g:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 35
    :goto_0
    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    sget-object v2, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "initPasswordFromWebViewDatabaseIfNeeded failed, mPasswordLock=%s, sWebViewDatabase=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;

    aput-object v3, v2, v4

    sget-object v3, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/o;->a(Landroid/webkit/WebViewDatabase;)V

    .line 123
    sget-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 124
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "initPasswordFromWebViewDatabaseIfNeeded failed, sDatabase=%s."

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/l/o;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/dolphin/browser/l/o;->b:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    :cond_3
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "initPasswordFromWebViewDatabaseIfNeeded failed, password initialized or no password saved."

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/l/o;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method a(Landroid/webkit/WebViewDatabase;)V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isJellyBeanOrUper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/l/o;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 67
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    sget-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v2, "Waiting sence database ready."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    sget-object v1, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_password_init_form_webviewdb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    const-string v1, "is_password_init_form_webviewdb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/l/o;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v9

    .line 142
    invoke-virtual {v9}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "migratePasswordFromWebViewDatabase..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/dolphin/browser/l/l;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    .line 147
    iget-object v10, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;

    monitor-enter v10

    .line 148
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 149
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "username"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "password"

    aput-object v1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/l/o;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "password"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    sget-object v4, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v5, "Migrating %s @ %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    invoke-static {v0}, Lcom/dolphin/browser/l/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, p1, v0, v2, v3}, Lcom/dolphin/browser/l/l;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_2
    if-eqz v1, :cond_3

    .line 169
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :cond_3
    :goto_0
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    :goto_1
    :try_start_5
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "Dropping unsafe passwords."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/dolphin/browser/core/WebViewDatabase;->adbClearSavedPasswords()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 189
    :goto_2
    invoke-virtual {p0, v11}, Lcom/dolphin/browser/l/o;->a(Z)V

    .line 190
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_6
    sget-object v1, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 164
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 165
    :goto_3
    :try_start_7
    sget-object v2, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 167
    if-eqz v1, :cond_3

    .line 169
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 170
    :catch_2
    move-exception v0

    .line 171
    :try_start_9
    sget-object v1, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 167
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_4

    .line 169
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 172
    :cond_4
    :goto_5
    :try_start_b
    throw v0

    .line 170
    :catch_3
    move-exception v1

    .line 171
    sget-object v2, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 179
    :cond_5
    sget-object v0, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    const-string v1, "Master password has been set, ignoring..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :catch_4
    move-exception v0

    goto :goto_2

    .line 167
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 164
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method b(Landroid/webkit/WebViewDatabase;)V
    .locals 2

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPasswordLock"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/l/o;->e:Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/dolphin/browser/l/o;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
