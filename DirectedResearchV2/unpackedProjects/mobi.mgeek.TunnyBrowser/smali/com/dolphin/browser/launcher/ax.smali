.class Lcom/dolphin/browser/launcher/ax;
.super Lcom/g/a/c;
.source "FolderIcon.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ax;->a:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ax;->a:Lcom/dolphin/browser/launcher/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    .line 331
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ax;->a:Lcom/dolphin/browser/launcher/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ax;->a:Lcom/dolphin/browser/launcher/FolderIcon;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/dolphin/browser/launcher/FolderIcon;->j:Landroid/graphics/Bitmap;

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ax;->a:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 337
    return-void
.end method
