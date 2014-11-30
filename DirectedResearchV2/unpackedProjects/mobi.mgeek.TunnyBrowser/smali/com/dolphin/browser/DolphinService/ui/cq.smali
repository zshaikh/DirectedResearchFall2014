.class Lcom/dolphin/browser/DolphinService/ui/cq;
.super Ljava/lang/Object;
.source "WebHostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cq;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/cq;->a:Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/WebHostActivity;->a()V

    .line 62
    return-void
.end method
