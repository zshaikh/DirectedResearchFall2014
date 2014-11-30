.class Lcom/dolphin/browser/ui/n;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

.field final synthetic b:Lcom/dolphin/browser/ui/AlertController;

.field final synthetic c:Lcom/dolphin/browser/ui/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Lcom/dolphin/browser/ui/AlertController$RecycleListView;Lcom/dolphin/browser/ui/AlertController;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/dolphin/browser/ui/n;->c:Lcom/dolphin/browser/ui/h;

    iput-object p2, p0, Lcom/dolphin/browser/ui/n;->a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/dolphin/browser/ui/n;->b:Lcom/dolphin/browser/ui/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/dolphin/browser/ui/n;->c:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/dolphin/browser/ui/n;->c:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->G:[Z

    iget-object v1, p0, Lcom/dolphin/browser/ui/n;->a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/n;->c:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->L:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/dolphin/browser/ui/n;->b:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->h(Lcom/dolphin/browser/ui/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/n;->a:Lcom/dolphin/browser/ui/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/dolphin/browser/ui/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1054
    return-void
.end method
