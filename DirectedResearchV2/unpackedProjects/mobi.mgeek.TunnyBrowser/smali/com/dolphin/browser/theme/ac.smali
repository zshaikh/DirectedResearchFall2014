.class Lcom/dolphin/browser/theme/ac;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Lcom/dolphin/browser/theme/b/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e069d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 571
    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/io/File;)V

    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/ar;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/dolphin/browser/theme/ar;->a(Ljava/io/File;ZIZ)V

    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e069e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 581
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e069c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e069f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ac;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 566
    return-void
.end method
