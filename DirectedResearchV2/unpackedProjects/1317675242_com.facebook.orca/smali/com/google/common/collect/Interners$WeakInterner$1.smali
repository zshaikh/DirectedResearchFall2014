.class Lcom/google/common/collect/Interners$WeakInterner$1;
.super Ljava/lang/Object;
.source "Interners.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/Interners$WeakInterner;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->c:Lcom/google/common/collect/Interners$WeakInterner;

    iput p2, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->a:I

    iput-object p3, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->a:I

    if-eq v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    check-cast p1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 99
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->a:I

    return v0
.end method
