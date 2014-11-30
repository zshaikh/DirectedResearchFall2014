.class public Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;
.source "AddressBookPeriodicRunner.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-direct {p0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook$1;-><init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 199
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 200
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;J)J

    .line 189
    return-void
.end method
