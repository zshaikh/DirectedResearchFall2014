.class Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/users/MergeAddressBookHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1902
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/MergeAddressBookHandler;
    .locals 6

    .prologue
    .line 1906
    new-instance v2, Lcom/facebook/orca/users/MergeAddressBookHandler;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v3, Lcom/facebook/orca/annotations/UsersDb;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/facebook/orca/users/MergeAddressBookHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;Lcom/google/inject/Provider;Lcom/google/inject/Provider;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MergeAddressBookHandlerProvider;->a()Lcom/facebook/orca/users/MergeAddressBookHandler;

    move-result-object v0

    return-object v0
.end method
