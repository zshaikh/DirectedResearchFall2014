.class public Lcom/dolphin/browser/core/ag;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "NullWebViewCallback.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/dolphin/browser/core/ag;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ag;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/ag;->a:Lcom/dolphin/browser/core/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/core/ag;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/dolphin/browser/core/ag;->a:Lcom/dolphin/browser/core/ag;

    return-object v0
.end method


# virtual methods
.method public onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 1

    .prologue
    .line 13
    invoke-interface {p4}, Lcom/dolphin/browser/core/IJsResult;->confirm()V

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 1

    .prologue
    .line 27
    invoke-interface {p4}, Lcom/dolphin/browser/core/IJsResult;->confirm()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .locals 1

    .prologue
    .line 20
    invoke-interface {p5}, Lcom/dolphin/browser/core/IJsPromptResult;->confirm()V

    .line 21
    const/4 v0, 0x1

    return v0
.end method
