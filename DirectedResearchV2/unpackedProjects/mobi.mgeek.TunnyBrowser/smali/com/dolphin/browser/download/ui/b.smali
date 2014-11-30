.class Lcom/dolphin/browser/download/ui/b;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/BrowserDownloadPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/b;->a:Lcom/dolphin/browser/download/ui/BrowserDownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/b;->a:Lcom/dolphin/browser/download/ui/BrowserDownloadPage;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Landroid/view/View;)V

    .line 109
    return-void
.end method
