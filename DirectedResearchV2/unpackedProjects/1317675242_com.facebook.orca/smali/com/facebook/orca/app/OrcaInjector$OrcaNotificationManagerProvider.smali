.class Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/notify/OrcaNotificationManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/OrcaNotificationManager;
    .locals 8

    .prologue
    .line 1304
    new-instance v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v2}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v3}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/push/PresenceManager;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/notify/OrcaNotificationManager;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/os/Vibrator;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/push/PresenceManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaNotificationManagerProvider;->a()Lcom/facebook/orca/notify/OrcaNotificationManager;

    move-result-object v0

    return-object v0
.end method
