.class Lcom/pocketchange/android/webkit/OptimizedWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/OptimizedWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/webkit/OptimizedWebView;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->a(Lcom/pocketchange/android/webkit/OptimizedWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->b(Lcom/pocketchange/android/webkit/OptimizedWebView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc_native_redraw_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->a(Lcom/pocketchange/android/webkit/OptimizedWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->b(Lcom/pocketchange/android/webkit/OptimizedWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var prev = document.getElementById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "if (prev) document.body.removeChild(prev);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "var e = document.createElement(\'div\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "e.id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "e.style.width = e.style.height = e.style.margin = \'0px\';"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "document.body.appendChild(e);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error appending redraw element"

    invoke-static {v1, v0, v2}, Lcom/pocketchange/android/webkit/JSWebView;->executeStatementWithErrorLogging(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setVisibility(I)V

    .line 87
    :cond_2
    return-void
.end method
