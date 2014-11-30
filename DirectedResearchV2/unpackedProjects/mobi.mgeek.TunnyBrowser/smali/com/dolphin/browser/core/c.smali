.class Lcom/dolphin/browser/core/c;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/BrowserSettings;

.field private final b:Lcom/dolphin/browser/core/IWebSettings;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/BrowserSettings;Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dolphin/browser/core/c;->a:Lcom/dolphin/browser/core/BrowserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/dolphin/browser/core/c;->b:Lcom/dolphin/browser/core/IWebSettings;

    .line 195
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/core/c;->b:Lcom/dolphin/browser/core/IWebSettings;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/core/c;->a:Lcom/dolphin/browser/core/BrowserSettings;

    iget-object v1, p0, Lcom/dolphin/browser/core/c;->b:Lcom/dolphin/browser/core/IWebSettings;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/BrowserSettings;->b(Lcom/dolphin/browser/core/IWebSettings;)V

    .line 203
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->e()Lcom/dolphin/browser/extensions/IWebViewExtension;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/dolphin/browser/core/c;->b:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/extensions/IWebViewExtension;->postOnUpdateWebSettings(Lcom/dolphin/browser/core/IWebSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
