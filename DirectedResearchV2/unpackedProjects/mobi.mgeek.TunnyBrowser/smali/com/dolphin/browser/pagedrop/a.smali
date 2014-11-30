.class public Lcom/dolphin/browser/pagedrop/a;
.super Ljava/lang/Object;
.source "PageDropMessageProcessor.java"


# static fields
.field private static a:Lcom/dolphin/browser/pagedrop/a;

.field private static c:[Ljava/lang/Integer;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/pagedrop/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/pagedrop/a;->a:Lcom/dolphin/browser/pagedrop/a;

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/dolphin/browser/pagedrop/a;->c:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    .line 382
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->d:Lcom/dolphin/browser/pagedrop/d;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/pagedrop/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/pagedrop/a;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/dolphin/browser/pagedrop/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/a;->a:Lcom/dolphin/browser/pagedrop/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/pagedrop/a;

    invoke-direct {v0}, Lcom/dolphin/browser/pagedrop/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/a;->a:Lcom/dolphin/browser/pagedrop/a;

    .line 49
    :cond_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/a;->a:Lcom/dolphin/browser/pagedrop/a;
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

.method static synthetic a(Lcom/dolphin/browser/pagedrop/a;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/pagedrop/a;->a(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/dolphin/browser/pagedrop/d/d;B)Z
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/dolphin/browser/pagedrop/d/d;->c()Lcom/dolphin/browser/pagedrop/d/d;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/e/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Lcom/dolphin/browser/pagedrop/d/c;

    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/dolphin/browser/pagedrop/d/c;-><init>(BLjava/lang/String;)V

    .line 100
    invoke-virtual {v3, v1}, Lcom/dolphin/browser/pagedrop/d/c;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/dolphin/browser/pagedrop/d/c;->b(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/d/d;->b()Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/net/InetAddress;BBI)Z
    .locals 4

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/dolphin/browser/pagedrop/d/g;

    invoke-direct {v2, p2, p3}, Lcom/dolphin/browser/pagedrop/d/g;-><init>(BB)V

    .line 199
    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/pagedrop/d/g;->a(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 200
    invoke-virtual {v2, p4}, Lcom/dolphin/browser/pagedrop/d/g;->a(I)Lcom/dolphin/browser/pagedrop/d/g;

    .line 201
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/pagedrop/d/g;->b(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 202
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/pagedrop/d/g;->c(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;

    .line 204
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/dolphin/browser/pagedrop/e;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 459
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 486
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p4, p5

    .line 465
    :cond_1
    const-string v0, ""

    .line 466
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 467
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->e()Ljava/io/File;

    move-result-object v2

    .line 468
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    if-eqz v3, :cond_2

    .line 470
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    const-string v3, "pagedrop_pref"

    invoke-virtual {v2, v3, v1}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    const-string v2, "user_name"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Lcom/dolphin/browser/pagedrop/d/f;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/pagedrop/d/f;-><init>(BB)V

    .line 478
    invoke-virtual {v2, p4}, Lcom/dolphin/browser/pagedrop/d/f;->c(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v2, p5}, Lcom/dolphin/browser/pagedrop/d/f;->d(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, p2}, Lcom/dolphin/browser/pagedrop/d/f;->a(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/pagedrop/d/f;->a(B)V

    .line 482
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/pagedrop/d/f;->e(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2, p6}, Lcom/dolphin/browser/pagedrop/d/f;->a(I)V

    .line 484
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/pagedrop/d/f;->b(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0, v2, p1}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public declared-synchronized a(Lcom/dolphin/browser/pagedrop/d;)V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/a;->d:Lcom/dolphin/browser/pagedrop/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(B)Z
    .locals 1

    .prologue
    .line 361
    const/16 v0, 0x11

    if-eq v0, p1, :cond_0

    const/16 v0, 0x12

    if-eq v0, p1, :cond_0

    const/16 v0, 0x13

    if-eq v0, p1, :cond_0

    const/16 v0, 0x21

    if-eq v0, p1, :cond_0

    const/16 v0, 0x22

    if-eq v0, p1, :cond_0

    const/16 v0, 0x23

    if-eq v0, p1, :cond_0

    const/16 v0, 0x31

    if-eq v0, p1, :cond_0

    const/16 v0, 0x32

    if-ne v0, p1, :cond_1

    .line 364
    :cond_0
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/pagedrop/d/a;Ljava/net/InetAddress;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 490
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    sget-object v1, Lcom/dolphin/browser/pagedrop/a;->c:[Ljava/lang/Integer;

    monitor-enter v1

    .line 494
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/pagedrop/d/a;->a()I

    move-result v2

    .line 495
    if-gtz v2, :cond_2

    .line 496
    monitor-exit v1

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 498
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

.method public a(Ljava/net/DatagramPacket;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 77
    const/16 v2, 0x11

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 80
    new-instance v2, Lcom/dolphin/browser/pagedrop/d/d;

    invoke-direct {v2, p1}, Lcom/dolphin/browser/pagedrop/d/d;-><init>(Ljava/net/DatagramPacket;)V

    .line 81
    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/d/d;->c()Lcom/dolphin/browser/pagedrop/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    const/16 v1, 0x12

    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/d/d;B)Z

    move-result v1

    .line 83
    new-instance v3, Lcom/dolphin/browser/pagedrop/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dolphin/browser/pagedrop/c;-><init>(Lcom/dolphin/browser/pagedrop/a;Lcom/dolphin/browser/pagedrop/b;)V

    .line 84
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/d/d;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/pagedrop/c;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 375
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->d:Lcom/dolphin/browser/pagedrop/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/net/DatagramPacket;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 118
    const/16 v2, 0x12

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 121
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/d;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/d;-><init>(Ljava/net/DatagramPacket;)V

    .line 123
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/d;->c()Lcom/dolphin/browser/pagedrop/d/d;

    move-result-object v1

    .line 124
    if-nez v1, :cond_2

    .line 125
    const-string v2, "PageDropMessageProcessor"

    const-string v3, "destruct failed"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "PageDropMessageProcessor"

    const-string v3, "destruct success"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized c()Lcom/dolphin/browser/pagedrop/d;
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/a;->d:Lcom/dolphin/browser/pagedrop/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/net/DatagramPacket;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 143
    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 146
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/i;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/i;-><init>(Ljava/net/DatagramPacket;)V

    .line 148
    if-eqz v1, :cond_2

    .line 149
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "message_id"

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/c;->b()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 153
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->e()Lcom/dolphin/browser/pagedrop/d/i;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Ljava/net/DatagramPacket;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 166
    const/16 v2, 0x21

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 169
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/i;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/i;-><init>(Ljava/net/DatagramPacket;)V

    .line 171
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->e()Lcom/dolphin/browser/pagedrop/d/i;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "message_id"

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/c;->b()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 180
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->d()Ljava/net/InetAddress;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->c()B

    move-result v3

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/i;->a()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/dolphin/browser/pagedrop/a;->a(Ljava/net/InetAddress;BBI)Z

    .line 188
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e(Ljava/net/DatagramPacket;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 217
    const/16 v2, 0x22

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 220
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/h;-><init>(Ljava/net/DatagramPacket;)V

    .line 221
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->e()Lcom/dolphin/browser/pagedrop/d/h;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->c()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->d()Ljava/net/InetAddress;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->a()B

    move-result v3

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->b()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/dolphin/browser/pagedrop/a;->a(Ljava/net/InetAddress;BBI)Z

    .line 233
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(Ljava/net/DatagramPacket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 247
    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 250
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/h;-><init>(Ljava/net/DatagramPacket;)V

    .line 251
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/h;->e()Lcom/dolphin/browser/pagedrop/d/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g(Ljava/net/DatagramPacket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 264
    const/16 v2, 0x31

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 267
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/d;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/d;-><init>(Ljava/net/DatagramPacket;)V

    .line 268
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/d;->c()Lcom/dolphin/browser/pagedrop/d/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    const/16 v0, 0x32

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/pagedrop/a;->a(Lcom/dolphin/browser/pagedrop/d/d;B)Z

    move-result v0

    goto :goto_0
.end method

.method public h(Ljava/net/DatagramPacket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 286
    const/16 v2, 0x32

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v2, v1, :cond_0

    .line 289
    new-instance v1, Lcom/dolphin/browser/pagedrop/d/d;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/pagedrop/d/d;-><init>(Ljava/net/DatagramPacket;)V

    .line 291
    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/d/d;->c()Lcom/dolphin/browser/pagedrop/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Ljava/net/DatagramPacket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/pagedrop/a;->a(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 307
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->a(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 311
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->b(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->c(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 319
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->d(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 323
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->e(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 327
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->f(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 331
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->g(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 335
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/a;->h(Ljava/net/DatagramPacket;)Z

    move-result v0

    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
        0x21 -> :sswitch_3
        0x22 -> :sswitch_4
        0x23 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public j(Ljava/net/DatagramPacket;)Ljava/lang/Byte;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    if-nez p1, :cond_0

    .line 347
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    .line 350
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 351
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 354
    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0
.end method
