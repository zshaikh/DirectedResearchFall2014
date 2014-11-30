.class Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->postWhenAttached(Ljava/lang/Runnable;)V
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
    .line 46
    iput-object p1, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;

    iput-object p2, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->b:Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;

    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->a(Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;Ljava/lang/Runnable;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
