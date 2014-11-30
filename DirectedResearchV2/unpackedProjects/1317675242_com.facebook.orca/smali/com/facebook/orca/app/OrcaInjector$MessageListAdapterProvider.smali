.class Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;
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
        "Lcom/facebook/orca/threadview/MessageListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1852
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadview/MessageListAdapter;
    .locals 4

    .prologue
    .line 1856
    new-instance v0, Lcom/facebook/orca/threadview/MessageListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/threadview/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MessageListAdapterProvider;->a()Lcom/facebook/orca/threadview/MessageListAdapter;

    move-result-object v0

    return-object v0
.end method
