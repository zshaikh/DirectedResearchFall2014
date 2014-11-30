.class Lcom/dolphin/browser/gesture/ui/u;
.super Ljava/lang/Object;
.source "GestureListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/u;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/u;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/u;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    :try_start_0
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    iget-object v3, p0, Lcom/dolphin/browser/gesture/ui/u;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-virtual {v3}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 444
    iget-object v4, p0, Lcom/dolphin/browser/gesture/ui/u;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v4, v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/u;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0222

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 453
    :goto_1
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/gesture/ui/u;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 448
    const-string v1, "gesture"

    const-string v3, "add"

    invoke-static {v1, v3, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/u;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    const-class v3, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/u;->b:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
