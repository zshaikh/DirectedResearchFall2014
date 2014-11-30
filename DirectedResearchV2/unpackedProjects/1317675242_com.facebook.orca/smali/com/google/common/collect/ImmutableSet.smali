.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 3

    .prologue
    const/high16 v2, 0x40000000

    .line 222
    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_0

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    if-ge p0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "collection too large"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v2

    .line 228
    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 144
    .line 145
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 147
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 148
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 149
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 150
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 151
    const/4 v1, 0x5

    aput-object p5, v0, v1

    move v1, v3

    .line 152
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 153
    sub-int v2, v1, v3

    aget-object v2, p6, v2

    aput-object v2, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 336
    instance-of v1, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v1, :cond_0

    .line 339
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    move-object v1, v0

    .line 340
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 160
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(I)I

    move-result v0

    .line 161
    new-array v1, v0, [Ljava/lang/Object;

    .line 162
    sub-int v2, v0, v12

    .line 163
    const/4 v3, 0x0

    move v4, v11

    move-object v5, v3

    move v3, v11

    .line 165
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 166
    aget-object v6, p0, v3

    .line 167
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 168
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->a(I)I

    move-result v8

    .line 169
    :goto_1
    and-int v9, v8, v2

    .line 170
    aget-object v10, v1, v9

    .line 171
    if-nez v10, :cond_2

    .line 172
    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    aput-object v6, v1, v9

    .line 177
    add-int/2addr v4, v7

    .line 165
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 180
    if-nez v5, :cond_1

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v11

    .line 183
    :goto_2
    if-ge v6, v3, :cond_1

    .line 184
    aget-object v7, p0, v6

    .line 185
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 168
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 192
    :cond_4
    if-nez v5, :cond_5

    move-object v3, p0

    .line 195
    :goto_3
    array-length v5, v3

    if-ne v5, v12, :cond_6

    .line 198
    aget-object v0, v3, v11

    .line 199
    new-instance v1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v1, v0, v4}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .line 205
    :goto_4
    return-object v0

    .line 192
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 200
    :cond_6
    array-length v5, v3

    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->a(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-le v0, v5, :cond_7

    .line 203
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_4

    .line 205
    :cond_7
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method private static b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 350
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    .line 360
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 352
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 355
    :pswitch_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 356
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->a:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method d()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    if-ne p1, p0, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    .line 375
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 379
    const/4 v1, 0x0

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 385
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
