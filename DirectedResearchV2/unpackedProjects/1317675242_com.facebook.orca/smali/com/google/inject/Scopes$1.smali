.class final Lcom/google/inject/Scopes$1;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/google/inject/Scope;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scope(Lcom/google/inject/Key;Lcom/google/inject/Provider;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/Provider",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/google/inject/Scopes$1$1;

    invoke-direct {v0, p0, p2}, Lcom/google/inject/Scopes$1$1;-><init>(Lcom/google/inject/Scopes$1;Lcom/google/inject/Provider;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Scopes.SINGLETON"

    return-object v0
.end method
