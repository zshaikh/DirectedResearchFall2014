.class public final Lcom/google/inject/spi/Elements;
.super Ljava/lang/Object;
.source "Elements.java"


# static fields
.field private static final GET_INSTANCE_VISITOR:Lcom/google/inject/spi/BindingTargetVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/BindingTargetVisitor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/inject/spi/Elements$1;

    invoke-direct {v0}, Lcom/google/inject/spi/Elements$1;-><init>()V

    sput-object v0, Lcom/google/inject/spi/Elements;->GET_INSTANCE_VISITOR:Lcom/google/inject/spi/BindingTargetVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Stage;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/google/inject/Stage;Lcom/google/inject/spi/Elements$1;)V

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Module;

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/inject/spi/Elements$RecordingBinder;->install(Lcom/google/inject/Module;)V

    goto :goto_0

    .line 103
    :cond_0
    # getter for: Lcom/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;
    invoke-static {v0}, Lcom/google/inject/spi/Elements$RecordingBinder;->access$100(Lcom/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getElements(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/google/inject/Stage;->DEVELOPMENT:Lcom/google/inject/Stage;

    invoke-static {v0, p0}, Lcom/google/inject/spi/Elements;->getElements(Lcom/google/inject/Stage;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
