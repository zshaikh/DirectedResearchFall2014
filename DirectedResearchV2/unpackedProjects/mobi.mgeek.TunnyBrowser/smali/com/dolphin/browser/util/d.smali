.class Lcom/dolphin/browser/util/d;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/util/b;)V
    .locals 1

    .prologue
    .line 582
    iput-object p1, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v0}, Lcom/dolphin/browser/util/b;->a(Lcom/dolphin/browser/util/b;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/util/d;->b:I

    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v0}, Lcom/dolphin/browser/util/b;->b(Lcom/dolphin/browser/util/b;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/util/d;->c:I

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/util/d;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/util/b;Lcom/dolphin/browser/util/c;)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/d;-><init>(Lcom/dolphin/browser/util/b;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 601
    iget v0, p0, Lcom/dolphin/browser/util/d;->b:I

    iget v1, p0, Lcom/dolphin/browser/util/d;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 605
    iget v0, p0, Lcom/dolphin/browser/util/d;->b:I

    iget v1, p0, Lcom/dolphin/browser/util/d;->c:I

    if-ne v0, v1, :cond_0

    .line 606
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v0}, Lcom/dolphin/browser/util/b;->c(Lcom/dolphin/browser/util/b;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/util/d;->b:I

    aget-object v0, v0, v1

    .line 610
    iget-object v1, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v1}, Lcom/dolphin/browser/util/b;->b(Lcom/dolphin/browser/util/b;)I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/util/d;->c:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 611
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 612
    :cond_2
    iget v1, p0, Lcom/dolphin/browser/util/d;->b:I

    iput v1, p0, Lcom/dolphin/browser/util/d;->d:I

    .line 613
    iget v1, p0, Lcom/dolphin/browser/util/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v2}, Lcom/dolphin/browser/util/b;->c(Lcom/dolphin/browser/util/b;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/util/d;->b:I

    .line 614
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/dolphin/browser/util/d;->d:I

    if-gez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    iget v1, p0, Lcom/dolphin/browser/util/d;->d:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/b;->a(Lcom/dolphin/browser/util/b;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget v0, p0, Lcom/dolphin/browser/util/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v1}, Lcom/dolphin/browser/util/b;->c(Lcom/dolphin/browser/util/b;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/util/d;->b:I

    .line 622
    iget-object v0, p0, Lcom/dolphin/browser/util/d;->a:Lcom/dolphin/browser/util/b;

    invoke-static {v0}, Lcom/dolphin/browser/util/b;->b(Lcom/dolphin/browser/util/b;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/util/d;->c:I

    .line 624
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/util/d;->d:I

    .line 625
    return-void
.end method
