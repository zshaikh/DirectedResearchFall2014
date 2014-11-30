.class Lcom/dolphin/browser/androidwebkit/ev;
.super Ljava/lang/Object;
.source "WebViewV11.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ValueCallback;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/WebViewV11;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/WebViewV11;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ev;->b:Lcom/dolphin/browser/androidwebkit/WebViewV11;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/ev;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ev;->a:Lcom/dolphin/browser/core/ValueCallback;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ev;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/ev;->a(Ljava/lang/String;)V

    return-void
.end method
