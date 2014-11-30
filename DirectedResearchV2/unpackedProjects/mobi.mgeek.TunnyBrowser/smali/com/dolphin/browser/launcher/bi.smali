.class public abstract Lcom/dolphin/browser/launcher/bi;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private final a:J

.field e:I

.field f:J

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:I

.field n:J

.field o:J

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/bj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 60
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 64
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 69
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 74
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 98
    return-void
.end method

.method constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 60
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 64
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 69
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 74
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    .line 101
    iput-wide p1, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/dolphin/browser/launcher/bi;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 60
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 64
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 69
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 74
    iput v2, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    .line 107
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    .line 108
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->h:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 109
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->i:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 110
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 111
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->e:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->e:I

    .line 112
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 113
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->k:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    .line 114
    iget-object v0, p1, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    .line 115
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->m:I

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->m:I

    .line 116
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->n:J

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 117
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->o:J

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->o:J

    .line 118
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 304
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bj;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bj;->t()V

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    .line 87
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bi;->a()V

    .line 88
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 201
    return-void
.end method

.method a(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 126
    const-string v0, "_id"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v0, "itemType"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "container"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v0, "_index"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "extras"

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "flags"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "clicks"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "create_time"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v0, "last_click_time"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bj;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->a(I)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->b(I)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bi;->a()V

    .line 93
    return-void
.end method

.method b(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 138
    const-string v0, "container"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v0, "_index"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    .line 229
    return-void
.end method

.method c(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 143
    const-string v0, "clicks"

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v0, "last_click_time"

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    return-void
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 241
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 311
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

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
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bi;->c(I)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->k:I

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    return-wide v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->m:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/dolphin/browser/launcher/bi;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
