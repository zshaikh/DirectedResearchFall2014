.class Lcom/dolphin/browser/launcher/bu;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/CellLayout;

.field final synthetic b:Lcom/dolphin/browser/launcher/bi;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/bi;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bu;->d:Lcom/dolphin/browser/launcher/bk;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/bu;->a:Lcom/dolphin/browser/launcher/CellLayout;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/bu;->b:Lcom/dolphin/browser/launcher/bi;

    iput-object p4, p0, Lcom/dolphin/browser/launcher/bu;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bu;->a:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/bu;->b:Lcom/dolphin/browser/launcher/bi;

    iget v2, v2, Lcom/dolphin/browser/launcher/bi;->h:I

    iget-object v3, p0, Lcom/dolphin/browser/launcher/bu;->b:Lcom/dolphin/browser/launcher/bi;

    iget v3, v3, Lcom/dolphin/browser/launcher/bi;->i:I

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/launcher/bu;->d:Lcom/dolphin/browser/launcher/bk;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/bu;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/dolphin/browser/launcher/bu;->b:Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    .line 533
    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bu;->a:Lcom/dolphin/browser/launcher/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bu;->d:Lcom/dolphin/browser/launcher/bk;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->l()V

    .line 537
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 531
    goto :goto_0
.end method
