.class Lcom/dolphin/browser/DolphinService/ui/cj;
.super Ljava/lang/Object;
.source "PasswordAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ch;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ch;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cj;->a:Lcom/dolphin/browser/DolphinService/ui/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cj;->a:Lcom/dolphin/browser/DolphinService/ui/ch;

    iget-object v0, v0, Lcom/dolphin/browser/DolphinService/ui/ch;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cj;->a:Lcom/dolphin/browser/DolphinService/ui/ch;

    iget-object v1, v1, Lcom/dolphin/browser/DolphinService/ui/ch;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/cg;->b(Lcom/dolphin/browser/DolphinService/ui/cg;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(I)V

    .line 93
    return-void
.end method
