.class Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;
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
        "Lcom/facebook/orca/database/DbFetchThreadHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbFetchThreadHandler;
    .locals 9

    .prologue
    .line 955
    new-instance v0, Lcom/facebook/orca/database/DbFetchThreadHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-class v3, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbParticipantsSerialization;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/database/DbAttachmentSerialization;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbAttachmentSerialization;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/database/DbSharesSerialization;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbSharesSerialization;

    iget-object v7, p0, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v8, Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-virtual {v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/database/DbFetchThreadHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DbFetchThreadHandlerProvider;->a()Lcom/facebook/orca/database/DbFetchThreadHandler;

    move-result-object v0

    return-object v0
.end method
