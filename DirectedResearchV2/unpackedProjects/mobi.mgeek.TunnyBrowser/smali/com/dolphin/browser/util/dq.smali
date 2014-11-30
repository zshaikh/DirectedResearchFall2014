.class public Lcom/dolphin/browser/util/dq;
.super Ljava/lang/Object;
.source "UrlParamsCheckUtil.java"


# static fields
.field private static a:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/dolphin/browser/util/dq;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    invoke-virtual {v7}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v6, ""

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 50
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move v1, v0

    .line 52
    :goto_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    array-length v4, v3

    if-eqz v4, :cond_2

    array-length v3, v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 64
    goto :goto_1

    .line 62
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 66
    :cond_6
    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "UrlParamsCheckUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/util/dq;->a:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/util/dq;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
