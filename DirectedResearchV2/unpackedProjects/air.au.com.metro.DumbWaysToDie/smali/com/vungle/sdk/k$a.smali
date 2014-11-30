.class public abstract Lcom/vungle/sdk/k$a;
.super Landroid/webkit/WebChromeClient;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/sdk/k;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/k;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vungle/sdk/k$a;->b:Lcom/vungle/sdk/k;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5
    .param p3, "message"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "showToast"

    .line 119
    const-string v0, "showToast"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 124
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 128
    const-string v2, "method"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "showToast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    move v0, v3

    .line 133
    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/vungle/sdk/k$a;->b:Lcom/vungle/sdk/k;

    iget-object v1, v1, Lcom/vungle/sdk/k;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    move v0, v3

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vungle/sdk/k$a;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_2
    const-string v0, "{\"result\":0}"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    move v0, v3

    .line 154
    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 143
    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "JsPrompt"

    const-string v2, "Callback executed with a bad JSON format."

    invoke-static {v1, v2, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
