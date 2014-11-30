.class Lcom/dolphin/browser/DolphinService/ui/h;
.super Ljava/lang/Object;
.source "AccountServiceManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/h;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 610
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 611
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->b()V

    .line 612
    invoke-static {v4}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Z)V

    .line 613
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/h;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 615
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/h;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->e(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/h;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->f(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    .line 617
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/h;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0359

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 619
    return-void
.end method
