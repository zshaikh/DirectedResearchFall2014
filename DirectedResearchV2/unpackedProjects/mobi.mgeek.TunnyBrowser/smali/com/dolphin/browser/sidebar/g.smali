.class Lcom/dolphin/browser/sidebar/g;
.super Lcom/dolphin/browser/sidebar/e;
.source "AddonBarController.java"


# instance fields
.field final synthetic d:Lcom/dolphin/browser/sidebar/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/g;->d:Lcom/dolphin/browser/sidebar/a;

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sidebar/e;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    .line 190
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/g;->a:Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/sidebar/g;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/g;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
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

    const-string v2, "disableaddon"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/g;->a:Lcom/dolphin/browser/extensions/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->c(Z)V

    .line 201
    :cond_0
    return-void
.end method
