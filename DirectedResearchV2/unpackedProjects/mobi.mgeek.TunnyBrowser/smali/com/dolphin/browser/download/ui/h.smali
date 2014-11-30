.class Lcom/dolphin/browser/download/ui/h;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

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
    const/4 v7, 0x0

    const v6, 0x7f0e03c1

    const/4 v5, 0x0

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    check-cast p2, Lcom/dolphin/browser/download/ui/be;

    .line 239
    invoke-virtual {p2}, Lcom/dolphin/browser/download/ui/be;->b()Ljava/io/File;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/util/Stack;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Landroid/view/CustomMenuListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/CustomMenuListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Ljava/io/File;)Ljava/io/File;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Landroid/view/CustomMenuListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/CustomMenuListView;->setSelection(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-virtual {v2, v3, v1}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    .line 253
    if-nez v2, :cond_0

    .line 254
    new-instance v2, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0272

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0271

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/AlertDialog;

    goto :goto_0

    .line 261
    :cond_2
    new-instance v1, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/h;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0291

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0290

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/AlertDialog;

    goto :goto_0
.end method
