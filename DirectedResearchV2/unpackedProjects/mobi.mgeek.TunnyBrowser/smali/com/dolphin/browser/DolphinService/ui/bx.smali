.class Lcom/dolphin/browser/DolphinService/ui/bx;
.super Ljava/lang/Object;
.source "MasterPasswordDecryptPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bx;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e036e

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordDecryptPasswordDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method
