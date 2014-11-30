.class Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;->b:Ljava/lang/String;

    .line 1974
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$SystemServiceProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
