.class final Lcom/dolphin/browser/controls/j;
.super Ljava/util/ArrayList;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2033
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2034
    iput-object p1, p0, Lcom/dolphin/browser/controls/j;->a:Ljava/lang/Class;

    .line 2035
    iput-object p2, p0, Lcom/dolphin/browser/controls/j;->b:Ljava/lang/Class;

    .line 2036
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/dolphin/browser/controls/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/dolphin/browser/controls/j",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2039
    new-instance v0, Lcom/dolphin/browser/controls/j;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/controls/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/controls/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/controls/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2048
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/j;->size()I

    move-result v4

    .line 2049
    iget-object v0, p0, Lcom/dolphin/browser/controls/j;->a:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2050
    iget-object v1, p0, Lcom/dolphin/browser/controls/j;->b:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 2051
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    .line 2052
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/controls/j;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 2053
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/controls/j;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 2051
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2055
    :cond_0
    new-instance v2, Lcom/dolphin/browser/controls/p;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/dolphin/browser/controls/p;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Lcom/dolphin/browser/controls/a;)V

    return-object v2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 2043
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/j;->add(Ljava/lang/Object;)Z

    .line 2044
    return-void
.end method
