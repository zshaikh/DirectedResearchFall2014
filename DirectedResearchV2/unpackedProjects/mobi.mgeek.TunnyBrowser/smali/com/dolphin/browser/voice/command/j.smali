.class public Lcom/dolphin/browser/voice/command/j;
.super Ljava/lang/Object;
.source "VoiceActionManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/voice/command/j;

.field private static i:Lcom/dolphin/browser/voice/command/o;

.field private static j:Landroid/widget/Toast;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/voice/command/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Locale;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/dolphin/browser/voice/command/a/f;

.field private h:Ljava/lang/reflect/Method;

.field private k:Lcom/dolphin/browser/voice/command/a/j;

.field private l:Lcom/dolphin/browser/voice/command/d;

.field private m:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Lcom/dolphin/browser/voice/command/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/voice/command/k;-><init>(Lcom/dolphin/browser/voice/command/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->m:Landroid/os/Handler;

    .line 146
    iput-object p3, p0, Lcom/dolphin/browser/voice/command/j;->d:Ljava/util/Locale;

    .line 147
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/j;->f:Ljava/lang/Object;

    .line 148
    iput-object p2, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/j;->b()V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static final a()Lcom/dolphin/browser/voice/command/j;
    .locals 4

    .prologue
    .line 138
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->a:Lcom/dolphin/browser/voice/command/j;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/dolphin/browser/voice/command/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getActionExcutor()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dolphin/browser/voice/command/j;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/util/Locale;)V

    sput-object v1, Lcom/dolphin/browser/voice/command/j;->a:Lcom/dolphin/browser/voice/command/j;

    .line 142
    :cond_0
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->a:Lcom/dolphin/browser/voice/command/j;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 387
    if-nez p2, :cond_0

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v0, "hot_words_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    const-string v1, "saved_hot_words"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 394
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/vg/a/a;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/j;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/voice/command/j;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/j;->g()V

    .line 160
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/j;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/j;->f()V

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-nez v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/voice/command/j;->i:Lcom/dolphin/browser/voice/command/o;

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->i:Lcom/dolphin/browser/voice/command/o;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/voice/command/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/voice/command/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->k:Lcom/dolphin/browser/voice/command/a/j;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    check-cast v0, Lcom/dolphin/browser/voice/command/a/h;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/j;->k:Lcom/dolphin/browser/voice/command/a/j;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/a/h;->a(Lcom/dolphin/browser/voice/command/a/j;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->c()V

    .line 178
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/dolphin/browser/voice/command/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/voice/command/i;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    :try_start_1
    invoke-static {v1}, Lcom/dolphin/browser/voice/command/i;->a(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->b:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :cond_0
    if-eqz v1, :cond_1

    .line 198
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 194
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    if-eqz v1, :cond_1

    .line 198
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_2

    .line 198
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 201
    :cond_2
    :goto_3
    throw v0

    .line 199
    :catch_3
    move-exception v1

    .line 200
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 196
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 193
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/voice/command/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 216
    if-eqz v1, :cond_2

    .line 217
    :try_start_1
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 218
    const-string v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 219
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    if-eqz v1, :cond_0

    .line 232
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 240
    :cond_0
    :goto_2
    return-void

    .line 225
    :cond_1
    :try_start_4
    iput-object v3, p0, Lcom/dolphin/browser/voice/command/j;->c:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    :cond_2
    if-eqz v1, :cond_0

    .line 232
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 233
    :catch_1
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 233
    :catch_2
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 230
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 232
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 235
    :cond_3
    :goto_4
    throw v0

    .line 233
    :catch_3
    move-exception v1

    .line 234
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 230
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 227
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/voice/command/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/vg/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    const-string v1, "hot_words_pref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 403
    const-string v2, "saved_hot_words"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-static {v2}, Lcom/dolphin/browser/voice/command/c;->a(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;)V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/voice/command/j;->a(Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;Z)V

    .line 419
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;Z)V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/j;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/a/a;->a(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 424
    :cond_0
    new-instance v0, Lcom/dolphin/browser/voice/command/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/voice/command/n;-><init>(Lcom/dolphin/browser/voice/command/j;Landroid/content/Context;Lcom/dolphin/browser/voice/command/l;)V

    .line 425
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 428
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/a/j;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/j;->k:Lcom/dolphin/browser/voice/command/a/j;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    check-cast v0, Lcom/dolphin/browser/voice/command/a/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/a/h;->a(Lcom/dolphin/browser/voice/command/a/j;)V

    .line 249
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/m;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/d;->a()V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/j;->e()V

    .line 297
    new-instance v0, Lcom/dolphin/browser/voice/command/d;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/j;->b:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/dolphin/browser/voice/command/j;->c:Ljava/util/HashMap;

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/voice/command/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/voice/command/a/f;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/m;)V

    .line 299
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/voice/command/d;->a(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->j:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/j;->j:Landroid/widget/Toast;

    .line 123
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    :cond_0
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->j:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v0, Lcom/dolphin/browser/voice/command/j;->j:Landroid/widget/Toast;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/widget/Toast;)Z

    .line 131
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 322
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->b()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->l:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/d;->a()V

    .line 329
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/i;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/j;->h:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/j;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "excute"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 99
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/j;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/j;->h:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 114
    :goto_1
    return v0

    .line 100
    :catch_0
    move-exception v2

    .line 101
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/j;->h:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/j;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/dolphin/browser/voice/command/i;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/dolphin/browser/voice/command/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/voice/command/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 114
    goto :goto_1

    .line 110
    :catch_1
    move-exception v1

    .line 111
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->c()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->e:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/voice/command/b/d;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public c()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 268
    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-nez v0, :cond_2

    .line 271
    invoke-static {}, Lcom/dolphin/browser/voice/command/b/d;->a()Ljava/util/Locale;

    move-result-object v0

    .line 276
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->d:Ljava/util/Locale;

    .line 280
    :cond_1
    return-object v0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->d()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/j;->g:Lcom/dolphin/browser/voice/command/a/f;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/a/f;->e()Z

    move-result v0

    goto :goto_0
.end method
