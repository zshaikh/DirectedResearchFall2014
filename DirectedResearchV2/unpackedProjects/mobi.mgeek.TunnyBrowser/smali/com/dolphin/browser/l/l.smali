.class public Lcom/dolphin/browser/l/l;
.super Ljava/lang/Object;
.source "PasswordSecureHelper.java"


# static fields
.field private static b:Lcom/dolphin/browser/l/l;


# instance fields
.field private a:Lcom/dolphin/browser/l/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/l/l;->b:Lcom/dolphin/browser/l/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    .line 73
    iput-object v0, p0, Lcom/dolphin/browser/l/l;->c:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 93
    invoke-static {}, Lcom/dolphin/browser/l/h;->a()Lcom/dolphin/browser/l/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    .line 98
    const-string v0, "security"

    iput-object v0, p0, Lcom/dolphin/browser/l/l;->c:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/dolphin/browser/l/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/l;->b:Lcom/dolphin/browser/l/l;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/dolphin/browser/l/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/l/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/l/l;->b:Lcom/dolphin/browser/l/l;

    .line 88
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/l;->b:Lcom/dolphin/browser/l/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    const-string v1, "%s=? AND %s=?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v4

    const-string v3, "username"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 214
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    const-string v4, "password"

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)J
    .locals 2

    .prologue
    .line 573
    if-nez p1, :cond_0

    .line 574
    const-wide/16 v0, 0x0

    .line 576
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    const-string v1, "is_sync_on"

    invoke-virtual {v0, v1, p1, p2}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->b()V

    .line 297
    return-void
.end method

.method public a(JLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 599
    if-nez p3, :cond_0

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 603
    const-string v1, "is_sync_on"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 604
    iget-object v1, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v1, v0, p3, p4}, Lcom/dolphin/browser/l/h;->a(Landroid/content/ContentValues;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    if-eqz p4, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v1, p2, p3, v0}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "PasswordSecureHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 168
    :cond_1
    :goto_0
    return v0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->g()Z

    move-result v2

    .line 145
    if-nez v2, :cond_4

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/l/l;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    :cond_3
    move v2, v1

    .line 152
    :cond_4
    if-eqz p4, :cond_5

    .line 153
    if-eqz v2, :cond_1

    .line 157
    :try_start_0
    new-instance v2, Lcom/dolphin/browser/l/m;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 158
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    .line 159
    invoke-virtual {v2}, Lcom/dolphin/browser/l/m;->a()V

    .line 160
    iget-object v2, v2, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/dolphin/browser/l/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v1

    .line 168
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string v2, "PasswordSecureHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 202
    :cond_1
    :goto_0
    return v0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->g()Z

    move-result v2

    .line 179
    if-nez v2, :cond_4

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/l/l;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    :cond_3
    move v2, v1

    .line 186
    :cond_4
    if-eqz p3, :cond_5

    .line 187
    if-eqz v2, :cond_1

    .line 191
    :try_start_0
    new-instance v2, Lcom/dolphin/browser/l/m;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 192
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    .line 193
    invoke-virtual {v2}, Lcom/dolphin/browser/l/m;->a()V

    .line 194
    iget-object v2, v2, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v2, p3}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v3, p1, p2, v2}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v1

    .line 202
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    const-string v2, "PasswordSecureHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 238
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    .line 239
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/l/l;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v2, "PasswordSecureHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    .line 245
    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 300
    invoke-static {}, Lcom/dolphin/browser/core/WebViewDatabase;->adbClearSavedPasswords()V

    .line 301
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->e()V

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v2

    .line 413
    invoke-static {p1, p2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 414
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->d()V

    .line 415
    new-instance v4, Lcom/dolphin/browser/l/m;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 416
    invoke-virtual {v4, p1}, Lcom/dolphin/browser/l/m;->b(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v4}, Lcom/dolphin/browser/l/m;->a()V

    .line 418
    new-instance v5, Lcom/dolphin/browser/l/m;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 419
    invoke-virtual {v5, p2}, Lcom/dolphin/browser/l/m;->b(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v5}, Lcom/dolphin/browser/l/m;->a()V

    .line 421
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/l/n;

    .line 423
    iget-object v1, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    .line 425
    :try_start_0
    const-string v7, "v01"

    invoke-static {v1, v7}, Lcom/dolphin/browser/l/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 427
    iget-object v7, p0, Lcom/dolphin/browser/l/l;->c:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_1
    iget-object v7, v5, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    iget-object v7, v0, Lcom/dolphin/browser/l/n;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/dolphin/browser/l/n;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    const-string v7, "PasswordSecureHelper"

    const-string v8, "Failed to port old password at %s for %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/dolphin/browser/l/n;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/dolphin/browser/l/n;->b:Ljava/lang/String;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 428
    :cond_1
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 430
    :try_start_1
    iget-object v7, v4, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->h()V

    .line 444
    return-void
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->g()Z

    move-result v0

    .line 272
    if-nez v0, :cond_1

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_3

    aget-object v1, v2, v1

    if-eqz v1, :cond_3

    .line 279
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    .line 280
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    aput-object v4, v1, v3

    .line 281
    if-eqz v0, :cond_2

    .line 282
    new-instance v0, Lcom/dolphin/browser/l/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 283
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    iput-object v3, v0, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    .line 284
    invoke-virtual {v0}, Lcom/dolphin/browser/l/m;->a()V

    .line 285
    const/4 v3, 0x1

    iget-object v0, v0, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 287
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "PasswordSecureHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v2

    .line 292
    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    if-eqz p2, :cond_0

    .line 469
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/l/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 470
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/l/m;->b(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1}, Lcom/dolphin/browser/l/m;->a()V

    .line 472
    iget-object v1, v1, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 477
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    const-string v2, "PasswordSecureHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    const-string v1, "__password__"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    const-string v1, "__password__"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_0
    const-string v1, "__password__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v1, "dolphin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    if-eqz p2, :cond_0

    .line 510
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/l/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 511
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/l/m;->b(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lcom/dolphin/browser/l/m;->a()V

    .line 513
    iget-object v1, v1, Lcom/dolphin/browser/l/m;->d:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/dolphin/browser/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    :cond_0
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    const-string v2, "PasswordSecureHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "__password__"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 389
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 367
    const-string v0, "dolphin"

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/l/l;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 370
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "__password__"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 373
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->a()V

    .line 393
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->d()V

    .line 394
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->h()V

    .line 395
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 621
    if-nez p1, :cond_0

    .line 648
    :goto_0
    return-void

    .line 628
    :cond_0
    if-nez p2, :cond_1

    .line 629
    const-string v0, "%s=? AND %s is null"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "host"

    aput-object v2, v1, v3

    const-string v2, "username"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    .line 640
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 641
    const-string v3, "deleted"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v3, "sync_status"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    const-string v4, "password"

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_1
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "host"

    aput-object v2, v1, v3

    const-string v2, "username"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 637
    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    goto :goto_1
.end method

.method public f()V
    .locals 2

    .prologue
    .line 406
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/l/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/dolphin/browser/l/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/l/m;-><init>(Lcom/dolphin/browser/l/l;)V

    .line 448
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/l/m;->b(Ljava/lang/String;)V

    .line 449
    iget-object v0, v0, Lcom/dolphin/browser/l/m;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    .line 463
    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/dolphin/browser/l/l;->d:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public i()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 537
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    .line 538
    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_0

    .line 549
    :try_start_0
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v1

    .line 551
    invoke-virtual {p0, v2, v1}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 555
    :goto_1
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v1, v3

    goto :goto_1
.end method

.method public j()V
    .locals 4

    .prologue
    .line 559
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 560
    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 569
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/dolphin/browser/l/l;->a(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 724
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 728
    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    const-string v1, "userinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 732
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 733
    const-string v0, "is_sync_on"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    move v1, v8

    .line 735
    :cond_0
    const-wide/16 v3, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 736
    :goto_0
    if-eqz v1, :cond_3

    move v0, v1

    .line 744
    :goto_1
    if-eqz v2, :cond_1

    .line 746
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 753
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v1, v8

    .line 735
    goto :goto_0

    .line 739
    :cond_3
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    .line 747
    :catch_0
    move-exception v1

    .line 748
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 741
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move v0, v8

    .line 742
    :goto_3
    :try_start_5
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 744
    if-eqz v2, :cond_1

    .line 746
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 747
    :catch_2
    move-exception v1

    .line 748
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 744
    :catchall_0
    move-exception v0

    move-object v2, v9

    :goto_4
    if-eqz v2, :cond_4

    .line 746
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 749
    :cond_4
    :goto_5
    throw v0

    .line 747
    :catch_3
    move-exception v1

    .line 748
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 744
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 741
    :catch_4
    move-exception v0

    move-object v1, v0

    move v0, v8

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_3

    :cond_5
    move v0, v8

    goto :goto_1
.end method

.method public m()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/l/n;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/dolphin/browser/l/l;->a:Lcom/dolphin/browser/l/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/h;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 759
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 761
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/l/n;

    .line 762
    iget-object v4, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    .line 763
    iget-object v5, p0, Lcom/dolphin/browser/l/l;->c:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/dolphin/browser/l/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 771
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 768
    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 771
    goto :goto_1
.end method

.method public n()V
    .locals 1

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/l/l;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 780
    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewDatabase;->databaseMigration(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
