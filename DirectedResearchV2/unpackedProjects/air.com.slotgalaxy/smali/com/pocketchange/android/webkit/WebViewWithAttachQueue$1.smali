.class Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->postIfAttached(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;->b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;

    iput-object p2, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;->b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    :cond_0
    return-void
.end method
