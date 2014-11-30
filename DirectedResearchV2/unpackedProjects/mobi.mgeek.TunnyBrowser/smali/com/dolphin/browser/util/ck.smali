.class public Lcom/dolphin/browser/util/ck;
.super Ljava/util/LinkedList;
.source "SizeLimitStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 33
    iput p1, p0, Lcom/dolphin/browser/util/ck;->a:I

    .line 34
    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ck;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/ck;->addFirst(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ck;->size()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/util/ck;->a:I

    if-le v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ck;->removeLast()Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method
