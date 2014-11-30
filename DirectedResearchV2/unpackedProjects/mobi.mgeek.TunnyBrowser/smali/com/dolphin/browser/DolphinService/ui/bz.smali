.class Lcom/dolphin/browser/DolphinService/ui/bz;
.super Ljava/lang/Object;
.source "MasterPasswordEncryptPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bz;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bz;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bz;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;)V

    .line 76
    return-void
.end method
