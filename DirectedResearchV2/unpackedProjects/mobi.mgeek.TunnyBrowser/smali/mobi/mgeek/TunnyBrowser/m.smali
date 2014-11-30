.class Lmobi/mgeek/TunnyBrowser/m;
.super Lcom/dolphin/browser/util/f;
.source "BackupRestoreDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/k;

.field private b:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/k;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 241
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/m;->b:Landroid/content/DialogInterface;

    .line 242
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/k;->a(Lmobi/mgeek/TunnyBrowser/k;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/dolphin/browser/util/v; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "BackupRestoreDialogHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/m;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 248
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0090

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e008f

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/k;->a(II)V

    .line 249
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "BackupTask onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/k;->c()V

    .line 271
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/k;->b(Lmobi/mgeek/TunnyBrowser/k;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0096

    .line 281
    :goto_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/m;->a:Lmobi/mgeek/TunnyBrowser/k;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/k;->a(I)V

    .line 283
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/m;->b:Landroid/content/DialogInterface;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 284
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "BackupTask onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0094

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0095

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/m;->a(Ljava/lang/Boolean;)V

    return-void
.end method
