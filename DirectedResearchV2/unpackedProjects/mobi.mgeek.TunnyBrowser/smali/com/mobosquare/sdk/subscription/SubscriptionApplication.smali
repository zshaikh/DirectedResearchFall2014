.class public Lcom/mobosquare/sdk/subscription/SubscriptionApplication;
.super Landroid/app/Application;
.source "SubscriptionApplication.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(Landroid/content/Context;Z)V

    .line 57
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobosquare/sdk/subscription/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/b/a/a;

    .line 58
    return-void
.end method

.method protected static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 86
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mobosquare.sdk.subscription.SUBSCRIPTION_APIKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 97
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mobosquare.sdk.subscription.SUBSCRIPTION_APISECRET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 71
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.mobosquare.sdk.subscription.SUBSCRIPTION_SERVER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string v3, "mobosquare.server"

    invoke-static {v3, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 79
    :goto_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    return v0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    sget-object v3, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->a:Ljava/lang/String;

    const-string v4, "Could not find custom server url,use default one"

    invoke-static {v3, v4}, Lcom/mobosquare/sdk/subscription/c/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 79
    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/mobosquare/sdk/subscription/SubscriptionApplication;->a(Landroid/content/Context;)V

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    return-void
.end method
