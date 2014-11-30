.class public Lcom/dolphin/browser/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/dolphin/browser/analytics/AnalyticsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/analytics/AnalyticsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 27
    :try_start_0
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v2, Lcom/dolphin/browser/analytics/AnalyticsReceiver;->a:Ljava/lang/String;

    const-string v3, "action: %s, refferer: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    const-string v2, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/analytics/e;->e()Lcom/dolphin/browser/analytics/e;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/analytics/e;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/dolphin/browser/analytics/e;->h()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "cm_subid"

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/analytics/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const-string v2, "af%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/util/ao;->a(Ljava/lang/String;)V

    .line 44
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->c()V

    .line 45
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    sget-object v1, Lcom/dolphin/browser/analytics/AnalyticsReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
