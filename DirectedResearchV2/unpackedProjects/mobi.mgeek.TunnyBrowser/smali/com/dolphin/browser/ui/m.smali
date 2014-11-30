.class Lcom/dolphin/browser/ui/m;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/AlertController;

.field final synthetic b:Lcom/dolphin/browser/ui/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/h;Lcom/dolphin/browser/ui/AlertController;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/dolphin/browser/ui/m;->b:Lcom/dolphin/browser/ui/h;

    iput-object p2, p0, Lcom/dolphin/browser/ui/m;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/dolphin/browser/ui/m;->b:Lcom/dolphin/browser/ui/h;

    iget-object v0, v0, Lcom/dolphin/browser/ui/h;->z:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/dolphin/browser/ui/m;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->h(Lcom/dolphin/browser/ui/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1041
    iget-object v0, p0, Lcom/dolphin/browser/ui/m;->b:Lcom/dolphin/browser/ui/h;

    iget-boolean v0, v0, Lcom/dolphin/browser/ui/h;->J:Z

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/dolphin/browser/ui/m;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->h(Lcom/dolphin/browser/ui/AlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1044
    :cond_0
    return-void
.end method
