.class public Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$1;,
        Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;,
        Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;, "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap<TK;TV;>;"
    .local p1, "valueCreator":Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;, "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iput-object p1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;->b:Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;

    .line 12
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;, "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;

    .line 16
    if-nez v0, :cond_0

    .line 17
    new-instance v1, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;-><init>(Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$1;)V

    .line 18
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;

    .line 19
    if-nez v0, :cond_0

    move-object v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;->b:Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;

    invoke-virtual {v0, p1, v1}, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a(Ljava/lang/Object;Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
