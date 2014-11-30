.class final Lcom/dolphin/browser/launcher/av;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/launcher/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/launcher/FolderIcon;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;ILcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/launcher/av;->a:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/dolphin/browser/launcher/av;->b:I

    iput-object p3, p0, Lcom/dolphin/browser/launcher/av;->c:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/launcher/Folder;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/launcher/av;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/dolphin/browser/launcher/av;->b:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/Folder;->a(Landroid/view/LayoutInflater;I)Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/launcher/av;->c:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/FolderIcon;)V

    .line 111
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/av;->a()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    return-object v0
.end method
