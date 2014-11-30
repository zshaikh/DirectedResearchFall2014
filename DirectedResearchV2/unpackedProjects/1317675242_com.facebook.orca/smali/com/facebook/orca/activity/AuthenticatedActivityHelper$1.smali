.class Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatedActivityHelper.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;->a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;->a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-static {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)V

    .line 75
    return-void
.end method
