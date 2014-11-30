.class Lcom/dolphin/browser/launcher/bd;
.super Lcom/g/a/c;
.source "FolderIcon.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/az;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/az;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(Lcom/dolphin/browser/launcher/az;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bd;->a:Lcom/dolphin/browser/launcher/az;

    invoke-static {v0, v2}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;Z)Z

    .line 214
    return-void
.end method
