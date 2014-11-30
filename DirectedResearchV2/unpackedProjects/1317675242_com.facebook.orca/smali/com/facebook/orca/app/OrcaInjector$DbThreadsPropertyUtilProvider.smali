.class Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;
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
        "Lcom/facebook/orca/database/DbThreadsPropertyUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbThreadsPropertyUtil;
    .locals 4

    .prologue
    .line 1067
    new-instance v0, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Landroid/database/sqlite/SQLiteDatabase;

    const-class v3, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DbThreadsPropertyUtilProvider;->a()Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    move-result-object v0

    return-object v0
.end method
