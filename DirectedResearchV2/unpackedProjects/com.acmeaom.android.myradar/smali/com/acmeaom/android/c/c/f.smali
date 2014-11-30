.class public abstract Lcom/acmeaom/android/c/c/f;
.super Lcom/acmeaom/android/c/c/d;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/c/g;

.field private final b:Ljava/util/HashSet;

.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/acmeaom/android/a/a/b/n;

.field private f:Z

.field private g:Z

.field private h:F

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FZLjava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/c/c/d;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;FII)V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    .line 65
    iput-boolean p4, p0, Lcom/acmeaom/android/c/c/f;->f:Z

    .line 66
    iput-object p5, p0, Lcom/acmeaom/android/c/c/f;->j:Ljava/lang/String;

    .line 67
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/acmeaom/android/c/c/f;->h:F

    .line 69
    const-wide/16 v0, 0x0

    invoke-static {v6, v0, v1}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/acmeaom/android/a/c/i;->a:Lcom/acmeaom/android/a/c/i;

    invoke-static {v1, v6, v6, v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/i;IILcom/acmeaom/android/a/c/c;)Lcom/acmeaom/android/a/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    new-instance v1, Lcom/acmeaom/android/c/c/g;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/c/g;-><init>(Lcom/acmeaom/android/c/c/f;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->b(Lcom/acmeaom/android/a/c/g;Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    new-instance v1, Lcom/acmeaom/android/c/c/h;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/c/h;-><init>(Lcom/acmeaom/android/c/c/f;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/c/c/f;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/acmeaom/android/c/c/f;->l()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 181
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->i()Lcom/acmeaom/android/c/h/m;

    move-result-object v2

    iget-object v3, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/c/h/m;->a(Ljava/util/HashSet;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v2

    sget-object v3, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->b()V

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 185
    iget-object v2, p0, Lcom/acmeaom/android/c/c/f;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/c/a;)V

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method private l()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v5, Lcom/acmeaom/android/a/a/b/p;

    invoke-direct {v5}, Lcom/acmeaom/android/a/a/b/p;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 194
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 195
    :goto_0
    if-ge v4, v6, :cond_6

    .line 201
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 202
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->i()Lcom/acmeaom/android/c/h/m;

    move-result-object v7

    .line 203
    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Lcom/acmeaom/android/c/h/m;->a(Ljava/util/HashSet;)I

    move-result v8

    .line 209
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v9

    .line 212
    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/c/h/k;

    .line 213
    invoke-virtual {v1}, Lcom/acmeaom/android/c/h/k;->i()Lcom/acmeaom/android/c/h/m;

    move-result-object v11

    .line 214
    invoke-virtual {v11, v7}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/c/h/m;)I

    move-result v12

    .line 215
    const v13, 0x7fffffff

    if-eq v12, v13, :cond_2

    .line 220
    iget-object v12, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v11, v12}, Lcom/acmeaom/android/c/h/m;->a(Ljava/util/HashSet;)I

    move-result v11

    .line 221
    invoke-virtual {v1}, Lcom/acmeaom/android/c/h/k;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v1

    .line 222
    if-lt v8, v11, :cond_3

    sget-object v11, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v1, v11}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    :cond_3
    iget-boolean v11, p0, Lcom/acmeaom/android/c/c/f;->f:Z

    if-eqz v11, :cond_5

    .line 229
    sget-object v11, Lcom/acmeaom/android/c/h/l;->e:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v9, v11}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {v9, v1}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_2

    :cond_4
    move v1, v2

    .line 246
    :goto_3
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->b()V

    .line 248
    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/c/a;)V

    .line 249
    invoke-virtual {v5, v4}, Lcom/acmeaom/android/a/a/b/p;->a(I)V

    goto :goto_1

    .line 236
    :cond_5
    sget-object v11, Lcom/acmeaom/android/c/h/l;->g:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v1, v11}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_2

    .line 252
    :cond_6
    invoke-virtual {v5}, Lcom/acmeaom/android/a/a/b/p;->a()I

    move-result v0

    if-lez v0, :cond_7

    .line 255
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0, v3}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;I)V

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lcom/acmeaom/android/a/a/b/p;->a(Ljava/util/ArrayList;)V

    .line 270
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 271
    return-void

    :cond_8
    move v1, v3

    goto :goto_3
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 128
    iput p1, p0, Lcom/acmeaom/android/c/c/f;->h:F

    .line 129
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 130
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/h/k;->a(F)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 133
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 298
    iput p1, p0, Lcom/acmeaom/android/c/c/f;->k:I

    .line 299
    return-void
.end method

.method protected a(Ljava/util/HashSet;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 139
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-boolean v0, p0, Lcom/acmeaom/android/c/c/f;->g:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 164
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 147
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->i()Lcom/acmeaom/android/c/h/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/m;

    .line 151
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/c/f;->c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;

    move-result-object v0

    .line 152
    iget v2, p0, Lcom/acmeaom/android/c/c/f;->h:F

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/c/h/k;->a(F)V

    .line 153
    iget-boolean v2, p0, Lcom/acmeaom/android/c/c/f;->i:Z

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/c/h/k;->a(Z)V

    .line 154
    iget-object v2, p0, Lcom/acmeaom/android/c/c/f;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/c/a;)V

    .line 155
    iget-object v2, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/acmeaom/android/c/c/f;->j()V

    .line 160
    invoke-direct {p0}, Lcom/acmeaom/android/c/c/f;->l()V

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 282
    iput-boolean p1, p0, Lcom/acmeaom/android/c/c/f;->i:Z

    .line 283
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 284
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/h/k;->a(Z)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 287
    return-void
.end method

.method public b_()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 314
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 315
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->b_()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/c/d;->b_()V

    .line 318
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 319
    return-void
.end method

.method protected c(Lcom/acmeaom/android/c/h/m;)Lcom/acmeaom/android/c/h/k;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/acmeaom/android/c/c/f;->k()Lcom/acmeaom/android/c/a/d;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/acmeaom/android/c/a/d;->b(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)Lcom/acmeaom/android/c/h/a;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/c/f;->g:Z

    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 90
    invoke-super {p0}, Lcom/acmeaom/android/c/c/d;->e()V

    .line 91
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 95
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 96
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->b()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->c:Lcom/acmeaom/android/c/d/e;

    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/c/c/f;->g:Z

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 102
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 303
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    invoke-static {v0}, Lcom/acmeaom/android/a/c/a;->b(Lcom/acmeaom/android/a/c/g;)V

    .line 304
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 305
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->b()V

    .line 306
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->l()V

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/c/d;->i()V

    .line 309
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 310
    return-void
.end method

.method protected abstract k()Lcom/acmeaom/android/c/a/d;
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 105
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/k;

    .line 108
    invoke-virtual {v0}, Lcom/acmeaom/android/c/h/k;->h()Lcom/acmeaom/android/c/h/l;

    move-result-object v0

    .line 109
    sget-object v3, Lcom/acmeaom/android/c/h/l;->h:Lcom/acmeaom/android/c/h/l;

    invoke-virtual {v0, v3}, Lcom/acmeaom/android/c/h/l;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/c/c/f;->e:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 116
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->a:Lcom/acmeaom/android/a/c/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/g;I)V

    .line 174
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/acmeaom/android/c/c/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/acmeaom/android/c/c/f;->k:I

    return v0
.end method
