.class Lcom/dolphin/browser/download/ui/l;
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
    .line 681
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/l;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 686
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800e8

    if-ne v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/l;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/b;)Lcom/dolphin/browser/download/b;

    .line 688
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/l;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Lcom/dolphin/browser/download/ui/p;)V

    .line 690
    :cond_0
    return-void
.end method
