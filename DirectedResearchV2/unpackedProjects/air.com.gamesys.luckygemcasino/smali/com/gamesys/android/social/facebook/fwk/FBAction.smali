.class public Lcom/gamesys/android/social/facebook/fwk/FBAction;
.super Ljava/lang/Object;
.source "FBAction.java"


# instance fields
.field public final actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

.field public final parameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "actionToDo"    # Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    .line 26
    iput-object p2, p0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->parameters:Landroid/os/Bundle;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 34
    instance-of v1, p1, Lcom/gamesys/android/social/facebook/fwk/FBAction;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    check-cast p1, Lcom/gamesys/android/social/facebook/fwk/FBAction;

    .end local p1    # "a":Ljava/lang/Object;
    iget-object v2, p1, Lcom/gamesys/android/social/facebook/fwk/FBAction;->actionToDo:Lcom/gamesys/android/social/facebook/fwk/FBInterfaceAction;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 37
    :cond_0
    return v0
.end method
