.class Lcom/dolphin/browser/download/ui/bh;
.super Ljava/lang/Object;
.source "FileManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/FileManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f0e0291

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0e03c1

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    check-cast p2, Lcom/dolphin/browser/download/ui/be;

    .line 249
    invoke-virtual {p2}, Lcom/dolphin/browser/download/ui/be;->b()Ljava/io/File;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->b(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/util/Stack;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/FileManageActivity;->c(Lcom/dolphin/browser/download/ui/FileManageActivity;)Landroid/view/CustomMenuListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/CustomMenuListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;Ljava/io/File;)V

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->c(Lcom/dolphin/browser/download/ui/FileManageActivity;)Landroid/view/CustomMenuListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/CustomMenuListView;->setSelection(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v2, v3, v1}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    .line 263
    if-nez v2, :cond_0

    .line 264
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0272

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0271

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 271
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e028f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 276
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bh;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0290

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
