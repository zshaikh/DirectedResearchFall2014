.class public Lcom/facebook/dolphin/SessionEvents;
.super Ljava/lang/Object;
.source "SessionEvents.java"


# static fields
.field private static mAuthListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/dolphin/SessionEvents$AuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogoutListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/dolphin/SessionEvents$LogoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/dolphin/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/facebook/dolphin/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method public static addAuthListener(Lcom/facebook/dolphin/SessionEvents$AuthListener;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static addLogoutListener(Lcom/facebook/dolphin/SessionEvents$LogoutListener;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public static onLoginError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/dolphin/SessionEvents$AuthListener;

    .line 82
    invoke-interface {v0, p0}, Lcom/facebook/dolphin/SessionEvents$AuthListener;->onAuthFail(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public static onLoginSuccess()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/dolphin/SessionEvents$AuthListener;

    .line 76
    invoke-interface {v0}, Lcom/facebook/dolphin/SessionEvents$AuthListener;->onAuthSucceed()V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public static onLogoutBegin()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/dolphin/SessionEvents$LogoutListener;

    .line 88
    invoke-interface {v0}, Lcom/facebook/dolphin/SessionEvents$LogoutListener;->onLogoutBegin()V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public static onLogoutFinish()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/dolphin/SessionEvents$LogoutListener;

    .line 94
    invoke-interface {v0}, Lcom/facebook/dolphin/SessionEvents$LogoutListener;->onLogoutFinish()V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static removeAuthListener(Lcom/facebook/dolphin/SessionEvents$AuthListener;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public static removeLogoutListener(Lcom/facebook/dolphin/SessionEvents$LogoutListener;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/dolphin/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method
