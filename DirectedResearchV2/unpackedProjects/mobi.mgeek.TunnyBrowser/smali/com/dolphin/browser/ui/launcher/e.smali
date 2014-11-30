.class Lcom/dolphin/browser/ui/launcher/e;
.super Lcom/g/a/c;
.source "Folder.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/Folder;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/Folder;->d(Lcom/dolphin/browser/ui/launcher/Folder;I)I

    .line 232
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/Folder;->e(Lcom/dolphin/browser/ui/launcher/Folder;)V

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/launcher/Folder;->c(Lcom/dolphin/browser/ui/launcher/Folder;I)I

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/Folder;->g(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/e;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v2}, Lcom/dolphin/browser/ui/launcher/Folder;->f(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/be;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V

    .line 226
    return-void
.end method
