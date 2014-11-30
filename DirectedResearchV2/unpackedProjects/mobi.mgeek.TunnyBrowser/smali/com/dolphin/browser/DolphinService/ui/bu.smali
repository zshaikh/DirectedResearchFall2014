.class Lcom/dolphin/browser/DolphinService/ui/bu;
.super Ljava/lang/Object;
.source "MasterPasswordCreateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a()Lcom/dolphin/browser/util/bx;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0409

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e040a

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 74
    :pswitch_4
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bu;->a:Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e040c

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
