.class final Lcom/google/inject/Initializables$1;
.super Ljava/lang/Object;
.source "Initializables.java"

# interfaces
.implements Lcom/google/inject/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Initializable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/inject/Initializables$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/inject/Initializables$1;->val$instance:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/inject/Initializables$1;->val$instance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
