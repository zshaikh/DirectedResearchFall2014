.class Lcom/dolphin/browser/launcher/cs;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/cc;


# instance fields
.field a:Lcom/dolphin/browser/launcher/CellLayout;

.field b:I

.field c:I

.field final synthetic d:Lcom/dolphin/browser/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/launcher/Workspace;Lcom/dolphin/browser/launcher/CellLayout;II)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    iput-object p2, p0, Lcom/dolphin/browser/launcher/cs;->a:Lcom/dolphin/browser/launcher/CellLayout;

    .line 964
    iput p3, p0, Lcom/dolphin/browser/launcher/cs;->b:I

    .line 965
    iput p4, p0, Lcom/dolphin/browser/launcher/cs;->c:I

    .line 966
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/a;)V
    .locals 4

    .prologue
    .line 969
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    new-instance v1, Lcom/dolphin/browser/launcher/az;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/launcher/az;-><init>(Landroid/content/Context;Lcom/dolphin/browser/launcher/FolderIcon;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/Workspace;Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/az;

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/cs;->b:I

    iget v2, p0, Lcom/dolphin/browser/launcher/cs;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/az;->a(II)V

    .line 973
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cs;->a:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/CellLayout;)V

    .line 974
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/az;->a()V

    .line 975
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->a:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/Workspace;->d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/az;)V

    .line 976
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cs;->d:Lcom/dolphin/browser/launcher/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(I)V

    .line 977
    return-void
.end method
