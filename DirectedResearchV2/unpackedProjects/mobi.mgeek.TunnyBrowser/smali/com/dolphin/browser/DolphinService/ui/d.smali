.class Lcom/dolphin/browser/DolphinService/ui/d;
.super Ljava/lang/Object;
.source "AccountChooseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/e;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/a;Lcom/dolphin/browser/DolphinService/ui/e;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/d;->b:Lcom/dolphin/browser/DolphinService/ui/a;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/d;->a:Lcom/dolphin/browser/DolphinService/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/d;->a:Lcom/dolphin/browser/DolphinService/ui/e;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/ui/e;->a()V

    .line 60
    return-void
.end method
