.class public final Ldolphin/webkit/a/c/c;
.super Ljava/lang/Object;
.source "KeyChain.java"


# direct methods
.method public static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.android.certinstaller"

    const-string v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    return-object v0
.end method
