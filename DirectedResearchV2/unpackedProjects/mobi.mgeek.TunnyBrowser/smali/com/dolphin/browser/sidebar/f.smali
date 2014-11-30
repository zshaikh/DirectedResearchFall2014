.class Lcom/dolphin/browser/sidebar/f;
.super Lcom/dolphin/browser/sidebar/e;
.source "AddonBarController.java"


# instance fields
.field final synthetic d:Lcom/dolphin/browser/sidebar/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/f;->d:Lcom/dolphin/browser/sidebar/a;

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sidebar/e;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    .line 166
    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "addon bar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longpress||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "addondescription"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->m()Lcom/dolphin/browser/extensions/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->d:Lcom/dolphin/browser/sidebar/a;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/a;->b(Lcom/dolphin/browser/sidebar/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/f;->d:Lcom/dolphin/browser/sidebar/a;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/a;->b(Lcom/dolphin/browser/sidebar/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e065f

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v5}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/f;->a:Lcom/dolphin/browser/extensions/n;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/f;->d:Lcom/dolphin/browser/sidebar/a;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/a;->b(Lcom/dolphin/browser/sidebar/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Landroid/content/Context;)Z

    .line 183
    return-void
.end method
