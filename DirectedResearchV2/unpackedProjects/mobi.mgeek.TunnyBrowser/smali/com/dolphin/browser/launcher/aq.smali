.class Lcom/dolphin/browser/launcher/aq;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/cc;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/dolphin/browser/launcher/aq;->a:Lcom/dolphin/browser/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/a;)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/launcher/aq;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/aq;->a:Lcom/dolphin/browser/launcher/Folder;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    .line 411
    return-void
.end method
