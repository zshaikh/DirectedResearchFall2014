.class public abstract Lam/sunrise/android/calendar/provider/w;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field protected a:Lam/sunrise/android/calendar/provider/n;

.field protected b:Landroid/database/sqlite/SQLiteDatabase;

.field protected c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->close()V

    .line 254
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/content/Context;)V

    .line 256
    new-instance v0, Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    .line 257
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->a()V

    .line 258
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method protected abstract a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 196
    if-nez v4, :cond_0

    .line 197
    new-array v0, v3, [Landroid/content/ContentProviderResult;

    .line 217
    :goto_0
    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 201
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/e;->b(Landroid/net/Uri;)Z

    move-result v5

    .line 203
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 204
    new-array v1, v4, [Landroid/content/ContentProviderResult;

    move v2, v3

    .line 205
    :goto_1
    if-ge v2, v4, :cond_2

    .line 206
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 207
    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 208
    iget-object v6, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v7, 0xfa0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 210
    :cond_1
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    aput-object v0, v1, v2

    .line 205
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 217
    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    move-object v0, v1

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->d:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 217
    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    throw v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    array-length v1, p2

    .line 110
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/e;->b(Landroid/net/Uri;)Z

    move-result v2

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 114
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    :try_start_0
    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3, v2}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    .line 116
    iget-object v3, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    iput-object v4, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    .line 125
    return v1

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    iput-object v4, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    throw v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    sget-object v0, Lam/sunrise/android/calendar/provider/e;->a:Landroid/net/Uri;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/w;->f()V

    .line 163
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 164
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/w;->e()Z

    move-result v0

    .line 169
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/e;->b(Landroid/net/Uri;)Z

    move-result v1

    .line 170
    if-nez v0, :cond_3

    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 174
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 175
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 178
    iput-object v3, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 179
    iget-object v3, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 185
    :cond_1
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 178
    iput-object v3, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 179
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    if-eqz v1, :cond_2

    .line 181
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_2
    throw v0

    .line 187
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    .line 80
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/w;->e()Z

    move-result v0

    .line 81
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/e;->b(Landroid/net/Uri;)Z

    move-result v1

    .line 82
    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 86
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 90
    iput-object v3, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 91
    iget-object v3, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_0
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    .line 101
    :goto_0
    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 90
    iput-object v3, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 91
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_1
    throw v0

    .line 99
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->b()V

    .line 224
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->c()V

    .line 229
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lam/sunrise/android/calendar/provider/w;->d()V

    .line 234
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 130
    .line 131
    invoke-direct {p0}, Lam/sunrise/android/calendar/provider/w;->e()Z

    move-result v0

    .line 132
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/e;->b(Landroid/net/Uri;)Z

    move-result v5

    .line 133
    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->a:Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 137
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 139
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 142
    iput-object v6, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 143
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 149
    :cond_0
    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/provider/w;->a(Z)V

    .line 155
    :goto_0
    return v0

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 142
    iput-object v6, p0, Lam/sunrise/android/calendar/provider/w;->c:Ljava/lang/Runnable;

    .line 143
    iget-object v2, p0, Lam/sunrise/android/calendar/provider/w;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_1
    throw v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 151
    invoke-virtual/range {v0 .. v5}, Lam/sunrise/android/calendar/provider/w;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method
