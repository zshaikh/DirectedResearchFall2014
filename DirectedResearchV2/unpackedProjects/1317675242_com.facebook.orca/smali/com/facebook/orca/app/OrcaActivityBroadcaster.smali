.class public Lcom/facebook/orca/app/OrcaActivityBroadcaster;
.super Ljava/lang/Object;
.source "OrcaActivityBroadcaster.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "threadid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    const-string v1, "com.facebook.orca.ACTION_LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com.facebook.orca.ACTION_THREAD_UPDATES_FOR_UI"

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "com.facebook.orca.ACTION_REMOVED_THREAD_FOR_UI"

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
