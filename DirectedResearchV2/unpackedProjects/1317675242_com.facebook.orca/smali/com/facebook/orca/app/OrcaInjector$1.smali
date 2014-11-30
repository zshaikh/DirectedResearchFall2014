.class Lcom/facebook/orca/app/OrcaInjector$1;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaInjector.java"


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
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$1;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
