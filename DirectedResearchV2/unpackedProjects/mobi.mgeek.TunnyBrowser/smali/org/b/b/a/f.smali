.class public Lorg/b/b/a/f;
.super Lorg/b/b/a/b;
.source "LongPollingTransport.java"


# instance fields
.field private final b:Lorg/c/a/a/k;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/b/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private volatile e:J

.field private volatile f:Z

.field private volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/c/a/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/c/a/a/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "long-polling"

    invoke-direct {p0, v0, p1}, Lorg/b/b/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/b/a/f;->c:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lorg/b/b/a/f;->b:Lorg/c/a/a/k;

    .line 85
    const-string v0, "long-polling.json"

    invoke-virtual {p0, v0}, Lorg/b/b/a/f;->e(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lorg/b/b/a/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/b/b/a/f;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lorg/b/b/a/f;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/b/b/a/f;->g:Ljava/util/Map;

    return-object p1
.end method

.method public static a(Ljava/util/Map;)Lorg/b/b/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/b/b/a/f;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/c/a/a/k;

    invoke-direct {v0}, Lorg/c/a/a/k;-><init>()V

    .line 51
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lorg/c/a/a/k;->a(J)V

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/c/a/a/k;->a(I)V

    .line 53
    const v1, 0x8000

    invoke-virtual {v0, v1}, Lorg/c/a/a/k;->b(I)V

    .line 54
    invoke-static {p0, v0}, Lorg/b/b/a/f;->a(Ljava/util/Map;Lorg/c/a/a/k;)Lorg/b/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lorg/c/a/a/k;)Lorg/b/b/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/c/a/a/k;",
            ")",
            "Lorg/b/b/a/f;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/b/b/a/f;

    invoke-direct {v0, p0, p1}, Lorg/b/b/a/f;-><init>(Ljava/util/Map;Lorg/c/a/a/k;)V

    .line 60
    invoke-virtual {p1}, Lorg/c/a/a/k;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lorg/c/a/a/k;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-super {p0}, Lorg/b/b/a/b;->a()V

    .line 97
    iput-boolean v0, p0, Lorg/b/b/a/f;->d:Z

    .line 98
    const-string v1, "maxNetworkDelay"

    iget-object v2, p0, Lorg/b/b/a/f;->b:Lorg/c/a/a/k;

    invoke-virtual {v2}, Lorg/c/a/a/k;->k()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/b/b/a/f;->a(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/b/b/a/f;->e:J

    .line 99
    const-string v1, "(^https?://(((\\[[^\\]]+\\])|([^:/\\?#]+))(:(\\d+))?))?([^\\?#]*)(.*)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lorg/b/b/a/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/b/b/a/f;->f:Z

    .line 106
    :cond_2
    return-void
.end method

.method public varargs a(Lorg/b/b/a/j;[Lorg/b/a/e;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    new-instance v3, Lorg/b/b/a/h;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/b/b/a/h;-><init>(Lorg/b/b/a/f;Lorg/b/b/a/j;[Lorg/b/a/d;Lorg/b/b/a/g;)V

    .line 129
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Lorg/b/b/a/h;->c(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lorg/b/b/a/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v3, v0}, Lorg/b/b/a/h;->a(Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lorg/b/b/a/f;->f:Z

    if-eqz v1, :cond_1

    array-length v1, p2

    if-ne v1, v5, :cond_1

    aget-object v1, p2, v4

    invoke-interface {v1}, Lorg/b/a/e;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    aget-object v1, p2, v4

    invoke-interface {v1}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/meta"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v3, v0}, Lorg/b/b/a/h;->a(Ljava/lang/String;)V

    .line 142
    :cond_1
    invoke-virtual {p0, p2}, Lorg/b/b/a/f;->a([Lorg/b/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "application/json;charset=UTF-8"

    invoke-virtual {v3, v1}, Lorg/b/b/a/h;->e(Ljava/lang/String;)V

    .line 147
    :try_start_0
    new-instance v1, Lorg/c/a/c/o;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/b/b/a/h;->c(Lorg/c/a/c/f;)V

    .line 148
    invoke-virtual {p0, v3}, Lorg/b/b/a/f;->a(Lorg/c/a/a/j;)V

    .line 150
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    iget-boolean v0, p0, Lorg/b/b/a/f;->d:Z

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 180
    :goto_0
    return-void

    .line 154
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    iget-wide v1, p0, Lorg/b/b/a/f;->e:J

    .line 158
    array-length v0, p2

    if-ne v0, v5, :cond_5

    const-string v0, "/meta/connect"

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-interface {v4}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lorg/b/b/a/f;->g:Ljava/util/Map;

    .line 163
    :cond_3
    if-eqz v0, :cond_5

    .line 165
    const-string v4, "timeout"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 167
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long v0, v1, v4

    .line 172
    :goto_1
    invoke-virtual {v3, v0, v1}, Lorg/b/b/a/h;->a(J)V

    .line 174
    iget-object v0, p0, Lorg/b/b/a/f;->b:Lorg/c/a/a/k;

    invoke-virtual {v0, v3}, Lorg/c/a/a/k;->a(Lorg/c/a/a/t;)V

    goto :goto_0

    .line 168
    :cond_4
    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v4

    add-long v0, v1, v4

    goto :goto_1

    :cond_5
    move-wide v0, v1

    goto :goto_1
.end method

.method protected a(Lorg/c/a/a/j;)V
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/b/b/a/f;->f()Lorg/b/b/a/d;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-interface {v0}, Lorg/b/b/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/a/c;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 191
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    invoke-virtual {v0}, Lorg/b/b/a/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 195
    const-string v0, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    monitor-enter p0

    .line 114
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/b/b/a/f;->d:Z

    .line 115
    iget-object v1, p0, Lorg/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v1, p0, Lorg/b/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/a/h;

    .line 120
    invoke-virtual {v0}, Lorg/b/b/a/h;->u()V

    .line 121
    invoke-static {v0}, Lorg/b/b/a/h;->b(Lorg/b/b/a/h;)Lorg/b/b/a/j;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Aborted"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/b/b/a/h;->a(Lorg/b/b/a/h;)[Lorg/b/a/d;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 123
    :cond_0
    return-void
.end method
