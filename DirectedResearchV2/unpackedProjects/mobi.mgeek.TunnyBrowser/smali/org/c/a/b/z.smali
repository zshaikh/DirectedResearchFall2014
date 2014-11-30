.class public Lorg/c/a/b/z;
.super Ljava/util/HashMap;
.source "PathMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field final a:Lorg/c/a/d/l;

.field final b:Lorg/c/a/d/l;

.field final c:Lorg/c/a/d/l;

.field d:Ljava/util/List;

.field e:Lorg/c/a/b/aa;

.field f:Lorg/c/a/b/aa;

.field final g:Ljava/util/Set;

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ":,"

    sput-object v0, Lorg/c/a/b/z;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/c/a/d/l;

    invoke-direct {v0}, Lorg/c/a/d/l;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/z;->a:Lorg/c/a/d/l;

    .line 83
    new-instance v0, Lorg/c/a/d/l;

    invoke-direct {v0}, Lorg/c/a/d/l;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/z;->b:Lorg/c/a/d/l;

    .line 84
    new-instance v0, Lorg/c/a/d/l;

    invoke-direct {v0}, Lorg/c/a/d/l;-><init>()V

    iput-object v0, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    .line 86
    iput-object v1, p0, Lorg/c/a/b/z;->d:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/c/a/b/z;->e:Lorg/c/a/b/aa;

    .line 88
    iput-object v1, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/b/z;->h:Z

    .line 98
    invoke-virtual {p0}, Lorg/c/a/b/z;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/z;->g:Ljava/util/Set;

    .line 99
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/c/a/b/z;->b(Ljava/lang/String;)Lorg/c/a/b/aa;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lorg/c/a/b/aa;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    iget-object v0, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v0, p1, v2, v1}, Lorg/c/a/d/l;->a(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/b/aa;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 240
    :cond_2
    const/16 v3, 0x2f

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ltz v0, :cond_3

    .line 242
    iget-object v3, p0, Lorg/c/a/b/z;->a:Lorg/c/a/d/l;

    invoke-virtual {v3, p1, v2, v0}, Lorg/c/a/d/l;->a(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_2

    .line 244
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/b/aa;

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lorg/c/a/b/z;->e:Lorg/c/a/b/aa;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lorg/c/a/b/z;->e:Lorg/c/a/b/aa;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 253
    :cond_5
    const/16 v2, 0x2e

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_6

    .line 255
    iget-object v2, p0, Lorg/c/a/b/z;->b:Lorg/c/a/d/l;

    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, p1, v3, v4}, Lorg/c/a/d/l;->a(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_5

    .line 257
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/b/aa;

    goto :goto_0

    .line 261
    :cond_6
    iget-object v0, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v0}, Lorg/c/a/d/l;->clear()V

    .line 376
    iget-object v0, p0, Lorg/c/a/b/z;->a:Lorg/c/a/d/l;

    invoke-virtual {v0}, Lorg/c/a/d/l;->clear()V

    .line 377
    iget-object v0, p0, Lorg/c/a/b/z;->b:Lorg/c/a/d/l;

    invoke-virtual {v0}, Lorg/c/a/d/l;->clear()V

    .line 378
    iput-object v1, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    .line 379
    iput-object v1, p0, Lorg/c/a/b/z;->d:Ljava/util/List;

    .line 380
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 381
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 154
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/c/a/b/z;->i:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 157
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PathSpec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-super {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    new-instance v3, Lorg/c/a/b/aa;

    invoke-direct {v3, v2, p2}, Lorg/c/a/b/aa;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v3}, Lorg/c/a/b/aa;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const-string v4, "/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    iput-object v3, p0, Lorg/c/a/b/z;->e:Lorg/c/a/b/aa;

    goto :goto_0

    .line 173
    :cond_2
    const-string v4, "/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v3, v4}, Lorg/c/a/b/aa;->a(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lorg/c/a/b/z;->a:Lorg/c/a/d/l;

    invoke-virtual {v5, v4, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v5, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v5, v4, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v4, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 181
    :cond_3
    const-string v4, "*."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    iget-object v4, p0, Lorg/c/a/b/z;->b:Lorg/c/a/d/l;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 183
    :cond_4
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    iget-boolean v4, p0, Lorg/c/a/b/z;->h:Z

    if-eqz v4, :cond_5

    .line 186
    iget-object v4, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v4, v2, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 189
    :cond_5
    iput-object v3, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    .line 190
    iget-object v2, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/c/a/b/z;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 196
    :cond_6
    invoke-virtual {v3, v2}, Lorg/c/a/b/aa;->a(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v4, v2, v3}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 202
    :cond_7
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 142
    invoke-virtual {p0, v0}, Lorg/c/a/b/z;->putAll(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 347
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 349
    check-cast v0, Ljava/lang/String;

    .line 350
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iput-object v2, p0, Lorg/c/a/b/z;->e:Lorg/c/a/b/aa;

    .line 368
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 352
    :cond_1
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lorg/c/a/b/z;->a:Lorg/c/a/d/l;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_2
    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    iget-object v1, p0, Lorg/c/a/b/z;->b:Lorg/c/a/d/l;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    iput-object v2, p0, Lorg/c/a/b/z;->f:Lorg/c/a/b/aa;

    .line 363
    iput-object v2, p0, Lorg/c/a/b/z;->d:Ljava/util/List;

    goto :goto_0

    .line 366
    :cond_4
    iget-object v1, p0, Lorg/c/a/b/z;->c:Lorg/c/a/d/l;

    invoke-virtual {v1, v0}, Lorg/c/a/d/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 134
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
