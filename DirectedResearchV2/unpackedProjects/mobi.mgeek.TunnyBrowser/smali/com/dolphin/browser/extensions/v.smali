.class Lcom/dolphin/browser/extensions/v;
.super Ljava/lang/Object;
.source "FakeAddon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/extensions/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    iput-object p2, p0, Lcom/dolphin/browser/extensions/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/high16 v3, 0x10000000

    .line 352
    const-string v0, "addon bar"

    iget-object v1, p0, Lcom/dolphin/browser/extensions/v;->a:Ljava/lang/String;

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/s;->a(Lcom/dolphin/browser/extensions/s;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    invoke-static {v2}, Lcom/dolphin/browser/extensions/s;->a(Lcom/dolphin/browser/extensions/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 356
    iget-object v1, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/s;->q()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    iget-object v1, v1, Lcom/dolphin/browser/extensions/s;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/s;->a(Lcom/dolphin/browser/extensions/s;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    invoke-static {v2}, Lcom/dolphin/browser/extensions/s;->a(Lcom/dolphin/browser/extensions/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 365
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Lcom/dolphin/browser/extensions/v;->b:Lcom/dolphin/browser/extensions/s;

    iget-object v1, v1, Lcom/dolphin/browser/extensions/s;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
