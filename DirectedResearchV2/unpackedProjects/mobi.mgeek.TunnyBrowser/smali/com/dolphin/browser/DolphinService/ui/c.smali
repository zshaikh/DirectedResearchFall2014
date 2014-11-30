.class Lcom/dolphin/browser/DolphinService/ui/c;
.super Ljava/lang/Object;
.source "AccountChooseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/e;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/a;Lcom/dolphin/browser/DolphinService/ui/e;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/c;->b:Lcom/dolphin/browser/DolphinService/ui/a;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/c;->a:Lcom/dolphin/browser/DolphinService/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/c;->a:Lcom/dolphin/browser/DolphinService/ui/e;

    invoke-interface {v0, p2}, Lcom/dolphin/browser/DolphinService/ui/e;->a(I)V

    .line 43
    return-void
.end method
