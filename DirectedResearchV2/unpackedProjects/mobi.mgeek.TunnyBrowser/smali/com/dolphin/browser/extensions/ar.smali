.class Lcom/dolphin/browser/extensions/ar;
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
    .line 1828
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ar;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ar;->a:Lcom/dolphin/browser/extensions/al;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1832
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/p;

    .line 1834
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/p;->b()V

    goto :goto_0

    .line 1836
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/extensions/as;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/extensions/as;-><init>(Lcom/dolphin/browser/extensions/ar;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1843
    return-void
.end method
