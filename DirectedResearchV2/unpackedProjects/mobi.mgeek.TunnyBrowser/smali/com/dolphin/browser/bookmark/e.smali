.class Lcom/dolphin/browser/bookmark/e;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->a(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "editbookmark"

    .line 240
    :goto_0
    const-string v1, "bookmark"

    const-string v2, "assigngesture"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    const-class v2, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    return-void

    .line 238
    :cond_0
    const-string v0, "addbookmark"

    goto :goto_0

    .line 252
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->e(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/e;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
