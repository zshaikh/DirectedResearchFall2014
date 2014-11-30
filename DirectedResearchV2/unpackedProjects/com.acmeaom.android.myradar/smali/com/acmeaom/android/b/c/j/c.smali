.class Lcom/acmeaom/android/b/c/j/c;
.super Lcom/acmeaom/android/c/h/k;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/f/y;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/j/a;

.field private final g:Lcom/acmeaom/android/a/f/o;

.field private final h:Lcom/acmeaom/android/a/a/b/o;

.field private volatile i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/b/c/j/a;Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/b/c/j/b;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/acmeaom/android/b/c/j/c;->a:Lcom/acmeaom/android/b/c/j/a;

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/acmeaom/android/c/h/k;-><init>(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)V

    .line 125
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->h:Lcom/acmeaom/android/a/a/b/o;

    .line 131
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->d()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->g:Lcom/acmeaom/android/a/f/o;

    .line 133
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->g:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 135
    sget-object v0, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/j/c;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 136
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://pt.acmeaom.com/t/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/c;->i()Lcom/acmeaom/android/c/h/m;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/acmeaom/android/c/h/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/acmeaom/android/c/h/m;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/acmeaom/android/c/h/m;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V
    .locals 7

    .prologue
    .line 154
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 155
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/j/c;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/c/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 193
    sget-object v0, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/j/c;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 194
    instance-of v0, p2, Lcom/acmeaom/android/a/a/b/e;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad temperature response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 199
    :cond_0
    check-cast p2, Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 200
    instance-of v2, v0, Lcom/acmeaom/android/a/a/b/k;

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Lcom/acmeaom/android/b/c/i/a;

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    invoke-direct {v2, v0}, Lcom/acmeaom/android/b/c/i/a;-><init>(Lcom/acmeaom/android/a/a/b/k;)V

    .line 202
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->h:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/o;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad temperature data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->a:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v1

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->h:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/i/a;

    .line 211
    invoke-static {v0, v1}, Lcom/acmeaom/android/b/c/i/c;->a(Lcom/acmeaom/android/b/c/i/a;F)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v4

    .line 213
    invoke-static {v4}, Lcom/acmeaom/android/a/a/c/d;->c(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v5

    .line 214
    invoke-static {v4}, Lcom/acmeaom/android/a/a/c/d;->d(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v6

    .line 215
    int-to-float v5, v5

    div-float/2addr v5, v1

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-static {v5, v6}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v5

    .line 217
    new-instance v6, Lcom/acmeaom/android/c/g/c/e;

    invoke-direct {v6, v4, v5}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    .line 218
    iget-object v0, v0, Lcom/acmeaom/android/b/c/i/a;->c:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v6, v0}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 219
    sget-object v0, Lcom/acmeaom/android/a/f/l;->f:Lcom/acmeaom/android/a/f/l;

    iget v0, v0, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {v6, v0}, Lcom/acmeaom/android/c/g/c/e;->a(I)V

    .line 220
    sget-object v0, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    invoke-virtual {v6, v0}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/c/b;)V

    .line 221
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :cond_3
    monitor-enter p0

    .line 224
    :try_start_0
    iput-object v2, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->a:Lcom/acmeaom/android/b/c/j/a;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/j/a;->a(Lcom/acmeaom/android/b/c/j/a;)Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->k()Lcom/acmeaom/android/c/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/c/g/b;->c(Lcom/acmeaom/android/c/a;)V

    goto/16 :goto_0

    .line 225
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/c/e;

    .line 170
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/c/g/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->g:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 184
    sget-object v0, Lcom/acmeaom/android/c/h/l;->b:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/j/c;->a(Lcom/acmeaom/android/c/h/l;)V

    .line 185
    return-void
.end method

.method public b(Lcom/acmeaom/android/c/g/a;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/b/c/j/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/g/c/e;

    .line 178
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/g/c/e;->b(Lcom/acmeaom/android/c/g/a;)V

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
