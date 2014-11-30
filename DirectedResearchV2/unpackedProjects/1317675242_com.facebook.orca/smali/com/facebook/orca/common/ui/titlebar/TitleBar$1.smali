.class Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;
.super Landroid/content/BroadcastReceiver;
.source "TitleBar.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->invalidate()V

    .line 135
    return-void
.end method
