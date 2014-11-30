.class public Lcom/dolphin/browser/launcher/be;
.super Lcom/dolphin/browser/launcher/bi;
.source "FolderInfo.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/bg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bi;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/launcher/be;->e:I

    .line 51
    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/bi;-><init>(J)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/launcher/be;->e:I

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bf;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/launcher/bf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 228
    invoke-interface {p1, v0}, Lcom/dolphin/browser/launcher/bf;->a(Lcom/dolphin/browser/launcher/cl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    return-object v1
.end method

.method a()V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bg;->s()V

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/bi;->a(I)V

    .line 249
    return-void
.end method

.method a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/bi;->a(Landroid/content/ContentValues;)V

    .line 158
    const-string v0, "title"

    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bg;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 65
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    monitor-exit p0

    .line 92
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/dolphin/browser/launcher/cl;->f:J

    .line 78
    if-gez p2, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 80
    iput v1, p1, Lcom/dolphin/browser/launcher/cl;->j:I

    move v1, v0

    .line 82
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    iput v1, p1, Lcom/dolphin/browser/launcher/cl;->j:I

    :cond_1
    move v2, v1

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v0, p1, v2}, Lcom/dolphin/browser/launcher/bg;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/be;->a()V

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/bg;->a(Ljava/lang/CharSequence;)V

    .line 150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v6, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    .line 116
    :goto_0
    if-ge v5, v7, :cond_3

    .line 117
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    .line 118
    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 119
    if-eq v2, v8, :cond_1

    if-eq v2, v5, :cond_1

    .line 121
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v4

    .line 122
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v2, v1}, Lcom/dolphin/browser/launcher/bg;->b(Lcom/dolphin/browser/launcher/cl;)V

    .line 122
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 125
    :cond_0
    invoke-interface {v6, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v3, v4

    .line 126
    :goto_2
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v2, v1, v5}, Lcom/dolphin/browser/launcher/bg;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 126
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 129
    :cond_1
    if-ne v2, v8, :cond_2

    .line 131
    invoke-interface {v6, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v3, v4

    .line 132
    :goto_3
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v2, v1, v5}, Lcom/dolphin/browser/launcher/bg;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 132
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 116
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_4

    .line 139
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    move-object v2, v0

    move v3, v4

    .line 140
    :goto_4
    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/launcher/bg;->b(Lcom/dolphin/browser/launcher/cl;)V

    .line 140
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 144
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/be;->a()V

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method b()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bi;->b()V

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 183
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->b()V

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/be;->a:Z

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/cl;)V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    monitor-exit p0

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bg;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/bg;->b(Lcom/dolphin/browser/launcher/cl;)V

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/be;->a()V

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/be;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
