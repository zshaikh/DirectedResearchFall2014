.class interface abstract Lcom/google/inject/ConstructionProxy;
.super Ljava/lang/Object;
.source "ConstructionProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
.end method

.method public varargs abstract newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
