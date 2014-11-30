.class Lcom/dolphin/browser/DolphinService/ui/i;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/i;->c:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/i;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/ui/i;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/i;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/i;->c:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/i;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->a(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;I)V

    .line 139
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/i;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
