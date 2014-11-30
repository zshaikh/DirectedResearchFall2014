.class public Lcom/mobosquare/sdk/subscription/a;
.super Landroid/content/ContextWrapper;
.source "SubscriptionManager.java"


# static fields
.field private static d:Lcom/mobosquare/sdk/subscription/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/mobosquare/sdk/subscription/c;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/a;->a:Landroid/content/Context;

    .line 52
    const-string v0, "newsletter_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mobosquare/sdk/subscription/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->c:Landroid/content/SharedPreferences;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/mobosquare/sdk/subscription/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mobosquare/sdk/subscription/a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mobosquare/sdk/subscription/a;->d:Lcom/mobosquare/sdk/subscription/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/mobosquare/sdk/subscription/a;

    invoke-direct {v0, p0}, Lcom/mobosquare/sdk/subscription/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mobosquare/sdk/subscription/a;->d:Lcom/mobosquare/sdk/subscription/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/mobosquare/sdk/subscription/a;->d:Lcom/mobosquare/sdk/subscription/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mobosquare/sdk/subscription/a;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mobosquare/sdk/subscription/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->b:Lcom/mobosquare/sdk/subscription/c;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    const-string v0, "localConfig"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    const-string v1, "client_guid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/mobosquare/sdk/subscription/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->c:Landroid/content/SharedPreferences;

    const-string v1, "subscription_email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mobosquare/sdk/subscription/c;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/a;->b:Lcom/mobosquare/sdk/subscription/c;

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/mobosquare/sdk/subscription/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mobosquare/sdk/subscription/b;-><init>(Lcom/mobosquare/sdk/subscription/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mobosquare/sdk/subscription/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->b:Lcom/mobosquare/sdk/subscription/c;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->b:Lcom/mobosquare/sdk/subscription/c;

    invoke-interface {v0, v2}, Lcom/mobosquare/sdk/subscription/c;->a(Z)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/a;->a:Landroid/content/Context;

    const-string v1, "Network is not available"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
