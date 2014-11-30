.class Ldolphin/webkit/hz;
.super Landroid/view/View;
.source "WebView.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebView;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2323
    iput-object p1, p0, Ldolphin/webkit/hz;->a:Ldolphin/webkit/WebView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2326
    iget-object v0, p0, Ldolphin/webkit/hz;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$100(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getGameModeStatus()Ldolphin/webkit/WebViewProvider$GameModeStatus;

    move-result-object v0

    sget-object v1, Ldolphin/webkit/WebViewProvider$GameModeStatus;->NONE_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    if-ne v0, v1, :cond_0

    .line 2327
    iget-object v0, p0, Ldolphin/webkit/hz;->a:Ldolphin/webkit/WebView;

    # getter for: Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;
    invoke-static {v0}, Ldolphin/webkit/WebView;->access$100(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->switchToGameMode()V

    .line 2329
    :cond_0
    return-void
.end method
