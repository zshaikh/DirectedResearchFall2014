.class Lcom/dolphin/browser/download/ui/bk;
.super Ljava/lang/Object;
.source "FileManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/dolphin/browser/download/ui/FileManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/FileManageActivity;ZLjava/io/File;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    iput-boolean p2, p0, Lcom/dolphin/browser/download/ui/bk;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/bk;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/dolphin/browser/download/ui/bk;->a:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bk;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 489
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->e(Lcom/dolphin/browser/download/ui/FileManageActivity;)V

    .line 490
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bk;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0159

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0290

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bk;->c:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
