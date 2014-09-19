.class Lcom/fusepowered/m1/android/BridgeMMPasteboard$1;
.super Ljava/lang/Object;
.source "BridgeMMPasteboard.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMPasteboard;->getPasteboardContents(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/fusepowered/m1/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMPasteboard;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMPasteboard;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMPasteboard$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMPasteboard;

    iput-object p2, p0, Lcom/fusepowered/m1/android/BridgeMMPasteboard$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 6

    .prologue
    .line 30
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMPasteboard$1;->val$context:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 31
    .local v1, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 32
    .local v0, chars:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 33
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    :cond_0
    if-eqz v3, :cond_1

    .line 37
    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 44
    .end local v0           #chars:Ljava/lang/CharSequence;
    .end local v1           #clipboard:Landroid/text/ClipboardManager;
    .end local v3           #message:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 42
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMPasteboard$1;->call()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
