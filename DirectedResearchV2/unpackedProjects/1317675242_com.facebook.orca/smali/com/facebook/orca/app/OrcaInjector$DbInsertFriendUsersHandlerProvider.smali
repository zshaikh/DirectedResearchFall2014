.class Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;
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
        "Lcom/facebook/orca/database/DbInsertFriendUsersHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler;
    .locals 6

    .prologue
    .line 997
    new-instance v3, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    const-class v2, Lcom/facebook/orca/annotations/UsersDb;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DbInsertFriendUsersHandlerProvider;->a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    move-result-object v0

    return-object v0
.end method
