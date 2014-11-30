.class Lcom/dolphin/browser/extension/ui/b;
.super Ljava/lang/Object;
.source "AddonAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extension/ui/AddonAboutActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/extension/ui/b;->c:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    iput-boolean p2, p0, Lcom/dolphin/browser/extension/ui/b;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/extension/ui/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dolphin/browser/extension/ui/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extension/ui/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/dolphin/browser/extension/ui/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/dolphin/browser/extension/ui/b;->c:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extension/ui/b;->c:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/extension/ui/AddonAboutActivity;->finish()V

    .line 104
    return-void
.end method
