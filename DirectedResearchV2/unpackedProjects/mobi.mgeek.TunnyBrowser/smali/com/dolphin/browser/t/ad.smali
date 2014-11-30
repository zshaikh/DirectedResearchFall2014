.class Lcom/dolphin/browser/t/ad;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView;

.field final synthetic b:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/dolphin/browser/t/ad;->b:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/ad;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/dolphin/browser/t/ad;->b:Lcom/dolphin/browser/t/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2480
    iget-object v0, p0, Lcom/dolphin/browser/t/ad;->b:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lcom/dolphin/browser/t/ad;->b:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/t/ad;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;Z)V

    .line 2481
    return-void
.end method
