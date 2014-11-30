.class Lcom/dolphin/browser/ui/fake/i;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

.field final synthetic b:Lcom/dolphin/browser/ui/fake/AlertController;

.field final synthetic c:Lcom/dolphin/browser/ui/fake/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/c;Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;Lcom/dolphin/browser/ui/fake/AlertController;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/i;->c:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/i;->a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/dolphin/browser/ui/fake/i;->b:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/i;->c:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/i;->c:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->H:[Z

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/i;->a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/i;->c:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->M:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/i;->b:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->h(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/i;->a:Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/dolphin/browser/ui/fake/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1253
    return-void
.end method
