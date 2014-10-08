.class Lcom/fusepowered/m1/android/MMCommand;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cls:Ljava/lang/Class;

.field private method:Ljava/lang/reflect/Method;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;Ljava/lang/String;)V
    .locals 17
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v13, Ljava/lang/ref/WeakReference;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/m1/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 48
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 49
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\."

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "components":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-ge v13, v14, :cond_0

    .line 79
    .end local v4    # "components":[Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 52
    .restart local v4    # "components":[Ljava/lang/String;
    .restart local v12    # "uri":Landroid/net/Uri;
    :cond_0
    array-length v13, v4

    const/4 v14, 0x2

    sub-int/2addr v13, v14

    aget-object v3, v4, v13

    .line 53
    .local v3, "className":Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-object v8, v4, v13

    .line 56
    .local v8, "methodName":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/m1/android/MMCommand;->arguments:Ljava/util/Map;

    .line 57
    const/16 v13, 0x3f

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "queryString":Ljava/lang/String;
    const-string v13, "&"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 59
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v9, v2, v6

    .line 61
    .local v9, "param":Ljava/lang/String;
    const-string v13, "="

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "subComponents":[Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x2

    if-lt v13, v14, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMCommand;->arguments:Ljava/util/Map;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/4 v13, 0x0

    aget-object v13, v11, v13

    const-string v14, "callback"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 66
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    .line 59
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 71
    .end local v9    # "param":Ljava/lang/String;
    .end local v11    # "subComponents":[Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.fusepowered.m1.android.Bridge"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/m1/android/MMCommand;->cls:Ljava/lang/Class;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMCommand;->cls:Ljava/lang/Class;

    move-object v13, v0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMCommand;->arguments:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "components":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v10    # "queryString":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 76
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "Exception while executing javascript call %s %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/MMCommand;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/MMCommand;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getBridgeStrippedClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "preStripped":Ljava/lang/String;
    const-string v1, "Bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method isResizeCommand()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "resize"

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 85
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->cls:Ljava/lang/Class;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    .line 93
    :try_start_0
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fusepowered/m1/android/MMWebView;

    .line 94
    .local v7, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v7, :cond_3

    .line 96
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/m1/android/MMJSObject;

    .line 97
    .local v4, "receiver":Lcom/fusepowered/m1/android/MMJSObject;
    invoke-virtual {v7}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/fusepowered/m1/android/MMJSObject;->setContext(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v4, v7}, Lcom/fusepowered/m1/android/MMJSObject;->setMMWebView(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 99
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v7, v9}, Lcom/fusepowered/m1/android/MMWebView;->updateArgumentsWithSettings(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    const/4 v7, 0x0

    .line 106
    :try_start_1
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fusepowered/m1/android/MMCommand;->arguments:Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .local v5, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 118
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/m1/android/MMWebView;

    .line 119
    .local v8, "webViewCallback":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v8, :cond_3

    .line 122
    if-nez v5, :cond_0

    .line 123
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v5

    .line 125
    :cond_0
    iget-object v9, v5, Lcom/fusepowered/m1/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/fusepowered/m1/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 127
    :cond_1
    iget-object v9, v5, Lcom/fusepowered/m1/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMCommand;->getBridgeStrippedClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/fusepowered/m1/android/MMJSResponse;->className:Ljava/lang/String;

    .line 132
    :cond_2
    const-string v9, "javascript:%s(%s);"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "call":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executing JS bridge callback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 134
    new-instance v9, Lcom/fusepowered/m1/android/MMCommand$1;

    invoke-direct {v9, p0, v8, v0}, Lcom/fusepowered/m1/android/MMCommand$1;-><init>(Lcom/fusepowered/m1/android/MMCommand;Lcom/fusepowered/m1/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    .end local v0    # "call":Ljava/lang/String;
    .end local v4    # "receiver":Lcom/fusepowered/m1/android/MMJSObject;
    .end local v5    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    .end local v7    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    .end local v8    # "webViewCallback":Lcom/fusepowered/m1/android/MMWebView;
    :cond_3
    :goto_1
    return-void

    .line 108
    .restart local v4    # "receiver":Lcom/fusepowered/m1/android/MMJSObject;
    .restart local v7    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 110
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 111
    .local v6, "t":Ljava/lang/Throwable;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Landroid/content/ActivityNotFoundException;

    if-ne v9, v10, :cond_4

    .line 112
    const-string v9, "Activity not found"

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v5

    .restart local v5    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    goto/16 :goto_0

    .line 114
    .end local v5    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    :cond_4
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError()Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .restart local v5    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    goto/16 :goto_0

    .line 150
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "receiver":Lcom/fusepowered/m1/android/MMJSObject;
    .end local v5    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v7    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "Exception while executing javascript call %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fusepowered/m1/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 156
    const-string v9, "No class or method found"

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 157
    .local v2, "failedResponse":Lcom/fusepowered/m1/android/MMJSResponse;
    const-string v9, "javascript:%s(%s);"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/fusepowered/m1/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "call":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Executing JS bridge failed callback: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 159
    iget-object v9, p0, Lcom/fusepowered/m1/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/m1/android/MMWebView;

    .line 160
    .restart local v8    # "webViewCallback":Lcom/fusepowered/m1/android/MMWebView;
    new-instance v9, Lcom/fusepowered/m1/android/MMCommand$2;

    invoke-direct {v9, p0, v8, v0}, Lcom/fusepowered/m1/android/MMCommand$2;-><init>(Lcom/fusepowered/m1/android/MMCommand;Lcom/fusepowered/m1/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
