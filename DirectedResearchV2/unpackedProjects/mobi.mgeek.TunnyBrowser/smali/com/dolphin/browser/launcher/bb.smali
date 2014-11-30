.class Lcom/dolphin/browser/launcher/bb;
.super Lcom/g/a/c;
.source "FolderIcon.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/az;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/az;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bb;->a:Lcom/dolphin/browser/launcher/az;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bb;->a:Lcom/dolphin/browser/launcher/az;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bb;->a:Lcom/dolphin/browser/launcher/az;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bb;->a:Lcom/dolphin/browser/launcher/az;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/az;Z)Z

    .line 182
    return-void
.end method
