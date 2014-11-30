.class public final Lcom/google/inject/internal/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/inject/internal/Iterators$1;

    invoke-direct {v0}, Lcom/google/inject/internal/Iterators$1;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Iterators;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 56
    new-instance v0, Lcom/google/inject/internal/Iterators$2;

    invoke-direct {v0}, Lcom/google/inject/internal/Iterators$2;-><init>()V

    sput-object v0, Lcom/google/inject/internal/Iterators;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/google/inject/internal/Iterators$4;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Iterators$4;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static emptyIterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/google/inject/internal/Iterators;->EMPTY_ITERATOR:Ljava/util/Iterator;

    check-cast v0, Lcom/google/inject/internal/UnmodifiableIterator;

    return-object v0
.end method

.method public static emptyListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/google/inject/internal/Iterators;->EMPTY_LIST_ITERATOR:Ljava/util/ListIterator;

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/google/inject/internal/Iterators$6;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Iterators$6;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forArray([Ljava/lang/Object;II)Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 263
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/inject/internal/Preconditions;->checkArgument(Z)V

    .line 264
    add-int v0, p1, p2

    .line 267
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/inject/internal/Preconditions;->checkPositionIndexes(III)V

    .line 271
    new-instance v1, Lcom/google/inject/internal/Iterators$7;

    invoke-direct {v1, p1, v0, p0}, Lcom/google/inject/internal/Iterators$7;-><init>(II[Ljava/lang/Object;)V

    return-object v1

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    return-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/google/inject/internal/Iterators$8;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Iterators$8;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "[]"

    .line 123
    :goto_0
    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static transform(Ljava/util/Iterator;Lcom/google/inject/internal/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lcom/google/inject/internal/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/google/inject/internal/Iterators$5;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/Iterators$5;-><init>(Ljava/util/Iterator;Lcom/google/inject/internal/Function;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/google/inject/internal/Iterators$3;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Iterators$3;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
