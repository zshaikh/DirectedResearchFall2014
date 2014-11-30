.class final Lcom/dolphin/browser/extensions/ai;
.super Lcom/dolphin/browser/extensions/aj;
.source "MessageCenter.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IWebViewPageExtension2;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/aj;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/dolphin/browser/extensions/IWebViewPageExtension2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-class v1, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 126
    return-object v0
.end method


# virtual methods
.method public destory(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 269
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->destory(Lcom/dolphin/browser/core/IWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 233
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method public onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 138
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 146
    :goto_1
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 158
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 166
    :goto_1
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .locals 7

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 178
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 186
    :goto_1
    return v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 245
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onPause(Lcom/dolphin/browser/core/IWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 217
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method public onResume(Lcom/dolphin/browser/core/IWebView;)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 257
    :try_start_0
    invoke-interface {v0, p1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->onResume(Lcom/dolphin/browser/core/IWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ai;->a()Ljava/util/Set;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 197
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 205
    :goto_1
    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
