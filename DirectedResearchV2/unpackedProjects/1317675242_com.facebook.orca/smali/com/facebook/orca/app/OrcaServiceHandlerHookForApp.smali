.class Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;
.source "OrcaServiceHandlerHookForApp.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaDataManager;

.field private final b:Lcom/facebook/orca/push/PushManager;

.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/push/PushManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    .line 27
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushManager;

    .line 28
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushManager;->b()V

    .line 42
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "relogin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->b()V

    .line 37
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->a()V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushManager;->d()V

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    .line 50
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 51
    return-void
.end method
