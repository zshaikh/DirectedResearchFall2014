.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "AddressBookPeriodicRunner.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->b(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    .line 85
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$1;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    .line 80
    return-void
.end method
