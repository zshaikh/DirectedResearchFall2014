.class public Lcom/acmeaom/android/c/b/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;
.implements Lcom/acmeaom/android/a/g/s;


# instance fields
.field private final a:Lcom/acmeaom/android/c/d/e;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/acmeaom/android/a/a/b/n;

.field private d:Lcom/acmeaom/android/c/c/f;

.field private e:C

.field private f:F

.field private g:Lcom/acmeaom/android/a/a/b/aj;

.field private h:Lcom/acmeaom/android/a/a/b/aj;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    .line 39
    iput-object p1, p0, Lcom/acmeaom/android/c/b/a;->a:Lcom/acmeaom/android/c/d/e;

    .line 40
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/c/b/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/b/b;-><init>(Lcom/acmeaom/android/c/b/a;)V

    const-string v2, "kMapDidStartAnimation"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/c/b/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/b/c;-><init>(Lcom/acmeaom/android/c/b/a;)V

    const-string v2, "kMapDidStopAnimation"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 194
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 196
    if-le p1, v2, :cond_1

    move v0, v1

    .line 201
    :goto_0
    if-ge v0, p2, :cond_3

    .line 205
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 207
    iget-object v3, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->g()V

    .line 209
    iget-object v3, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    if-ne v0, v3, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    goto :goto_1

    .line 199
    :cond_1
    sub-int v0, v2, p1

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "animation reduced from %u to %u frames"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 215
    return-void

    :cond_3
    move p2, v0

    goto :goto_1
.end method

.method protected a(Lcom/acmeaom/android/a/a/b/aj;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 145
    iput-object p1, p0, Lcom/acmeaom/android/c/b/a;->g:Lcom/acmeaom/android/a/a/b/aj;

    .line 146
    iget-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    invoke-static {p0, p1}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 150
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/c/f;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/c/c/f;->a(Z)V

    .line 163
    iget v0, p0, Lcom/acmeaom/android/c/b/a;->f:F

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/c/c/f;->a(F)V

    .line 165
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 166
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p1}, Lcom/acmeaom/android/c/c/f;->e()V

    .line 169
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->g:Lcom/acmeaom/android/a/a/b/aj;

    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 172
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 55
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 56
    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;)V

    .line 59
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 60
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->h:Lcom/acmeaom/android/a/a/b/aj;

    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->g:Lcom/acmeaom/android/a/a/b/aj;

    .line 61
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-void
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 136
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 137
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/c/f;->a(F)V

    goto :goto_0

    .line 139
    :cond_0
    iput p1, p0, Lcom/acmeaom/android/c/b/a;->f:F

    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 141
    return-void
.end method

.method protected b(Lcom/acmeaom/android/a/a/b/aj;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 154
    iput-object p1, p0, Lcom/acmeaom/android/c/b/a;->h:Lcom/acmeaom/android/a/a/b/aj;

    .line 155
    iget-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 156
    invoke-static {p0, p1}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 159
    return-void
.end method

.method public b_()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 66
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 67
    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->b_()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 70
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/acmeaom/android/c/b/a;->f()V

    .line 78
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 82
    return-void
.end method

.method public declared-synchronized f()V
    .locals 5

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    if-lt v0, v1, :cond_6

    .line 94
    int-to-char v0, v1

    iput-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    .line 96
    :cond_1
    iget-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    iget-char v2, p0, Lcom/acmeaom/android/c/b/a;->e:C

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 98
    iget-char v2, p0, Lcom/acmeaom/android/c/b/a;->e:C

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 107
    iget-object v2, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/c/c/f;->a(Z)V

    .line 108
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/c/c/f;->a(Z)V

    .line 110
    iput-object v0, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    .line 111
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->y()V

    .line 115
    :cond_4
    iget-char v0, p0, Lcom/acmeaom/android/c/b/a;->e:C

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->g:Lcom/acmeaom/android/a/a/b/aj;

    .line 126
    :goto_2
    iget-char v1, p0, Lcom/acmeaom/android/c/b/a;->e:C

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/acmeaom/android/c/b/a;->e:C

    .line 128
    iget-wide v1, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    sget-object v3, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v3, v3, Lcom/acmeaom/android/a/a/b/aj;->b:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_5

    .line 129
    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    iget-char v2, p0, Lcom/acmeaom/android/c/b/a;->e:C

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 101
    iget-char v2, p0, Lcom/acmeaom/android/c/b/a;->e:C

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->n()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    :cond_7
    if-eqz v1, :cond_8

    .line 120
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->h:Lcom/acmeaom/android/a/a/b/aj;

    goto :goto_2

    .line 124
    :cond_8
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public g()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 183
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 184
    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->g()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 189
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 190
    return-void
.end method

.method public h()Lcom/acmeaom/android/c/c/f;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 219
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->d:Lcom/acmeaom/android/c/c/f;

    .line 220
    iget-object v1, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 221
    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 226
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/c/f;

    .line 227
    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->m()V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/b/a;->c:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 230
    return-void
.end method
