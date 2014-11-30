.class Ldolphin/webkit/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ldolphin/webkit/ki;
.implements Ldolphin/webkit/kj;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepClass;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ldolphin/webkit/WebViewDatabase;
    .locals 1

    .prologue
    .line 1699
    invoke-static {p1}, Ldolphin/webkit/kf;->a(Landroid/content/Context;)Ldolphin/webkit/kf;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldolphin/webkit/WebView;Ldolphin/webkit/ia;)Ldolphin/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 1674
    new-instance v0, Ldolphin/webkit/WebViewClassic;

    invoke-direct {v0, p1, p2}, Ldolphin/webkit/WebViewClassic;-><init>(Ldolphin/webkit/WebView;Ldolphin/webkit/ia;)V

    return-object v0
.end method

.method public a()Ldolphin/webkit/kj;
    .locals 0

    .prologue
    .line 1670
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1658
    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1662
    if-eqz p1, :cond_0

    .line 1663
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->r()V

    .line 1667
    :goto_0
    return-void

    .line 1665
    :cond_0
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->s()V

    goto :goto_0
.end method

.method public b()Ldolphin/webkit/GeolocationPermissions;
    .locals 1

    .prologue
    .line 1679
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->a()Ldolphin/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldolphin/webkit/CookieManager;
    .locals 1

    .prologue
    .line 1684
    invoke-static {}, Ldolphin/webkit/CookieManagerClassic;->a()Ldolphin/webkit/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public d()Ldolphin/webkit/WebIconDatabase;
    .locals 1

    .prologue
    .line 1689
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->a()Ldolphin/webkit/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public e()Ldolphin/webkit/WebStorage;
    .locals 1

    .prologue
    .line 1694
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->d()Ldolphin/webkit/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method
