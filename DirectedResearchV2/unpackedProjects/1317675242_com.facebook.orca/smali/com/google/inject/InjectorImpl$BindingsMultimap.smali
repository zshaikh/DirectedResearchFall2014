.class Lcom/google/inject/InjectorImpl$BindingsMultimap;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# instance fields
.field final multimap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Binding",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/InjectorImpl$1;)V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/google/inject/InjectorImpl$BindingsMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method put(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/inject/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 664
    if-nez v0, :cond_0

    .line 665
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/google/inject/InjectorImpl$BindingsMultimap;->multimap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method
