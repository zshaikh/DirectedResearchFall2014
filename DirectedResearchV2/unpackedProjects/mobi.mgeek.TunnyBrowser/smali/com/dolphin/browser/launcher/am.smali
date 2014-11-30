.class Lcom/dolphin/browser/launcher/am;
.super Lcom/g/a/c;
.source "Folder.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 310
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x2

    iput v1, v0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->i()V

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/am;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v2, v2, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V

    .line 317
    return-void
.end method
