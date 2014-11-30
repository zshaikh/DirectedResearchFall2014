.class public abstract Lcom/google/inject/internal/ImmutableList;
.super Lcom/google/inject/internal/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_LIST:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;-><init>(Lcom/google/inject/internal/ImmutableList$1;)V

    sput-object v0, Lcom/google/inject/internal/ImmutableList;->EMPTY_IMMUTABLE_LIST:Lcom/google/inject/internal/ImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/ImmutableList$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableList;-><init>()V

    return-void
.end method

.method private static varargs copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 533
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 535
    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 536
    if-nez v4, :cond_0

    .line 537
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    .line 535
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 541
    :cond_1
    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    instance-of v0, p0, Lcom/google/inject/internal/ImmutableList;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lcom/google/inject/internal/ImmutableList;

    move-object v0, p0

    .line 158
    :goto_0
    return-object v0

    .line 153
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 155
    check-cast p0, Ljava/util/Collection;

    .line 156
    invoke-static {p0}, Lcom/google/inject/internal/ImmutableList;->copyOfInternal(Ljava/util/Collection;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/google/inject/internal/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->copyOfInternal(Ljava/util/ArrayList;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    new-array v0, p1, [Ljava/lang/Object;

    .line 575
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/ArrayList;)Lcom/google/inject/internal/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<+TE;>;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList;->nullChecked([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/google/inject/internal/ImmutableList$1;)V

    goto :goto_0
.end method

.method private static copyOfInternal(Ljava/util/Collection;)Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 196
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/google/inject/internal/ImmutableList;->createFromIterable(Ljava/lang/Iterable;I)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFromIterable(Ljava/lang/Iterable;I)Lcom/google/inject/internal/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<*>;I)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 546
    new-array v0, p1, [Ljava/lang/Object;

    .line 549
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    move v3, p1

    move v0, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 550
    if-ne v0, v3, :cond_0

    .line 552
    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x3

    .line 553
    invoke-static {v2, v3}, Lcom/google/inject/internal/ImmutableList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 555
    :cond_0
    if-nez v4, :cond_1

    .line 556
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_1
    add-int/lit8 v5, v0, 0x1

    aput-object v4, v2, v0

    move v0, v5

    goto :goto_0

    .line 561
    :cond_2
    if-nez v0, :cond_3

    .line 562
    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    .line 569
    :goto_1
    return-object v0

    .line 565
    :cond_3
    if-eq v0, v3, :cond_4

    .line 566
    invoke-static {v2, v0}, Lcom/google/inject/internal/ImmutableList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 569
    :goto_2
    new-instance v2, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v6, v0, v3}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;IILcom/google/inject/internal/ImmutableList$1;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method private static nullChecked([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 186
    aget-object v2, p0, v0

    if-nez v2, :cond_0

    .line 187
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object p0
.end method

.method public static of()Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/inject/internal/ImmutableList;->EMPTY_IMMUTABLE_LIST:Lcom/google/inject/internal/ImmutableList;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/google/inject/internal/ImmutableList$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/google/inject/internal/ImmutableList$1;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 124
    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    invoke-static {p0}, Lcom/google/inject/internal/ImmutableList;->copyIntoArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;Lcom/google/inject/internal/ImmutableList$1;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract subList(II)Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/ImmutableList;->subList(II)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method
