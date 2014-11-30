.class final Lcom/google/inject/internal/Iterators$6;
.super Lcom/google/inject/internal/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field i:I

.field final length:I

.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/inject/internal/Iterators$6;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/inject/internal/UnmodifiableIterator;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/google/inject/internal/Iterators$6;->val$array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/google/inject/internal/Iterators$6;->length:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/inject/internal/Iterators$6;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/google/inject/internal/Iterators$6;->i:I

    iget v1, p0, Lcom/google/inject/internal/Iterators$6;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/Iterators$6;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/inject/internal/Iterators$6;->i:I

    aget-object v0, v0, v1

    .line 240
    iget v1, p0, Lcom/google/inject/internal/Iterators$6;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/inject/internal/Iterators$6;->i:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
