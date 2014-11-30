.class Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;
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
        "Lcom/facebook/orca/auth/FacebookCredentials;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2136
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 2

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {p0}, Lcom/facebook/orca/auth/AuthenticationManager;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$FacebookCredentialsProvider;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    return-object v0
.end method
