.class Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/common/names/NameSplitter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2107
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/names/NameSplitter;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/names/NameSplitter;->a(Landroid/content/Context;)Lcom/facebook/orca/common/names/NameSplitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$NameSplitterProvider;->a()Lcom/facebook/orca/common/names/NameSplitter;

    move-result-object v0

    return-object v0
.end method