.class Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;
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
        "Landroid/content/ContentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2168
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ContentResolverProvider;->a()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
