.class Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;
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
        "Lcom/facebook/orca/threadview/ThreadMemberListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1863
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadview/ThreadMemberListAdapter;
    .locals 5

    .prologue
    .line 1867
    new-instance v2, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Landroid/view/LayoutInflater;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ThreadMemberListAdapterProvider;->a()Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    move-result-object v0

    return-object v0
.end method
