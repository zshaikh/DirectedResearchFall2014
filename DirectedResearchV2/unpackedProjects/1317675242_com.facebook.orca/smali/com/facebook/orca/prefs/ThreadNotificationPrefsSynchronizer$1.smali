.class Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$1;
.super Ljava/lang/Object;
.source "ThreadNotificationPrefsSynchronizer.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$1;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$1;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-static {v0, p2}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 77
    return-void
.end method
