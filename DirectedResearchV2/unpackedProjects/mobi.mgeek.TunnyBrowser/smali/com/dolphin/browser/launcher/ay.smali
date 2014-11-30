.class Lcom/dolphin/browser/launcher/ay;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/cl;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/dolphin/browser/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/FolderIcon;Lcom/dolphin/browser/launcher/cl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ay;->c:Lcom/dolphin/browser/launcher/FolderIcon;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/ay;->a:Lcom/dolphin/browser/launcher/cl;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/ay;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ay;->c:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/FolderIcon;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ay;->a:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ay;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ay;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ay;->c:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 376
    return-void
.end method
