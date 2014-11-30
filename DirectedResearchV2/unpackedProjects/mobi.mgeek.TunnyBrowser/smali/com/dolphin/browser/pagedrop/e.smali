.class public Lcom/dolphin/browser/pagedrop/e;
.super Ljava/lang/Object;
.source "SendAroundManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/pagedrop/e;

.field private static c:[Ljava/lang/Integer;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/pagedrop/f;

.field private e:Landroid/os/Looper;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/dolphin/browser/pagedrop/e;->c:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->b:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    .line 38
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->e:Landroid/os/Looper;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/e;->f:Z

    .line 72
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/pagedrop/e;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/dolphin/browser/pagedrop/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/e;->a:Lcom/dolphin/browser/pagedrop/e;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/dolphin/browser/pagedrop/e;

    invoke-direct {v0}, Lcom/dolphin/browser/pagedrop/e;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/e;->a:Lcom/dolphin/browser/pagedrop/e;

    .line 79
    :cond_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/e;->a:Lcom/dolphin/browser/pagedrop/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/e;->b:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/a;->a(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SendAroundManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->e:Landroid/os/Looper;

    .line 95
    new-instance v0, Lcom/dolphin/browser/pagedrop/f;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/e;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/pagedrop/f;-><init>(Lcom/dolphin/browser/pagedrop/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    .line 97
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/b/a;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    .line 99
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/e;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 291
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    sget-object v1, Lcom/dolphin/browser/pagedrop/e;->c:[Ljava/lang/Integer;

    monitor-enter v1

    .line 295
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/pagedrop/d/a;->a()I

    move-result v2

    .line 296
    if-gtz v2, :cond_2

    .line 297
    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/c/a;->a()Lcom/dolphin/browser/pagedrop/c/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/pagedrop/d/a;->b()[B

    move-result-object v3

    const/16 v4, 0x836

    invoke-virtual {v0, v3, v2, p2, v4}, Lcom/dolphin/browser/pagedrop/c/a;->a([BILjava/net/InetAddress;I)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/dolphin/browser/pagedrop/d/g;

    const/16 v1, 0x22

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/pagedrop/d/g;-><init>(BB)V

    .line 248
    invoke-virtual {v0, p4}, Lcom/dolphin/browser/pagedrop/d/g;->a(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 249
    invoke-virtual {v0, p5}, Lcom/dolphin/browser/pagedrop/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 250
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/pagedrop/d/g;->a(I)Lcom/dolphin/browser/pagedrop/d/g;

    .line 251
    invoke-virtual {v0, p6}, Lcom/dolphin/browser/pagedrop/d/g;->c(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 254
    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 259
    const-string v0, "SendAroundManager"

    const-string v1, "shareMessage()....\u5e7f\u64ad\u5730\u5740\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/dolphin/browser/pagedrop/d/c;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/pagedrop/d/c;-><init>(BLjava/lang/String;)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/pagedrop/d/c;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/pagedrop/d/c;->b(Ljava/lang/String;)V

    .line 132
    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 137
    const-string v0, "SendAroundManager"

    const-string v1, "noticeOnline()....\u5e7f\u64ad\u5730\u5740\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 176
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const-string v2, "pagedrop_pref"

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    const-string v2, "user_name"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Lcom/dolphin/browser/pagedrop/d/f;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/pagedrop/d/f;-><init>(BB)V

    .line 179
    invoke-virtual {v2, p1}, Lcom/dolphin/browser/pagedrop/d/f;->c(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2, p2}, Lcom/dolphin/browser/pagedrop/d/f;->d(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, p4}, Lcom/dolphin/browser/pagedrop/d/f;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/pagedrop/d/f;->a(B)V

    .line 183
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/pagedrop/d/f;->e(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/pagedrop/d/f;->b(Ljava/lang/String;)V

    .line 188
    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v2, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 193
    const-string v1, "SendAroundManager"

    const-string v2, "shareMessage()....\u5e7f\u64ad\u5730\u5740\u6709\u8bef"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    new-instance v0, Lcom/dolphin/browser/pagedrop/d/f;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/pagedrop/d/f;-><init>(BB)V

    .line 209
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/pagedrop/d/f;->c(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/pagedrop/d/f;->d(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/pagedrop/d/f;->a(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/d/f;->a(B)V

    .line 213
    invoke-virtual {v0, p4, p5}, Lcom/dolphin/browser/pagedrop/d/f;->a([BI)V

    .line 216
    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 221
    const-string v0, "SendAroundManager"

    const-string v1, "shareMessage()....\u5e7f\u64ad\u5730\u5740\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 307
    const-string v0, "SendAroundManager"

    const-string v1, "sendDisconnectMessage"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    const/16 v1, 0x3ea

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/pagedrop/f;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 324
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "message_id"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 326
    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->b(I)V

    .line 327
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/dolphin/browser/pagedrop/d/c;

    const/16 v1, 0x31

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/pagedrop/d/c;-><init>(BLjava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/pagedrop/d/c;->a(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/pagedrop/d/c;->b(Ljava/lang/String;)V

    .line 232
    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 237
    const-string v0, "SendAroundManager"

    const-string v1, "noticeOnline()....\u5e7f\u64ad\u5730\u5740\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "SendAroundManager"

    const-string v1, "cancelDisconnectMessage"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/e;->d:Lcom/dolphin/browser/pagedrop/f;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/f;->removeMessages(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dolphin/browser/pagedrop/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/e;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
