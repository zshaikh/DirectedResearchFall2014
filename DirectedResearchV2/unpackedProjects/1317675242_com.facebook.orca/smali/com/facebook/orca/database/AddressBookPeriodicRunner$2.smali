.class Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;
.super Ljava/lang/Object;
.source "AddressBookPeriodicRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/database/AddressBookPeriodicRunner$2;->a:Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-static {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->c(Lcom/facebook/orca/database/AddressBookPeriodicRunner;)V

    .line 103
    return-void
.end method
