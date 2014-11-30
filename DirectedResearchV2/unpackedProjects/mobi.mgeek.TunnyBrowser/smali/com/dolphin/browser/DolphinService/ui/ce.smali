.class Lcom/dolphin/browser/DolphinService/ui/ce;
.super Ljava/lang/Object;
.source "MasterPasswordRemoveDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ce;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e036e

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method
