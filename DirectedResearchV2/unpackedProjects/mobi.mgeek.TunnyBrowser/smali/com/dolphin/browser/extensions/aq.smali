.class Lcom/dolphin/browser/extensions/aq;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/dolphin/browser/extensions/aq;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/extensions/aq;->a:Lcom/dolphin/browser/extensions/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 512
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/p;

    .line 514
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/p;->a()V

    goto :goto_0

    .line 516
    :cond_0
    return-void
.end method
