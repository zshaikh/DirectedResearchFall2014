.class Lmobi/mgeek/TunnyBrowser/o;
.super Lcom/dolphin/browser/util/f;
.source "BackupRestoreDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/n;

.field private b:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/n;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 383
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/o;->b:Landroid/content/DialogInterface;

    .line 384
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/n;->a(Lmobi/mgeek/TunnyBrowser/n;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->f(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/dolphin/browser/util/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dolphin/browser/util/v; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v0

    .line 403
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 404
    :catch_1
    move-exception v0

    .line 406
    const-string v1, "BackupRestoreDialogHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/o;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 388
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 390
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0525

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0524

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/n;->a(II)V

    .line 391
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "RestoreTask onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/n;->c()V

    .line 416
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0529

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/n;->a(I)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    const-class v2, Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 420
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    iget-object v2, v2, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    iget-object v2, v2, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0528

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v1, "show_confirm_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/n;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->b:Landroid/content/DialogInterface;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 431
    :cond_0
    :goto_0
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "RestoreTask onPostExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 426
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 427
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/n;->a(Lmobi/mgeek/TunnyBrowser/n;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0523

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/n;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/o;->a:Lmobi/mgeek/TunnyBrowser/n;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e052b

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/n;->a(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/o;->a(Ljava/lang/Integer;)V

    return-void
.end method
