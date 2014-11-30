.class Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;
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
        "Lcom/facebook/orca/database/DbServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbServiceHandler;
    .locals 11

    .prologue
    .line 1049
    new-instance v0, Lcom/facebook/orca/database/DbServiceHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbFetchThreadHandler;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    iget-object v7, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v8, Landroid/database/sqlite/SQLiteDatabase;

    const-class v9, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {v7, v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v9, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v9, p0, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v10, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v9, v10}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/database/DbServiceHandler;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DbServiceHandlerProvider;->a()Lcom/facebook/orca/database/DbServiceHandler;

    move-result-object v0

    return-object v0
.end method
