.class public Lcom/dolphin/browser/q/b/a;
.super Ljava/lang/Object;
.source "AsyncTaskRunner.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/dolphin/browser/q/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dolphin/browser/q/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/a;->a:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Lcom/dolphin/browser/q/b/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/b;-><init>(Lcom/dolphin/browser/q/b/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/a;->b:Lcom/dolphin/browser/q/b/b;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/a;)Lcom/dolphin/browser/q/b/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dolphin/browser/q/b/a;->b:Lcom/dolphin/browser/q/b/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/a;->a(I)Z

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/a;->a(I)Z

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/a;->a(I)Z

    .line 50
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/a;->a(I)Z

    .line 51
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/a;->a(I)Z

    .line 52
    return-void
.end method

.method public a(ILcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V
    .locals 3

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/b/d;

    .line 60
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/d;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-ne v0, v1, :cond_0

    .line 61
    :cond_2
    new-instance v0, Lcom/dolphin/browser/q/b/d;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/q/b/d;-><init>(Lcom/dolphin/browser/q/b/a;Lcom/dolphin/browser/q/b/c;)V

    .line 62
    iget-object v1, p0, Lcom/dolphin/browser/q/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/q/b/ar;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/d;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/b/ar;Lcom/dolphin/browser/q/b/c;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/dolphin/browser/q/b/d;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/b/d;-><init>(Lcom/dolphin/browser/q/b/a;Lcom/dolphin/browser/q/b/c;)V

    .line 70
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/q/b/ar;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 71
    return-void
.end method

.method public a(I)Z
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/q/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/b/d;

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/d;->e()Lcom/dolphin/browser/util/p;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v1, v2, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/d;->b(Z)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/dolphin/browser/q/b/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
