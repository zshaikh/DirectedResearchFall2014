.class Lcom/dolphin/browser/download/ui/bi;
.super Ljava/lang/Object;
.source "FileManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/download/e;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/dolphin/browser/download/ui/FileManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/FileManageActivity;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Ljava/io/File;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/bi;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/bi;->b:Lcom/dolphin/browser/download/e;

    iput-object p4, p0, Lcom/dolphin/browser/download/ui/bi;->c:Ljava/io/File;

    iput-object p5, p0, Lcom/dolphin/browser/download/ui/bi;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 384
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->b:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->c(Landroid/content/Context;)V

    .line 417
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 400
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 402
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0274

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0290

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->e(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    goto/16 :goto_0

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bi;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bi;->e:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
