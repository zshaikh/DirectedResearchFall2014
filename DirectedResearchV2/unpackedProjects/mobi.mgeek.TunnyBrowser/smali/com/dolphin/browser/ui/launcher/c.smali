.class Lcom/dolphin/browser/ui/launcher/c;
.super Lcom/g/a/c;
.source "Folder.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/Folder;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/Folder;->a(Lcom/dolphin/browser/ui/launcher/Folder;I)I

    .line 135
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/Folder;->b(Lcom/dolphin/browser/ui/launcher/Folder;I)I

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/Folder;->a(Lcom/dolphin/browser/ui/launcher/Folder;)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/Folder;->c(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/c;->a:Lcom/dolphin/browser/ui/launcher/Folder;

    invoke-static {v2}, Lcom/dolphin/browser/ui/launcher/Folder;->b(Lcom/dolphin/browser/ui/launcher/Folder;)Lcom/dolphin/browser/launcher/be;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V

    .line 144
    return-void
.end method
