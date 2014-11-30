.class Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadNotificationPrefsSynchronizer.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-static {v0, p1}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Ljava/lang/Exception;)V

    .line 90
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-static {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;)V

    .line 85
    return-void
.end method
