.class Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWebChromeClient"
.end annotation


# static fields
.field private static final KEY_USE_GEO:Ljava/lang/String; = "mm_use_geo_location"


# instance fields
.field webRef:Ljava/lang/ref/WeakReference;
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
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 625
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    .line 626
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;
    .param p1, "x1"    # Z

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->saveUseGeo(Z)V

    return-void
.end method

.method private getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 718
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 722
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object p0, v3

    .end local p0    # "this":Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;
    :goto_1
    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 719
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 720
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 722
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "This app"

    move-object p0, v3

    goto :goto_1
.end method

.method private isFirstGeoRequest()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 680
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 681
    .local v1, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MillennialMediaSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 685
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "mm_use_geo_location"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 687
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v4

    .line 685
    goto :goto_0

    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 687
    goto :goto_0
.end method

.method private retrieveUseGeo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 691
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 692
    .local v1, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MillennialMediaSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 696
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "mm_use_geo_location"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 698
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private saveUseGeo(Z)V
    .locals 6
    .param p1, "allow"    # Z

    .prologue
    .line 702
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/MMWebView;

    .line 703
    .local v2, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "MillennialMediaSettings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 707
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "mm_use_geo_location"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 734
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 8
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->isFirstGeoRequest()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->retrieveUseGeo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 633
    invoke-interface {p2, p1, v7, v7}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/m1/android/MMWebView;

    .line 636
    .local v4, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v4, :cond_0

    .line 637
    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 638
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 639
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 641
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v0}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "appName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 643
    const-string v5, "Would like to use your Current Location."

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Allow"

    new-instance v7, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient$2;

    invoke-direct {v7, p0, p2, p1}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient$2;-><init>(Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Don\'t Allow"

    new-instance v7, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient$1;-><init>(Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 670
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 675
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    :cond_2
    invoke-interface {p2, p1, v6, v6}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 739
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 740
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 743
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    .line 749
    :goto_0
    return v1

    .line 745
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 749
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 755
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 756
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 759
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    .line 765
    :goto_0
    return v1

    .line 761
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 765
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 772
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 775
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    .line 781
    :goto_0
    return v1

    .line 777
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 781
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 787
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$MyWebChromeClient;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 788
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 791
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    .line 798
    :goto_0
    return v1

    .line 794
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 798
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
