.class Lcom/dolphin/browser/theme/e;
.super Ljava/lang/Object;
.source "FakedSkinItem.java"

# interfaces
.implements Lcom/dolphin/browser/theme/data/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/c;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    iget-object v1, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-static {v1}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/data/n;)V

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e062e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    const-string v0, "themes_new"

    const-string v1, "download"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public a(JJF)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0, p5}, Lcom/dolphin/browser/theme/c;->a(F)V

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-static {v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c;->a()V

    .line 173
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    iget-object v0, p0, Lcom/dolphin/browser/theme/e;->a:Lcom/dolphin/browser/theme/c;

    invoke-static {v0}, Lcom/dolphin/browser/theme/c;->a(Lcom/dolphin/browser/theme/c;)Lcom/dolphin/browser/theme/data/n;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/theme/c;->b(Lcom/dolphin/browser/theme/data/a;)V

    .line 190
    :cond_0
    return-void
.end method
