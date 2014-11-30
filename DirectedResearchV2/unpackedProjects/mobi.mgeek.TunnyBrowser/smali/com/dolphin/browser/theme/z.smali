.class Lcom/dolphin/browser/theme/z;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Lcom/dolphin/browser/theme/aq;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->c(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/aj;->d()V

    .line 294
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 8

    .prologue
    const v7, 0x7f0e05b4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    iget-object v1, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05b6

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    new-instance v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    iget-object v0, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b5

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 326
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 328
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->a()Lcom/dolphin/browser/theme/data/b;

    move-result-object v0

    .line 329
    sget-object v2, Lcom/dolphin/browser/theme/data/b;->b:Lcom/dolphin/browser/theme/data/b;

    if-ne v0, v2, :cond_3

    .line 330
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->f()Ljava/lang/String;

    move-result-object v2

    .line 331
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/c;

    if-eqz v0, :cond_2

    .line 332
    check-cast p1, Lcom/dolphin/browser/theme/data/c;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/c;->u()Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, v7, v4}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 345
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05b3

    new-instance v3, Lcom/dolphin/browser/theme/aa;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/theme/aa;-><init>(Lcom/dolphin/browser/theme/z;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 354
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    goto :goto_0

    .line 335
    :cond_2
    const-string v0, ""

    .line 336
    iget-object v3, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    const-string v4, "We do not support none-apk theme in this version of dolphin..."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 339
    :cond_3
    sget-object v2, Lcom/dolphin/browser/theme/data/b;->c:Lcom/dolphin/browser/theme/data/b;

    if-ne v0, v2, :cond_4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ThemeActivity2;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    goto :goto_2

    .line 343
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/theme/d/j;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    .line 300
    iget-object v0, p0, Lcom/dolphin/browser/theme/z;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->setResult(I)V

    .line 301
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
