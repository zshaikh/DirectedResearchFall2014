.class Lcom/dolphin/browser/download/o;
.super Ljava/lang/Object;
.source "FileCategoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/n;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/n;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolphin/browser/download/o;->a:Lcom/dolphin/browser/download/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/download/o;->a:Lcom/dolphin/browser/download/n;

    iget-object v0, v0, Lcom/dolphin/browser/download/n;->a:Lcom/dolphin/browser/download/m;

    invoke-static {v0}, Lcom/dolphin/browser/download/m;->b(Lcom/dolphin/browser/download/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/bl;

    .line 131
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->b()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/o;->a:Lcom/dolphin/browser/download/n;

    iget-object v0, v0, Lcom/dolphin/browser/download/n;->a:Lcom/dolphin/browser/download/m;

    invoke-static {v0}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/m;)Lcom/dolphin/browser/download/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bn;->b()V

    .line 134
    return-void
.end method
