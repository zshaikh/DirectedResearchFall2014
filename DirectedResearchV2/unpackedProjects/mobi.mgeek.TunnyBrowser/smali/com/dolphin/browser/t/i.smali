.class Lcom/dolphin/browser/t/i;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/download/e;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic d:Lcom/dolphin/browser/t/j;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/t/j;Ljava/lang/String;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/dolphin/browser/t/i;->g:Lcom/dolphin/browser/t/a;

    iput-object p2, p0, Lcom/dolphin/browser/t/i;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dolphin/browser/t/i;->b:Lcom/dolphin/browser/download/e;

    iput-object p4, p0, Lcom/dolphin/browser/t/i;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p5, p0, Lcom/dolphin/browser/t/i;->d:Lcom/dolphin/browser/t/j;

    iput-object p6, p0, Lcom/dolphin/browser/t/i;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/dolphin/browser/t/i;->f:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 447
    iget-object v0, p0, Lcom/dolphin/browser/t/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {}, Lcom/dolphin/browser/t/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/t/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/t/i;->b:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/t/i;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/t/i;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;Landroid/content/DialogInterface;)V

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/t/i;->d:Lcom/dolphin/browser/t/j;

    iput-object v0, v1, Lcom/dolphin/browser/t/j;->e:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/t/i;->g:Lcom/dolphin/browser/t/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/i;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v2, p0, Lcom/dolphin/browser/t/i;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/t/i;->d:Lcom/dolphin/browser/t/j;

    iget-object v4, p0, Lcom/dolphin/browser/t/i;->g:Lcom/dolphin/browser/t/a;

    invoke-static {v4}, Lcom/dolphin/browser/t/a;->a(Lcom/dolphin/browser/t/a;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/t/i;->f:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/t/a;->a(Lcom/dolphin/browser/t/a;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Lcom/dolphin/browser/t/j;Ljava/lang/String;Z)V

    .line 455
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/t/i;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/t/i;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/download/e;->a(Landroid/content/Context;Landroid/content/DialogInterface;)V

    goto :goto_0
.end method
