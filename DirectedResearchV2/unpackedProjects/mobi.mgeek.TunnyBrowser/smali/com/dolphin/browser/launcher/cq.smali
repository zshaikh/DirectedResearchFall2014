.class Lcom/dolphin/browser/launcher/cq;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Workspace;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cq;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cq;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cq;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/FolderIcon;)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cq;->a:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->k()V

    .line 666
    return-void
.end method
