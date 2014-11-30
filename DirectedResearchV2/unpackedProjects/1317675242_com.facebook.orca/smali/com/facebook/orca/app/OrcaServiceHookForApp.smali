.class Lcom/facebook/orca/app/OrcaServiceHookForApp;
.super Ljava/lang/Object;
.source "OrcaServiceHookForApp.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHook;


# instance fields
.field private a:Lcom/facebook/orca/server/IOrcaService$Stub;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/IOrcaService$Stub;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaServiceHookForApp;->a:Lcom/facebook/orca/server/IOrcaService$Stub;

    .line 20
    return-void
.end method

.method public b(Lcom/facebook/orca/server/IOrcaService$Stub;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHookForApp;->a:Lcom/facebook/orca/server/IOrcaService$Stub;

    .line 25
    return-void
.end method
