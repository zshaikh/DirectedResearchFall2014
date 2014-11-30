.class Lcom/dolphin/browser/download/ui/j;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/j;->a:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 370
    return-void
.end method
