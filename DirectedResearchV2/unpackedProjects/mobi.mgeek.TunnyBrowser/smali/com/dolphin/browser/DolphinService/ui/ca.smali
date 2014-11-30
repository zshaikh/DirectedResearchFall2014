.class Lcom/dolphin/browser/DolphinService/ui/ca;
.super Ljava/lang/Object;
.source "MasterPasswordEncryptPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/l/e;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Lcom/dolphin/browser/l/e;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->a:Lcom/dolphin/browser/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 84
    const-string v0, ""

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->a:Lcom/dolphin/browser/l/e;

    invoke-virtual {v1}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->a:Lcom/dolphin/browser/l/e;

    invoke-virtual {v1}, Lcom/dolphin/browser/l/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x1

    .line 93
    :goto_0
    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v3}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->d(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->e(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/l/l;->c(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ca;->b:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e036e

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_1
.end method
