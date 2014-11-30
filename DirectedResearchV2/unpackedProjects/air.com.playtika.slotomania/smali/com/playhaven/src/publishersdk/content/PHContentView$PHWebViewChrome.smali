.class public Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;
.super Landroid/webkit/WebChromeClient;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PHWebViewChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$PHWebViewChrome;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 229
    :try_start_0
    const-string v1, "(no file)"

    .line 231
    .local v1, "fname":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Javascript: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    const-string v3, " at line ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "fname":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 239
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PHWebViewChrome - onConsoleMessage"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method
