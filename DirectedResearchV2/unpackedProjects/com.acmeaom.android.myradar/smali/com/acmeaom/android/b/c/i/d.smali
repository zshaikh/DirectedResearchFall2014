.class public Lcom/acmeaom/android/b/c/i/d;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;
.implements Lcom/acmeaom/android/a/f/y;


# static fields
.field public static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final d:Lcom/acmeaom/android/a/a/b/n;

.field private e:Lcom/acmeaom/android/a/f/o;

.field private f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/i/d;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v0, Lcom/acmeaom/android/b/c/i/d;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    .line 59
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/acmeaom/android/b/c/i/e;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/i/e;-><init>(Lcom/acmeaom/android/b/c/i/d;)V

    const-string v2, "kTemperatureStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/acmeaom/android/b/c/i/f;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/i/f;-><init>(Lcom/acmeaom/android/b/c/i/d;)V

    const-string v2, "kTemperatureUnitChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/i;)V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/i;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 184
    invoke-static {v0}, Lcom/acmeaom/android/b/c/i/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->g()V

    .line 186
    iget-object v1, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v1, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->r()V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/i/d;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/i/d;->j()V

    return-void
.end method

.method private j()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->g()V

    .line 74
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->r()V

    .line 75
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "https://s.mrsv.co/co.ashx"

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p2, Lcom/acmeaom/android/a/a/b/i;

    invoke-direct {p0, p2}, Lcom/acmeaom/android/b/c/i/d;->a(Lcom/acmeaom/android/a/a/b/i;)V

    .line 172
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "kTemperatureStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/i/d;->c(Lcom/acmeaom/android/a/f/o;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->g()V

    .line 193
    return-void
.end method

.method public c(Lcom/acmeaom/android/a/f/o;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 93
    new-instance v0, Lcom/acmeaom/android/a/f/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/o;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    new-instance v1, Lcom/acmeaom/android/b/c/i/g;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/i/g;-><init>(Lcom/acmeaom/android/b/c/i/d;)V

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/s;)V

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 101
    return-void
.end method

.method public e()V
    .locals 9

    .prologue
    .line 104
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v2

    .line 109
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/i/a;

    .line 110
    new-instance v4, Lcom/acmeaom/android/a/a/d/a;

    iget-object v5, v0, Lcom/acmeaom/android/b/c/i/a;->c:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v5}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v5

    iget-object v7, v0, Lcom/acmeaom/android/b/c/i/a;->c:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v7}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 113
    invoke-static {v0}, Lcom/acmeaom/android/b/c/i/c;->a(Lcom/acmeaom/android/b/c/i/a;)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 116
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    new-instance v6, Landroid/util/Pair;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/acmeaom/android/b/c/i/c;->a(Lcom/acmeaom/android/b/c/i/a;F)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 130
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 131
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/acmeaom/android/a/a/c/d;

    .line 133
    new-instance v4, Lcom/acmeaom/android/c/g/c/f;

    invoke-direct {v4, v0, v1}, Lcom/acmeaom/android/c/g/c/f;-><init>(Lcom/acmeaom/android/a/a/c/d;Ljava/util/ArrayList;)V

    .line 134
    sget-object v1, Lcom/acmeaom/android/a/f/l;->f:Lcom/acmeaom/android/a/f/l;

    iget v1, v1, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {v4, v1}, Lcom/acmeaom/android/c/g/c/f;->a(I)V

    .line 136
    invoke-static {v0}, Lcom/acmeaom/android/a/a/c/d;->c(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v1

    .line 137
    invoke-static {v0}, Lcom/acmeaom/android/a/a/c/d;->d(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v0

    .line 138
    int-to-float v1, v1

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v0

    .line 140
    invoke-virtual {v4, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 141
    sget-object v0, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    invoke-virtual {v4, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/c/b;)V

    .line 142
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_2
    const-string v0, "adding %d temperature objects with %d markers"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/Iterable;)V

    .line 148
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 149
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 155
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 158
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_0
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/d;->e:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
