.class Lcom/dolphin/browser/launcher/bs;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bk;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bs;->c:Lcom/dolphin/browser/launcher/bk;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/bs;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/bs;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bs;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/dolphin/browser/launcher/bs;->c:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v3, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bs;->c:Lcom/dolphin/browser/launcher/bk;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->l()V

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bs;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bs;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 210
    :cond_1
    return-void
.end method
