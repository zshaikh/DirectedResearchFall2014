.class Lcom/dolphin/browser/DolphinService/ui/ae;
.super Ljava/lang/Object;
.source "DolphinAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ae;->b:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/ae;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ae;->b:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ae;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Ljava/lang/String;)V

    .line 249
    return-void
.end method
