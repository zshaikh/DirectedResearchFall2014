.class Lcom/facebook/orca/server/BackgroundRefreshRunner$2;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundRefreshRunner.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 102
    return-void
.end method
