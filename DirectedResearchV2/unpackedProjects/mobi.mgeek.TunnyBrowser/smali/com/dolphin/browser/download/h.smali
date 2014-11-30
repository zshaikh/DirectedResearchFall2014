.class Lcom/dolphin/browser/download/h;
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
    .line 450
    iput-object p1, p0, Lcom/dolphin/browser/download/h;->b:Lcom/dolphin/browser/download/e;

    iput-object p2, p0, Lcom/dolphin/browser/download/h;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/download/h;->a:Landroid/content/DialogInterface;

    invoke-static {v0}, Lcom/dolphin/browser/download/e;->a(Landroid/content/DialogInterface;)V

    .line 455
    return-void
.end method
