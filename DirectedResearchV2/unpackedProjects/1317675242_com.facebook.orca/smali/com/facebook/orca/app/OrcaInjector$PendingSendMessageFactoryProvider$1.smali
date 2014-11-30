.class Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider$1;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/facebook/orca/cache/PendingSendMessage$Factory;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider$1;->a:Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/cache/PendingSendMessage;
    .locals 5

    .prologue
    .line 704
    new-instance v2, Lcom/facebook/orca/cache/PendingSendMessage;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider$1;->a:Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider$1;->a:Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;

    iget-object v1, v1, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider$1;->a:Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;

    iget-object v3, v3, Lcom/facebook/orca/app/OrcaInjector$PendingSendMessageFactoryProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/facebook/orca/cache/PendingSendMessage;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/cache/SendMessageManager;Landroid/os/Handler;Lcom/facebook/orca/threads/Message;)V

    return-object v2
.end method
