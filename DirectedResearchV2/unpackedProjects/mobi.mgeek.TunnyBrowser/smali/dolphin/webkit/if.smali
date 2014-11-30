.class Ldolphin/webkit/if;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebChromeClient;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebChromeClient;)V
    .locals 0

    .prologue
    .line 10379
    iput-object p1, p0, Ldolphin/webkit/if;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/if;->a:Ldolphin/webkit/WebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 2

    .prologue
    .line 10381
    iget-object v0, p0, Ldolphin/webkit/if;->a:Ldolphin/webkit/WebChromeClient;

    iget-object v1, p0, Ldolphin/webkit/if;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->z(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->onCloseWindow(Ldolphin/webkit/WebView;)V

    .line 10382
    return-void
.end method

.method public onPauseCustomView()V
    .locals 0

    .prologue
    .line 10384
    return-void
.end method

.method public onResumeCustomView()V
    .locals 0

    .prologue
    .line 10387
    return-void
.end method
