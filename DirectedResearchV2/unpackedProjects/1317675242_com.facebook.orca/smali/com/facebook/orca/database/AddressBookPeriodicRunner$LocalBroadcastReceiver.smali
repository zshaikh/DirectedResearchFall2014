.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddressBookPeriodicRunner.java"


# instance fields
.field private a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;)Lcom/facebook/orca/database/AddressBookPeriodicRunner;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 213
    const-class v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iput-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;Z)Z

    .line 216
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner$LocalBroadcastReceiver;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 223
    return-void
.end method
