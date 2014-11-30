.class Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;
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
        "Lcom/facebook/orca/debug/ErrorReportSender;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1111
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/debug/ErrorReportSender;
    .locals 2

    .prologue
    .line 1115
    new-instance v0, Lcom/facebook/orca/debug/ErrorReportSender;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/debug/ErrorReportSender;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ErrorReportSenderProvider;->a()Lcom/facebook/orca/debug/ErrorReportSender;

    move-result-object v0

    return-object v0
.end method
