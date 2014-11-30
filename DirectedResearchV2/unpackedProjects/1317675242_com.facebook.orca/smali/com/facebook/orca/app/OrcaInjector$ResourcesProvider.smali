.class Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;
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
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2160
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ResourcesProvider;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
