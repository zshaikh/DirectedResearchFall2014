.class final Lcom/google/common/collect/Multisets$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/common/collect/Multisets$1;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/Multisets$1;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/common/collect/Multisets$1;->b:I

    return v0
.end method
