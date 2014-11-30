.class public Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView;


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "MyWebViewWrapper"

.field private static final TAG:Ljava/lang/String; = "MyWebViewWrapper"

.field private static final THREAD_FIX_SDK:I = 0xe

.field private static sAddPackageName:Ljava/lang/reflect/Method;

.field private static sAddPackageNames:Ljava/lang/reflect/Method;

.field private static sCopySelection:Ljava/lang/reflect/Method;

.field private static sDocumentAsText:Ljava/lang/reflect/Method;

.field private static sFindAll:Ljava/lang/reflect/Method;

.field private static sGetContentWidth:Ljava/lang/reflect/Method;

.field private static sGetZoomButtonsController:Ljava/lang/reflect/Method;

.field private static sIsPaused:Ljava/lang/reflect/Method;

.field private static sNotifyFindDialogDismissed:Ljava/lang/reflect/Method;

.field private static sNotifySelectDialogDismissed:Ljava/lang/reflect/Method;

.field private static sRemovePackageName:Ljava/lang/reflect/Method;

.field private static sSaveWebArchive:Ljava/lang/reflect/Method;

.field private static sSelectText:Ljava/lang/reflect/Method;

.field private static sSetEmbeddedTitleBar:Ljava/lang/reflect/Method;

.field private static sSetFindDialogHeight:Ljava/lang/reflect/Method;

.field private static sSetFindIsUp:Ljava/lang/reflect/Method;

.field private static sSetJsFlags:Ljava/lang/reflect/Method;

.field private static sSetNetworkType:Ljava/lang/reflect/Method;


# instance fields
.field private mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    const-string v0, "WebView"

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "getZoomButtonsController"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetZoomButtonsController:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    :try_start_1
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "setEmbeddedTitleBar"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetEmbeddedTitleBar:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    :try_start_2
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "copySelection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sCopySelection:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :goto_2
    :try_start_3
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "notifySelectDialogDismissed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sNotifySelectDialogDismissed:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 115
    :goto_3
    :try_start_4
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "notifyFindDialogDismissed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sNotifyFindDialogDismissed:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    .line 122
    :goto_4
    :try_start_5
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "selectText"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSelectText:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    .line 128
    :goto_5
    :try_start_6
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "setJsFlags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetJsFlags:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6

    .line 134
    :goto_6
    :try_start_7
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "setNetworkType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetNetworkType:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_7

    .line 141
    :goto_7
    :try_start_8
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "getContentWidth"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetContentWidth:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_8

    .line 147
    :goto_8
    :try_start_9
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "isPaused"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sIsPaused:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_9

    .line 153
    :goto_9
    :try_start_a
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "findAll"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sFindAll:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_a

    .line 160
    :goto_a
    :try_start_b
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "setFindIsUp"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetFindIsUp:Ljava/lang/reflect/Method;

    .line 161
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetFindIsUp:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_c

    .line 169
    :goto_b
    :try_start_c
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "setFindDialogHeight"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetFindDialogHeight:Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_d

    .line 176
    :goto_c
    :try_start_d
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "addPackageNames"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Set;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageNames:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_e

    .line 183
    :goto_d
    :try_start_e
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "addPackageName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageName:Ljava/lang/reflect/Method;
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_f

    .line 190
    :goto_e
    :try_start_f
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "removePackageName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sRemovePackageName:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_f} :catch_10

    .line 197
    :goto_f
    :try_start_10
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "documentAsText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Message;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sDocumentAsText:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_11

    .line 204
    :goto_10
    :try_start_11
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "saveWebArchive"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSaveWebArchive:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_11} :catch_12

    .line 210
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 212
    const-string v1, "WebView"

    const-string v2, "The following methods is not found in %s for compatible reason, some features might not work: %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-class v4, Landroid/webkit/WebView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v0, "getZoomButtonsController"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    const-string v0, "setEmbeddedTitleBar"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 103
    :catch_2
    move-exception v0

    .line 104
    const-string v0, "copySelection"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 110
    :catch_3
    move-exception v0

    .line 111
    const-string v0, "notifySelectDialogDismissed"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 117
    :catch_4
    move-exception v0

    .line 118
    const-string v0, "notifyFindDialogDismissed"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 123
    :catch_5
    move-exception v0

    .line 124
    const-string v0, "selectText"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 129
    :catch_6
    move-exception v0

    .line 130
    const-string v0, "setJsFlags"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 136
    :catch_7
    move-exception v0

    .line 137
    const-string v0, "setNetworkType"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 142
    :catch_8
    move-exception v0

    .line 143
    const-string v0, "getContentWidth"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 148
    :catch_9
    move-exception v0

    .line 149
    const-string v0, "isPaused"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 154
    :catch_a
    move-exception v0

    .line 155
    const-string v0, "findAll"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 162
    :catch_b
    move-exception v0

    .line 163
    const-string v0, "setFindIsUp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 164
    :catch_c
    move-exception v0

    .line 165
    const-string v2, "WebView"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 171
    :catch_d
    move-exception v0

    .line 172
    const-string v0, "setFindDialogHeight"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 178
    :catch_e
    move-exception v0

    .line 179
    const-string v0, "addPackageNames"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 185
    :catch_f
    move-exception v0

    .line 186
    const-string v0, "addPackageName"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 192
    :catch_10
    move-exception v0

    .line 193
    const-string v0, "removePackageName"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 199
    :catch_11
    move-exception v0

    .line 200
    const-string v0, "documentAsText"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 206
    :catch_12
    move-exception v0

    .line 207
    const-string v0, "saveWebArchive"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11
.end method

.method public constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    .line 220
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetZoomButtonsController:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sIsPaused:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sFindAll:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetFindIsUp:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetFindDialogHeight:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageNames:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sAddPackageName:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sRemovePackageName:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sDocumentAsText:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSaveWebArchive:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetEmbeddedTitleBar:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sCopySelection:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sNotifySelectDialogDismissed:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sNotifyFindDialogDismissed:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSelectText:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetJsFlags:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sSetNetworkType:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->sGetContentWidth:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/util/dh",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 76
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/dolphin/browser/util/dh;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static runOnUIThreadICS(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 68
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 945
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->a()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 947
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v0, "MyWebViewWrapper"

    const-string v1, "Ignoring addJavascriptInterface for security issue."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1716
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ay;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ay;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1732
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1697
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ax;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ax;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1713
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 518
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bn;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/dolphin/browser/androidwebkit/br;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/br;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 539
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bp;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public cancelSelectText()V
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Lcom/dolphin/browser/androidwebkit/el;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/el;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1286
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1794
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/bc;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;IILandroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 613
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bx;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bx;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 822
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cq;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/cq;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cs;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 842
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ct;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ct;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 848
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 894
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cy;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cy;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 852
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cu;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cu;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 603
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bw;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bw;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 609
    return-void
.end method

.method public contentToViewX(I)I
    .locals 1

    .prologue
    .line 1366
    new-instance v0, Lcom/dolphin/browser/androidwebkit/et;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/et;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public contentToViewY(I)I
    .locals 1

    .prologue
    .line 1377
    new-instance v0, Lcom/dolphin/browser/androidwebkit/x;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/x;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 862
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cv;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cv;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebBackForwardList;

    return-object v0
.end method

.method public copySelection()Z
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bv;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bv;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ah;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dj;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dj;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 1388
    new-instance v0, Lcom/dolphin/browser/androidwebkit/y;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/y;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public doSelectTextDone()V
    .locals 1

    .prologue
    .line 1290
    new-instance v0, Lcom/dolphin/browser/androidwebkit/em;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/em;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1296
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1754
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ba;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ba;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Message;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1770
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1638
    new-instance v0, Lcom/dolphin/browser/androidwebkit/au;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/au;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 1

    .prologue
    .line 883
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cx;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/cx;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 889
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .prologue
    .line 873
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cw;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/cw;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 879
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 1055
    new-instance v0, Lcom/dolphin/browser/androidwebkit/do;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/do;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;II)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1061
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 812
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cp;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dn;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 745
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ck;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ck;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 1596
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ar;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1130
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dv;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dv;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 722
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ci;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ci;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1333
    new-instance v0, Lcom/dolphin/browser/androidwebkit/eq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/eq;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 655
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cb;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebView$HitTestResult;

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/dolphin/browser/androidwebkit/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/w;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cf;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 734
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cj;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/dolphin/browser/androidwebkit/by;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/by;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1300
    new-instance v0, Lcom/dolphin/browser/androidwebkit/en;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/en;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1311
    new-instance v0, Lcom/dolphin/browser/androidwebkit/eo;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/eo;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ch;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ch;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1248
    new-instance v0, Lcom/dolphin/browser/androidwebkit/eh;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/eh;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 1259
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ei;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ei;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ce;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ce;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 1460
    new-instance v0, Lcom/dolphin/browser/androidwebkit/af;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/af;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 1227
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ef;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ef;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 1216
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ee;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ee;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1153
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dx;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dx;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 969
    new-instance v0, Lcom/dolphin/browser/androidwebkit/df;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/df;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings;

    return-object v0
.end method

.method public getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1471
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ag;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ag;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 924
    new-instance v0, Lcom/dolphin/browser/androidwebkit/db;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/db;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebViewCallback;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1322
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ep;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ep;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/dolphin/browser/androidwebkit/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/v;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 529
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bo;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bo;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bs;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bs;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bq;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method public hasFeature(I)Z
    .locals 1

    .prologue
    .line 1108
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dt;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dt;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hideTitleBar()V
    .locals 1

    .prologue
    .line 1164
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dz;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dz;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 1

    .prologue
    .line 1206
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ed;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ed;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1212
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ca;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ca;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 651
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 1184
    new-instance v0, Lcom/dolphin/browser/androidwebkit/eb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/eb;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAtRightEdge()Z
    .locals 1

    .prologue
    .line 1195
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ec;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ec;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1141
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dw;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dw;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1617
    new-instance v0, Lcom/dolphin/browser/androidwebkit/at;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/at;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1505
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ak;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 1119
    new-instance v0, Lcom/dolphin/browser/androidwebkit/du;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/du;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/bj;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1548
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ao;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/androidwebkit/ao;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1555
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->l()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/core/IWebViewCallback;->interceptUrl(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 466
    :cond_0
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bh;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bh;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public notifyFindDialogDismissed()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cr;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cr;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public notifyFindDialogDismissed2()V
    .locals 1

    .prologue
    .line 904
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cz;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cz;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method public notifySelectDialogDismissed()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cg;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 990
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dh;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/dh;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;ILandroid/view/KeyEvent;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1001
    new-instance v0, Lcom/dolphin/browser/androidwebkit/di;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/di;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;ILandroid/view/KeyEvent;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 777
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cn;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 791
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 796
    new-instance v0, Lcom/dolphin/browser/androidwebkit/co;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/co;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 808
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dk;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dk;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1044
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dm;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dm;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/MotionEvent;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1439
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ad;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ad;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1445
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bu;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bu;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bt;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bt;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 756
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cl;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cl;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bi;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/bi;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;[B)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bm;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bm;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 957
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 958
    new-instance v0, Lcom/dolphin/browser/androidwebkit/de;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/de;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 965
    :cond_0
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1735
    new-instance v0, Lcom/dolphin/browser/androidwebkit/az;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/az;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1751
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 1087
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dr;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dr;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cc;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/cc;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Message;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cd;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/cd;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Message;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 682
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/bf;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Bundle;Ljava/io/File;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bg;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bg;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebBackForwardList;

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/dolphin/browser/androidwebkit/cm;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/cm;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ej;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/ej;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcom/dolphin/browser/androidwebkit/be;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/be;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Bundle;Ljava/io/File;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bd;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bd;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebBackForwardList;

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1773
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bb;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bb;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1789
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1494
    new-instance v0, Lcom/dolphin/browser/androidwebkit/aj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/aj;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1500
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 1482
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/ai;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;II)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1488
    return-void
.end method

.method public selectText()Z
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dc;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dc;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1098
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ds;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ds;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1104
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dy;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dy;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/net/http/SslCertificate;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 1

    .prologue
    .line 1399
    new-instance v0, Lcom/dolphin/browser/androidwebkit/z;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/z;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1405
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bk;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bk;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/View;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 1

    .prologue
    .line 1678
    new-instance v0, Lcom/dolphin/browser/androidwebkit/aw;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/aw;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1694
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .prologue
    .line 1659
    new-instance v0, Lcom/dolphin/browser/androidwebkit/av;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/av;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1675
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1537
    new-instance v0, Lcom/dolphin/browser/androidwebkit/an;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/androidwebkit/an;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1543
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bz;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/bz;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1558
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ap;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ap;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1574
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 980
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dg;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dg;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .prologue
    .line 1034
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dl;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dl;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1040
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/dolphin/browser/androidwebkit/as;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/as;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1577
    new-instance v0, Lcom/dolphin/browser/androidwebkit/aq;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/aq;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1593
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 1429
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ac;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ac;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1435
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 1419
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ab;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ab;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1425
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 1450
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ae;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/ae;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1456
    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dd;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/dd;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 941
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 1516
    new-instance v0, Lcom/dolphin/browser/androidwebkit/al;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/al;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1522
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .prologue
    .line 1526
    new-instance v0, Lcom/dolphin/browser/androidwebkit/am;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/am;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1532
    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 1

    .prologue
    .line 1409
    new-instance v0, Lcom/dolphin/browser/androidwebkit/aa;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/aa;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1415
    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1238
    new-instance v0, Lcom/dolphin/browser/androidwebkit/eg;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/eg;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Landroid/view/View;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1244
    return-void
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 1

    .prologue
    .line 914
    new-instance v0, Lcom/dolphin/browser/androidwebkit/da;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/da;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebViewCallback;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method public showTitleBar()V
    .locals 1

    .prologue
    .line 1174
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ea;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ea;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1180
    return-void
.end method

.method public startSelectText()V
    .locals 1

    .prologue
    .line 1270
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ek;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/ek;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 1276
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 498
    new-instance v0, Lcom/dolphin/browser/androidwebkit/bl;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/bl;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method public viewToContentX(I)I
    .locals 1

    .prologue
    .line 1344
    new-instance v0, Lcom/dolphin/browser/androidwebkit/er;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/er;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public viewToContentY(I)I
    .locals 1

    .prologue
    .line 1355
    new-instance v0, Lcom/dolphin/browser/androidwebkit/es;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/es;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;I)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1065
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dp;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1076
    new-instance v0, Lcom/dolphin/browser/androidwebkit/dq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/dq;-><init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)V

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->runOnUIThreadICS(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
