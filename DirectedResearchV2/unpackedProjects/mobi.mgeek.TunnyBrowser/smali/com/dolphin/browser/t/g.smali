.class Lcom/dolphin/browser/t/g;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/dolphin/browser/t/g;->a:Lcom/dolphin/browser/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/t/g;->a:Lcom/dolphin/browser/t/a;

    invoke-static {v0}, Lcom/dolphin/browser/t/a;->b(Lcom/dolphin/browser/t/a;)V

    .line 474
    return-void
.end method
