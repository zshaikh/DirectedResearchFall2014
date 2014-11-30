.class public Lcom/acmeaom/android/myradar/a/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:Lcom/acmeaom/android/myradar/a/e;

.field private static d:Lcom/acmeaom/android/myradar/a/k;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/acmeaom/android/myradar/a/e;->c:Lcom/acmeaom/android/myradar/a/e;

    .line 31
    sput-object v0, Lcom/acmeaom/android/myradar/a/e;->d:Lcom/acmeaom/android/myradar/a/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->b:Ljava/util/HashSet;

    .line 41
    return-void
.end method

.method public static declared-synchronized a()Lcom/acmeaom/android/myradar/a/e;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/acmeaom/android/myradar/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/e;->c:Lcom/acmeaom/android/myradar/a/e;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/acmeaom/android/myradar/a/e;

    invoke-direct {v0}, Lcom/acmeaom/android/myradar/a/e;-><init>()V

    sput-object v0, Lcom/acmeaom/android/myradar/a/e;->c:Lcom/acmeaom/android/myradar/a/e;

    .line 36
    new-instance v0, Lcom/acmeaom/android/myradar/a/k;

    invoke-direct {v0}, Lcom/acmeaom/android/myradar/a/k;-><init>()V

    sput-object v0, Lcom/acmeaom/android/myradar/a/e;->d:Lcom/acmeaom/android/myradar/a/k;

    .line 38
    :cond_0
    sget-object v0, Lcom/acmeaom/android/myradar/a/e;->c:Lcom/acmeaom/android/myradar/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/acmeaom/android/myradar/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->a()Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->j()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->j()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->j()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/a/c;->a(Landroid/content/Context;)Lcom/acmeaom/android/myradar/a/c;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/acmeaom/android/myradar/a/e;->d:Lcom/acmeaom/android/myradar/a/k;

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1, p2}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_0
    sget-object v1, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    invoke-virtual {v0, p2, v1}, Lcom/acmeaom/android/myradar/a/c;->a(Ljava/lang/String;Lcom/android/vending/billing/h;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit p0

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I
    .locals 7

    .prologue
    .line 50
    monitor-enter p0

    const/4 v1, -0x1

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/a/c;->a(Landroid/content/Context;)Lcom/acmeaom/android/myradar/a/c;

    move-result-object v0

    .line 52
    sget-object v2, Lcom/acmeaom/android/myradar/a/e;->d:Lcom/acmeaom/android/myradar/a/k;

    if-eqz v2, :cond_1

    .line 53
    invoke-static {p1, p2}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p1, p3}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {p1, p7}, Lcom/acmeaom/android/myradar/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p4

    move-wide v4, p5

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/acmeaom/android/myradar/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I

    move-result v0

    .line 60
    if-lez v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/a/c;->a(Landroid/content/Context;)Lcom/acmeaom/android/myradar/a/c;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/a/c;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 94
    const-string v0, "quantity"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 96
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 98
    if-lez v0, :cond_0

    .line 99
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v5, Lcom/acmeaom/android/myradar/a/e;->d:Lcom/acmeaom/android/myradar/a/k;

    if-eqz v5, :cond_1

    .line 101
    invoke-static {p1, v0}, Lcom/acmeaom/android/myradar/a/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    new-instance v5, Lcom/acmeaom/android/myradar/a/a;

    sget-object v6, Lcom/acmeaom/android/myradar/a/b;->a:Lcom/acmeaom/android/myradar/a/b;

    invoke-direct {v5, v0, v6}, Lcom/acmeaom/android/myradar/a/a;-><init>(Ljava/lang/String;Lcom/acmeaom/android/myradar/a/b;)V

    .line 106
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_2
    :try_start_3
    const-string v0, "Invalid product Id!"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 120
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 121
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/a/e;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/acmeaom/android/myradar/a/f;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(Lcom/acmeaom/android/myradar/a/f;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/acmeaom/android/myradar/a/e;->d()V

    .line 134
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/e;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/myradar/a/f;

    .line 146
    invoke-interface {v0}, Lcom/acmeaom/android/myradar/a/f;->b()V

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
