.class Lcom/dolphin/browser/download/ui/g;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Ljava/io/File;)Ljava/io/File;

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->b(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->d(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Landroid/view/CustomMenuListView;

    move-result-object v1

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/g;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->c(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/CustomMenuListView;->setSelection(I)V

    .line 160
    :cond_0
    return-void
.end method
