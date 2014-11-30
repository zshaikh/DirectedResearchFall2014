.class Ldolphin/net/http/v;
.super Ljava/lang/Object;
.source "IdleCache.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:[Ldolphin/net/http/x;

.field private c:I

.field private d:Ldolphin/net/http/y;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/net/http/v;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v1, v3, [Ldolphin/net/http/x;

    iput-object v1, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    .line 64
    iput v0, p0, Ldolphin/net/http/v;->c:I

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/net/http/v;->d:Ldolphin/net/http/y;

    .line 69
    iput v0, p0, Ldolphin/net/http/v;->e:I

    .line 70
    iput v0, p0, Ldolphin/net/http/v;->f:I

    .line 80
    :goto_0
    if-ge v0, v3, :cond_0

    .line 81
    iget-object v1, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    new-instance v2, Ldolphin/net/http/x;

    invoke-direct {v2, p0}, Ldolphin/net/http/x;-><init>(Ldolphin/net/http/v;)V

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/net/http/v;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Ldolphin/net/http/v;->c:I

    return v0
.end method

.method static synthetic a(Ldolphin/net/http/v;Ldolphin/net/http/y;)Ldolphin/net/http/y;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ldolphin/net/http/v;->d:Ldolphin/net/http/y;

    return-object p1
.end method

.method static final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ldolphin/net/http/v;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    iget v1, p0, Ldolphin/net/http/v;->c:I

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget v1, p0, Ldolphin/net/http/v;->c:I

    if-lez v1, :cond_1

    move v1, v0

    .line 270
    :goto_0
    iget v5, p0, Ldolphin/net/http/v;->c:I

    if-lez v5, :cond_1

    const/16 v5, 0xc8

    if-ge v1, v5, :cond_1

    .line 271
    iget-object v5, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v5, v5, v1

    .line 272
    iget-object v6, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    if-eqz v6, :cond_0

    iget-wide v6, v5, Ldolphin/net/http/x;->c:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 273
    const-string v6, "Http"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IdleCache::clearIdle]clear entry: schemeName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " host:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v6, 0x0

    iput-object v6, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    .line 275
    iget-object v6, v5, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v6, 0x0

    iput-object v6, v5, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 277
    iget v5, p0, Ldolphin/net/http/v;->c:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ldolphin/net/http/v;->c:I

    .line 270
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 283
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 284
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/http/c;

    .line 285
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldolphin/net/http/c;->i()V

    .line 283
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 287
    :cond_3
    return-void
.end method

.method static synthetic b(Ldolphin/net/http/v;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ldolphin/net/http/v;->b()V

    return-void
.end method


# virtual methods
.method a(Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;
    .locals 14

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v8

    .line 124
    invoke-static {v7}, Ldolphin/net/http/v;->a(Ljava/lang/String;)Z

    move-result v9

    .line 125
    if-eqz v9, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 127
    :goto_0
    const-string v0, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IdleCache::getConnection] mCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/http/v;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " schemeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, 0x0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget v0, p0, Ldolphin/net/http/v;->c:I

    if-lez v0, :cond_7

    .line 134
    const/4 v3, -0x1

    .line 135
    const/4 v4, 0x0

    :goto_1
    const/16 v0, 0xc8

    if-ge v4, v0, :cond_6

    .line 136
    iget-object v0, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v10, v0, v4

    .line 138
    iget-object v0, v10, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-nez v0, :cond_1

    move v0, v3

    .line 135
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {}, Ldolphin/net/b/a;->a()Ldolphin/net/b/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Ldolphin/net/b/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 143
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 144
    if-eq v8, v2, :cond_2

    move v0, v3

    .line 145
    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v11

    .line 149
    iget-boolean v0, v10, Ldolphin/net/http/x;->d:Z

    if-ne v0, v9, :cond_3

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 151
    :goto_3
    if-nez v2, :cond_4

    iget-boolean v0, v10, Ldolphin/net/http/x;->d:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 152
    const/4 v0, 0x0

    move v6, v0

    :goto_4
    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 153
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 152
    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_4

    .line 149
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 157
    :cond_4
    if-eqz v2, :cond_8

    .line 158
    const/4 v0, -0x1

    if-eq v3, v0, :cond_5

    iget-object v0, v10, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    iget-wide v10, v0, Ldolphin/net/http/c;->e:J

    iget-object v0, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v0, v0, v3

    iget-object v0, v0, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    iget-wide v12, v0, Ldolphin/net/http/c;->e:J

    cmp-long v0, v10, v12

    if-lez v0, :cond_8

    :cond_5
    move v0, v4

    .line 159
    goto :goto_2

    .line 168
    :cond_6
    if-ltz v3, :cond_7

    .line 170
    iget-object v0, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v1, v0, v3

    .line 171
    iget-object v0, v1, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 172
    const/4 v2, 0x0

    iput-object v2, v1, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    .line 173
    const/4 v2, 0x0

    iput-object v2, v1, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 174
    iget v1, p0, Ldolphin/net/http/v;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldolphin/net/http/v;->c:I

    .line 178
    :goto_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IdleCache::getConnection] mCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/http/v;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " schemeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    move-object v0, v5

    goto :goto_6

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_5
.end method

.method a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    iget v1, p0, Ldolphin/net/http/v;->c:I

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    monitor-enter p0

    move v1, v0

    .line 188
    :goto_0
    :try_start_0
    iget v3, p0, Ldolphin/net/http/v;->c:I

    if-lez v3, :cond_1

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_1

    .line 189
    iget-object v3, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v3, v3, v1

    .line 190
    iget-object v4, v3, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_0

    .line 191
    const-string v4, "Http"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IdleCache::clear]clear entry: schemeName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " host:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v4, 0x0

    iput-object v4, v3, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    .line 193
    iget-object v4, v3, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v4, 0x0

    iput-object v4, v3, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 195
    iget v3, p0, Ldolphin/net/http/v;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ldolphin/net/http/v;->c:I

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 200
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/http/c;

    .line 202
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldolphin/net/http/c;->i()V

    .line 200
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 204
    :cond_3
    return-void
.end method

.method a(Lorg/apache/http/HttpHost;J)V
    .locals 11

    .prologue
    .line 211
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    .line 213
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/http/v;->a(Ljava/lang/String;)Z

    move-result v7

    .line 214
    if-eqz v7, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 215
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    iget v0, p0, Ldolphin/net/http/v;->c:I

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    const-string v0, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IdleCache::cleanRetiredConnection] mCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/http/v;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " schemeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    :try_start_0
    iget v0, p0, Ldolphin/net/http/v;->c:I

    if-lez v0, :cond_5

    const/16 v0, 0xc8

    if-ge v4, v0, :cond_5

    .line 221
    iget-object v0, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v9, v0, v4

    .line 223
    iget-object v0, v9, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-nez v0, :cond_2

    .line 220
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 214
    :cond_1
    invoke-static {}, Ldolphin/net/b/a;->a()Ldolphin/net/b/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Ldolphin/net/b/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 228
    :cond_2
    :try_start_1
    iget-object v2, v9, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    iget-wide v2, v2, Ldolphin/net/http/c;->e:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    .line 233
    if-ne v6, v2, :cond_0

    .line 237
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    .line 238
    iget-boolean v0, v9, Ldolphin/net/http/x;->d:Z

    if-ne v0, v7, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 240
    :goto_3
    if-nez v2, :cond_4

    iget-boolean v0, v9, Ldolphin/net/http/x;->d:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 241
    const/4 v0, 0x0

    move v3, v0

    :goto_4
    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 242
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 241
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 238
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 246
    :cond_4
    if-eqz v2, :cond_0

    .line 247
    const-string v0, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IdleCache::cleanRetiredConnection]clear entry: schemeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    iput-object v0, v9, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    .line 249
    iget-object v0, v9, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, v9, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 251
    iget v0, p0, Ldolphin/net/http/v;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldolphin/net/http/v;->c:I

    goto/16 :goto_2

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 257
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/http/c;

    .line 258
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ldolphin/net/http/c;->i()V

    .line 256
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 261
    :cond_7
    const-string v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IdleCache::cleanRetiredConnection] mCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldolphin/net/http/v;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " schemeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    :cond_8
    move v0, v2

    goto/16 :goto_5
.end method

.method a(Lorg/apache/http/HttpHost;Ldolphin/net/http/c;)Z
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/net/http/v;->a(Ljava/lang/String;)Z

    move-result v2

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 93
    const-string v1, "Http"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IdleCache::cacheConnection] mCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ldolphin/net/http/v;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " schemeName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " host:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget v1, p0, Ldolphin/net/http/v;->c:I

    if-ge v1, v7, :cond_2

    move v1, v0

    .line 98
    :goto_0
    if-ge v1, v7, :cond_2

    .line 99
    iget-object v5, p0, Ldolphin/net/http/v;->b:[Ldolphin/net/http/x;

    aget-object v5, v5, v1

    .line 100
    iget-object v6, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    if-nez v6, :cond_1

    .line 101
    iput-object p1, v5, Ldolphin/net/http/x;->a:Lorg/apache/http/HttpHost;

    .line 102
    iput-object p2, v5, Ldolphin/net/http/x;->b:Ldolphin/net/http/c;

    .line 103
    const-wide/32 v0, 0xea60

    add-long/2addr v0, v3

    iput-wide v0, v5, Ldolphin/net/http/x;->c:J

    .line 104
    iput-boolean v2, v5, Ldolphin/net/http/x;->d:Z

    .line 105
    iget v0, p0, Ldolphin/net/http/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/http/v;->c:I

    .line 108
    iget-object v0, p0, Ldolphin/net/http/v;->d:Ldolphin/net/http/y;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ldolphin/net/http/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/net/http/y;-><init>(Ldolphin/net/http/v;Ldolphin/net/http/w;)V

    iput-object v0, p0, Ldolphin/net/http/v;->d:Ldolphin/net/http/y;

    .line 110
    iget-object v0, p0, Ldolphin/net/http/v;->d:Ldolphin/net/http/y;

    invoke-virtual {v0}, Ldolphin/net/http/y;->start()V

    .line 112
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    .line 116
    :goto_1
    return v0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
