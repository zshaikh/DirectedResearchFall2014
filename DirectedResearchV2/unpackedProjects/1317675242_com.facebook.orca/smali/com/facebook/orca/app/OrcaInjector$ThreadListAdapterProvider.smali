.class Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;
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
        "Lcom/facebook/orca/threadlist/ThreadListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadlist/ThreadListAdapter;
    .locals 7

    .prologue
    .line 1823
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadlist/ThreadListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Landroid/view/LayoutInflater;Lcom/facebook/orca/threads/ThreadDateUtil;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ThreadListAdapterProvider;->a()Lcom/facebook/orca/threadlist/ThreadListAdapter;

    move-result-object v0

    return-object v0
.end method
