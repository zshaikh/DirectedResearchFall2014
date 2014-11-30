.class final Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;
.super Ljava/lang/Object;
.source "Modules.java"

# interfaces
.implements Lcom/google/inject/util/Modules$OverriddenModuleBuilder;


# instance fields
.field private final baseModules:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$100(Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;)Lcom/google/inject/internal/ImmutableSet;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lcom/google/inject/internal/ImmutableSet;

    return-object v0
.end method
