.class Lcom/dolphin/browser/DolphinService/ui/g;
.super Ljava/lang/Object;
.source "AccountServiceManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/a/a;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;Lcom/dolphin/browser/sync/a/a;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/g;->b:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/g;->a:Lcom/dolphin/browser/sync/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/g;->a:Lcom/dolphin/browser/sync/a/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/sync/a/a;->a(Z)V

    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/g;->b:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->c(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->j()V

    .line 493
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/g;->b:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->d(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    .line 494
    return-void
.end method
