.class Lcom/facebook/orca/server/OrcaService$2;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaService;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaService$2;->a:Lcom/facebook/orca/server/OrcaService;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
