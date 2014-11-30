.class Lcom/dolphin/browser/launcher/ao;
.super Lcom/g/a/c;
.source "Folder.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 355
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->r()V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    iput v2, v0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/ao;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v2, v2, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V

    .line 351
    return-void
.end method
