.class Lcom/dolphin/browser/DolphinService/ui/ah;
.super Ljava/lang/Object;
.source "DolphinAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ah;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 344
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 345
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->b()V

    .line 346
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ah;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ah;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->b(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ah;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->c(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/ah;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0359

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    return-void
.end method
