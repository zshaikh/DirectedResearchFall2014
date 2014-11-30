.class Lcom/dolphin/browser/account/ui/l;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/account/ui/ServiceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/account/ui/ServiceActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dolphin/browser/account/ui/l;->a:Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/l;->a:Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->b(Lcom/dolphin/browser/account/ui/ServiceActivity;)Lcom/dolphin/browser/account/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/l;->a:Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->b(Lcom/dolphin/browser/account/ui/ServiceActivity;)Lcom/dolphin/browser/account/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/account/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/l;->a:Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/account/ui/ServiceActivity;->c(Lcom/dolphin/browser/account/ui/ServiceActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0348

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/l;->a:Lcom/dolphin/browser/account/ui/ServiceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/account/ui/ServiceActivity;->c(Lcom/dolphin/browser/account/ui/ServiceActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
