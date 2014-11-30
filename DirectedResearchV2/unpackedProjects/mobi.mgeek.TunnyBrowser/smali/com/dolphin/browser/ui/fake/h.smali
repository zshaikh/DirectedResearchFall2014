.class Lcom/dolphin/browser/ui/fake/h;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/fake/AlertController;

.field final synthetic b:Lcom/dolphin/browser/ui/fake/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/c;Lcom/dolphin/browser/ui/fake/AlertController;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/h;->b:Lcom/dolphin/browser/ui/fake/c;

    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/h;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/h;->b:Lcom/dolphin/browser/ui/fake/c;

    iget-object v0, v0, Lcom/dolphin/browser/ui/fake/c;->A:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/h;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->h(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1240
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/h;->b:Lcom/dolphin/browser/ui/fake/c;

    iget-boolean v0, v0, Lcom/dolphin/browser/ui/fake/c;->K:Z

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/h;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->h(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1243
    :cond_0
    return-void
.end method
