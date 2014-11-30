.class Lcom/dolphin/browser/download/ui/m;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/m;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/m;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    invoke-static {v1, v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;

    .line 699
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/m;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/ui/p;)V

    .line 701
    const-string v0, "download management"

    const-string v1, "filemanager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/m;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v3}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/download/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method
