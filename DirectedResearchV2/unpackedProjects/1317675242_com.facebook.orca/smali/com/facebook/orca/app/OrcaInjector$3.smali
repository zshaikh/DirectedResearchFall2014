.class Lcom/facebook/orca/app/OrcaInjector$3;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$3;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
