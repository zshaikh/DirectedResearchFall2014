.class Lcom/dolphin/browser/extensions/m;
.super Ljava/lang/Object;
.source "DownloadCompleteReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/extensions/m;->a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/dolphin/browser/extensions/m;->b:Landroid/content/Intent;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/extensions/m;->a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/m;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/extensions/m;->a:Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/m;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->b(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V

    .line 49
    return-void
.end method
