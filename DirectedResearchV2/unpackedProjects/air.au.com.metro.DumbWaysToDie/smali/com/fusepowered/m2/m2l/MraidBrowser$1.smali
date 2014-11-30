.class Lcom/fusepowered/m2/m2l/MraidBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "MraidBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RBrowser;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    .line 107
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Lcom/fusepowered/m2/m2l/resource/Drawables;->LEFT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v0, v2

    .line 152
    .local v0, "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    # getter for: Lcom/fusepowered/m2/m2l/M2RBrowser;->mBackButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/M2RBrowser;->access$1(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    sget-object v2, Lcom/fusepowered/m2/m2l/resource/Drawables;->RIGHT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v1, v2

    .line 157
    .local v1, "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    # getter for: Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/M2RBrowser;->access$0(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void

    .line 151
    .end local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "forwardImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/fusepowered/m2/m2l/resource/Drawables;->UNLEFT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 156
    .restart local v0    # "backImageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v2, Lcom/fusepowered/m2/m2l/resource/Drawables;->UNRIGHT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    # getter for: Lcom/fusepowered/m2/m2l/M2RBrowser;->mForwardButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->access$0(Lcom/fusepowered/m2/m2l/M2RBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/resource/Drawables;->UNRIGHT_ARROW:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 112
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MRAID error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 117
    if-nez p2, :cond_0

    move v3, v4

    .line 136
    :goto_0
    return v3

    .line 119
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "host":Ljava/lang/String;
    const-string v3, "http:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    :cond_1
    const-string v3, "play.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    const-string v3, "market.android.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 125
    goto :goto_0

    .line 129
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/fusepowered/m2/m2l/M2RBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$1;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/M2RBrowser;->finish()V

    .line 136
    const/4 v3, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 131
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to start activity for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    const-string v5, "Ensure that your phone can handle this intent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
