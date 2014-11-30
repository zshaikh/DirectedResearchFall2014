.class Lcom/dolphin/browser/sidebar/h;
.super Lcom/dolphin/browser/sidebar/e;
.source "AddonBarController.java"


# instance fields
.field final synthetic d:Lcom/dolphin/browser/sidebar/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/h;->d:Lcom/dolphin/browser/sidebar/a;

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sidebar/e;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    .line 150
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/h;->a:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/h;->d:Lcom/dolphin/browser/sidebar/a;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/a;->b(Lcom/dolphin/browser/sidebar/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 158
    :cond_0
    return-void
.end method
