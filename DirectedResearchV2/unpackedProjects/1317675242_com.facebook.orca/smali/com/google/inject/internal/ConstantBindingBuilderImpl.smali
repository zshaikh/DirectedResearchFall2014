.class public final Lcom/google/inject/internal/ConstantBindingBuilderImpl;
.super Lcom/google/inject/internal/AbstractBindingBuilder;
.source "ConstantBindingBuilderImpl.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
.implements Lcom/google/inject/binder/ConstantBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/AbstractBindingBuilder",
        "<TT;>;",
        "Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;",
        "Lcom/google/inject/binder/ConstantBindingBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->NULL_KEY:Lcom/google/inject/Key;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "ConstantBindingBuilder"

    return-object v0
.end method
