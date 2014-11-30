.class Lcom/dolphin/browser/titlebar/i;
.super Ljava/lang/Object;
.source "ProgressController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/h;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/i;->a:Lcom/dolphin/browser/titlebar/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/i;->a:Lcom/dolphin/browser/titlebar/h;

    iget-object v0, v0, Lcom/dolphin/browser/titlebar/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/titlebar/e;

    .line 31
    invoke-interface {v0}, Lcom/dolphin/browser/titlebar/e;->a()V

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
