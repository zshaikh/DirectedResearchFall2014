.class Lcom/dolphin/browser/download/f;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/dolphin/browser/download/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/e;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/dolphin/browser/download/f;->b:Lcom/dolphin/browser/download/e;

    iput-object p2, p0, Lcom/dolphin/browser/download/f;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/download/f;->a:Landroid/content/DialogInterface;

    invoke-static {v0}, Lcom/dolphin/browser/download/e;->a(Landroid/content/DialogInterface;)V

    .line 421
    return-void
.end method
