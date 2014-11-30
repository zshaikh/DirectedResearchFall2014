.class Lcom/dolphin/browser/t/ah;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dolphin/browser/core/IHttpAuthHandler;

.field final synthetic e:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IHttpAuthHandler;)V
    .locals 0

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/dolphin/browser/t/ah;->e:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/ah;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/dolphin/browser/t/ah;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/t/ah;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/t/ah;->d:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2716
    iget-object v0, p0, Lcom/dolphin/browser/t/ah;->a:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2718
    iget-object v0, p0, Lcom/dolphin/browser/t/ah;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080256

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2720
    iget-object v2, p0, Lcom/dolphin/browser/t/ah;->e:Lcom/dolphin/browser/t/l;

    invoke-static {v2}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/t/ah;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/t/ah;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/t/ah;->d:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v2, v1, v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2726
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ah;->e:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v5}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2727
    iget-object v0, p0, Lcom/dolphin/browser/t/ah;->e:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v5}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IHttpAuthHandler;)Lcom/dolphin/browser/core/IHttpAuthHandler;

    .line 2728
    return-void

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
