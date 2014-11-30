.class Lcom/google/inject/util/Modules$ModuleWriter;
.super Lcom/google/inject/spi/DefaultElementVisitor;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/DefaultElementVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final binder:Lcom/google/inject/Binder;


# direct methods
.method constructor <init>(Lcom/google/inject/Binder;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/inject/spi/DefaultElementVisitor;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/inject/util/Modules$ModuleWriter;->binder:Lcom/google/inject/Binder;

    .line 256
    return-void
.end method


# virtual methods
.method protected bridge synthetic visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$ModuleWriter;->visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected visitOther(Lcom/google/inject/spi/Element;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/inject/util/Modules$ModuleWriter;->binder:Lcom/google/inject/Binder;

    invoke-interface {p1, v0}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method writeAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/spi/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Element;

    .line 265
    invoke-interface {v0, p0}, Lcom/google/inject/spi/Element;->acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method
